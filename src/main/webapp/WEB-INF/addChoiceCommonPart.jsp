<table>
    <tr>
        <th>Faut-il �tre pass� par un paragraphe pr�c�demment ?</th>
        <td><input type="checkbox" onclick="ableDisable()" name="isConditional" value="yesss" ></td>
        <td>=> lequel ?</td>
        <td> <select name="conditionalToWhich" disabled="true" id="element"> 
                <c:forEach items="${listPara}" var="para">
                    <c:if test="${para.id != numParagraph}"> <!-- pas conditionnel � lui-m�me, aucun sens -->
                        <option value="${para.id}">${para.title}</option>
                    </c:if>
                </c:forEach>
        </select></td>
    </tr>
</table>
<input type="hidden" name="idBook" value="${idBook}" >
<input type="hidden" name="numParagraph" value="${numParagraph}" >
<c:if test="${previousPara != null}">
    <input type="hidden" name="previousPara" value="${previousPara}" >
</c:if>