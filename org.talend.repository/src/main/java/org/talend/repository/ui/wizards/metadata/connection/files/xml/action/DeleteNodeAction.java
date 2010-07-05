// ============================================================================
//
// Copyright (C) 2006-2010 Talend Inc. - www.talend.com
//
// This source code is available under agreement available at
// %InstallDIR%\features\org.talend.rcp.branding.%PRODUCTNAME%\%PRODUCTNAME%license.txt
//
// You should have received a copy of the agreement
// along with this program; if not, write to Talend SA
// 9 rue Pages 92150 Suresnes, France
//
// ============================================================================
package org.talend.repository.ui.wizards.metadata.connection.files.xml.action;

import java.util.List;

import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.ui.actions.SelectionProviderAction;
import org.talend.repository.ui.wizards.metadata.connection.files.xml.XmlFileOutputStep2Form;
import org.talend.repository.ui.wizards.metadata.connection.files.xml.treeNode.Attribute;
import org.talend.repository.ui.wizards.metadata.connection.files.xml.treeNode.Element;
import org.talend.repository.ui.wizards.metadata.connection.files.xml.treeNode.FOXTreeNode;
import org.talend.repository.ui.wizards.metadata.connection.files.xml.treeNode.NameSpaceNode;

/**
 * wzhang class global comment. Detailled comment
 */
public class DeleteNodeAction extends SelectionProviderAction {

    private TreeViewer xmlViewer;

    private XmlFileOutputStep2Form form;

    public DeleteNodeAction(TreeViewer xmlViewer, String text) {
        super(xmlViewer, text);
        this.xmlViewer = xmlViewer;
    }

    public DeleteNodeAction(TreeViewer xmlViewer, XmlFileOutputStep2Form form, String text) {
        super(xmlViewer, text);
        this.xmlViewer = xmlViewer;
        this.form = form;
    }

    @Override
    public void run() {
        FOXTreeNode node = (FOXTreeNode) this.getStructuredSelection().getFirstElement();
        if (node == null) {
            return;
        }
        FOXTreeNode parent = node.getParent();
        if (parent == null) {
            return;
        }
        if (node instanceof Element) {
            disconnectSubTree(node);
        }
        parent.removeChild(node);

        // if (node.isLoop() || node.isGroup())
        if (node.isLoop()) {
            form.updateStatus();
        }
        xmlViewer.refresh(parent);
        xmlViewer.expandAll();
        form.redrawLinkers();
        form.updateConnection();
    }

    private void disconnectSubTree(FOXTreeNode node) {
        if (node == null) {
            return;
        }
        if (node.hasLink()) {
            node.setColumn(null);
        }
        if (node instanceof Attribute) {
            return;
        }
        if (node instanceof NameSpaceNode) {
            return;
        }
        List<FOXTreeNode> children = node.getChildren();
        for (FOXTreeNode child : children) {
            disconnectSubTree(child);
        }
    }

    @Override
    public void selectionChanged(IStructuredSelection selection) {
        FOXTreeNode node = (FOXTreeNode) this.getStructuredSelection().getFirstElement();
        if (node == null) {
            this.setEnabled(false);
        } else {
            if (node.getParent() == null) {
                this.setEnabled(false);
            } else {
                this.setEnabled(true);
            }
        }
    }

}
