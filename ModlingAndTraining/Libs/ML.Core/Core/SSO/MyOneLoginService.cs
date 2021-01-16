// Decompiled with JetBrains decompiler
// Type: ML.Core.SSO.MyOneLoginService
// Assembly: ML.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8665DF82-FF26-467F-B5DB-E30D7FB365C9
// Assembly location: F:\OneDrive\Other\Practice\DataModeling\App\bin\ML.Core.dll

using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Threading;
using System.Web.Services;
using System.Web.Services.Description;
using System.Web.Services.Protocols;
using System.Xml.Schema;
using System.Xml.Serialization;

namespace ML.Core.SSO
{
  [WebServiceBinding(Name = "MyOneLoginPortBinding", Namespace = "http://soa.tricipher.com/")]
  [DebuggerStepThrough]
  [DesignerCategory("code")]
  [GeneratedCode("wsdl", "2.0.50727.3038")]
  public class MyOneLoginService : SoapHttpClientProtocol
  {
    private SendOrPostCallback deleteServiceProviderOperationCompleted;
    private SendOrPostCallback addUserOperationCompleted;
    private SendOrPostCallback getUserProfileOperationCompleted;
    private SendOrPostCallback autoEnrollUserOperationCompleted;
    private SendOrPostCallback addFederationMapOperationCompleted;
    private SendOrPostCallback deleteIdentityProviderOperationCompleted;
    private SendOrPostCallback getCustomUserDataOperationCompleted;
    private SendOrPostCallback setCustomUserDataOperationCompleted;
    private SendOrPostCallback deleteUserOperationCompleted;
    private SendOrPostCallback disableUserOperationCompleted;
    private SendOrPostCallback enableUserOperationCompleted;
    private SendOrPostCallback addServiceProviderOperationCompleted;
    private SendOrPostCallback getAppsOperationCompleted;
    private SendOrPostCallback addIdentityProviderOperationCompleted;
    private SendOrPostCallback modifyIdentityProviderOperationCompleted;
    private SendOrPostCallback validateAssertionOperationCompleted;
    private SendOrPostCallback validateUserOperationCompleted;
    private SendOrPostCallback signInOperationCompleted;
    private SendOrPostCallback signOutOperationCompleted;
    private SendOrPostCallback getAllAppsForOrgOperationCompleted;
    private SendOrPostCallback getAppsForUserOperationCompleted;
    private SendOrPostCallback subscribeUserToAppOperationCompleted;
    private SendOrPostCallback unsubscribeUserFromAppOperationCompleted;
    private SendOrPostCallback subscribeToAppOperationCompleted;
    private SendOrPostCallback unsubscribeFromAppOperationCompleted;
    private SendOrPostCallback searchUsersOperationCompleted;
    private SendOrPostCallback getProfileOperationCompleted;
    private SendOrPostCallback setUserProfileOperationCompleted;
    private SendOrPostCallback setProfileOperationCompleted;
    private SendOrPostCallback verifyUserExistsOperationCompleted;
    private SendOrPostCallback getApplicationFieldsOperationCompleted;
    private SendOrPostCallback getApplicationFieldsForUserOperationCompleted;
    private SendOrPostCallback setApplicationFieldsOperationCompleted;
    private SendOrPostCallback setApplicationFieldsForUserOperationCompleted;
    private SendOrPostCallback addAndActivateUserOperationCompleted;
    private SendOrPostCallback getAssertionOperationCompleted;
    private SendOrPostCallback getAssertionForUserOperationCompleted;
    private SendOrPostCallback getAssertionForAnyUserOperationCompleted;
    private SendOrPostCallback getAssertionForAnyUserWithAttributesOperationCompleted;
    private SendOrPostCallback validateAssertionByIdOperationCompleted;
    private SendOrPostCallback validateAssertionByNameOperationCompleted;
    private SendOrPostCallback getIdentityProvidersOperationCompleted;
    private SendOrPostCallback getFederationMapOperationCompleted;
    private SendOrPostCallback deleteFederationMapOperationCompleted;
    private SendOrPostCallback getServiceProvidersOperationCompleted;
    private SendOrPostCallback modifyServiceProviderOperationCompleted;
    private SendOrPostCallback addChildOrganizationOperationCompleted;
    private SendOrPostCallback addOrganizationOperationCompleted;
    private SendOrPostCallback getCaptchaSessionOperationCompleted;
    private SendOrPostCallback validateNewOrgNameOperationCompleted;
    private SendOrPostCallback validateTokenOperationCompleted;
    private SendOrPostCallback getAuditReportOperationCompleted;
    private SendOrPostCallback modifyDirectoryIntegrationOperationCompleted;

    public MyOneLoginService()
    {
      this.Url = "https://MachineLearning.myonelogin.com:443/SAAS/API/1.0/SOA/MOL";
    }

    public event deleteServiceProviderCompletedEventHandler deleteServiceProviderCompleted;

    public event addUserCompletedEventHandler addUserCompleted;

    public event getUserProfileCompletedEventHandler getUserProfileCompleted;

    public event autoEnrollUserCompletedEventHandler autoEnrollUserCompleted;

    public event addFederationMapCompletedEventHandler addFederationMapCompleted;

    public event deleteIdentityProviderCompletedEventHandler deleteIdentityProviderCompleted;

    public event getCustomUserDataCompletedEventHandler getCustomUserDataCompleted;

    public event setCustomUserDataCompletedEventHandler setCustomUserDataCompleted;

    public event deleteUserCompletedEventHandler deleteUserCompleted;

    public event disableUserCompletedEventHandler disableUserCompleted;

    public event enableUserCompletedEventHandler enableUserCompleted;

    public event addServiceProviderCompletedEventHandler addServiceProviderCompleted;

    public event getAppsCompletedEventHandler getAppsCompleted;

    public event addIdentityProviderCompletedEventHandler addIdentityProviderCompleted;

    public event modifyIdentityProviderCompletedEventHandler modifyIdentityProviderCompleted;

    public event validateAssertionCompletedEventHandler validateAssertionCompleted;

    public event validateUserCompletedEventHandler validateUserCompleted;

    public event signInCompletedEventHandler signInCompleted;

    public event signOutCompletedEventHandler signOutCompleted;

    public event getAllAppsForOrgCompletedEventHandler getAllAppsForOrgCompleted;

    public event getAppsForUserCompletedEventHandler getAppsForUserCompleted;

    public event subscribeUserToAppCompletedEventHandler subscribeUserToAppCompleted;

    public event unsubscribeUserFromAppCompletedEventHandler unsubscribeUserFromAppCompleted;

    public event subscribeToAppCompletedEventHandler subscribeToAppCompleted;

    public event unsubscribeFromAppCompletedEventHandler unsubscribeFromAppCompleted;

    public event searchUsersCompletedEventHandler searchUsersCompleted;

    public event getProfileCompletedEventHandler getProfileCompleted;

    public event setUserProfileCompletedEventHandler setUserProfileCompleted;

    public event setProfileCompletedEventHandler setProfileCompleted;

    public event verifyUserExistsCompletedEventHandler verifyUserExistsCompleted;

    public event getApplicationFieldsCompletedEventHandler getApplicationFieldsCompleted;

    public event getApplicationFieldsForUserCompletedEventHandler getApplicationFieldsForUserCompleted;

    public event setApplicationFieldsCompletedEventHandler setApplicationFieldsCompleted;

    public event setApplicationFieldsForUserCompletedEventHandler setApplicationFieldsForUserCompleted;

    public event addAndActivateUserCompletedEventHandler addAndActivateUserCompleted;

    public event getAssertionCompletedEventHandler getAssertionCompleted;

    public event getAssertionForUserCompletedEventHandler getAssertionForUserCompleted;

    public event getAssertionForAnyUserCompletedEventHandler getAssertionForAnyUserCompleted;

    public event getAssertionForAnyUserWithAttributesCompletedEventHandler getAssertionForAnyUserWithAttributesCompleted;

    public event validateAssertionByIdCompletedEventHandler validateAssertionByIdCompleted;

    public event validateAssertionByNameCompletedEventHandler validateAssertionByNameCompleted;

    public event getIdentityProvidersCompletedEventHandler getIdentityProvidersCompleted;

    public event getFederationMapCompletedEventHandler getFederationMapCompleted;

    public event deleteFederationMapCompletedEventHandler deleteFederationMapCompleted;

    public event getServiceProvidersCompletedEventHandler getServiceProvidersCompleted;

    public event modifyServiceProviderCompletedEventHandler modifyServiceProviderCompleted;

    public event addChildOrganizationCompletedEventHandler addChildOrganizationCompleted;

    public event addOrganizationCompletedEventHandler addOrganizationCompleted;

    public event getCaptchaSessionCompletedEventHandler getCaptchaSessionCompleted;

    public event validateNewOrgNameCompletedEventHandler validateNewOrgNameCompleted;

    public event validateTokenCompletedEventHandler validateTokenCompleted;

    public event getAuditReportCompletedEventHandler getAuditReportCompleted;

    public event modifyDirectoryIntegrationCompletedEventHandler modifyDirectoryIntegrationCompleted;

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult deleteServiceProvider([XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId, [XmlElement(Form = XmlSchemaForm.Unqualified)] int spId)
    {
      return (molResult) this.Invoke(nameof (deleteServiceProvider), new object[2]
      {
        (object) sessionId,
        (object) spId
      })[0];
    }

    public IAsyncResult BegindeleteServiceProvider(
      string sessionId,
      int spId,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("deleteServiceProvider", new object[2]
      {
        (object) sessionId,
        (object) spId
      }, callback, asyncState);
    }

    public molResult EnddeleteServiceProvider(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void deleteServiceProviderAsync(string sessionId, int spId)
    {
      this.deleteServiceProviderAsync(sessionId, spId, (object) null);
    }

    public void deleteServiceProviderAsync(string sessionId, int spId, object userState)
    {
      if (this.deleteServiceProviderOperationCompleted == null)
        this.deleteServiceProviderOperationCompleted = new SendOrPostCallback(this.OndeleteServiceProviderOperationCompleted);
      this.InvokeAsync("deleteServiceProvider", new object[2]
      {
        (object) sessionId,
        (object) spId
      }, this.deleteServiceProviderOperationCompleted, userState);
    }

    private void OndeleteServiceProviderOperationCompleted(object arg)
    {
      if (this.deleteServiceProviderCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.deleteServiceProviderCompleted((object) this, new deleteServiceProviderCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult addUser(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string userName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string firstName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string lastName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string email,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string phone,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] bool isAdmin)
    {
      return (molResult) this.Invoke(nameof (addUser), new object[7]
      {
        (object) sessionId,
        (object) userName,
        (object) firstName,
        (object) lastName,
        (object) email,
        (object) phone,
        (object) isAdmin
      })[0];
    }

    public IAsyncResult BeginaddUser(
      string sessionId,
      string userName,
      string firstName,
      string lastName,
      string email,
      string phone,
      bool isAdmin,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("addUser", new object[7]
      {
        (object) sessionId,
        (object) userName,
        (object) firstName,
        (object) lastName,
        (object) email,
        (object) phone,
        (object) isAdmin
      }, callback, asyncState);
    }

    public molResult EndaddUser(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void addUserAsync(
      string sessionId,
      string userName,
      string firstName,
      string lastName,
      string email,
      string phone,
      bool isAdmin)
    {
      this.addUserAsync(sessionId, userName, firstName, lastName, email, phone, isAdmin, (object) null);
    }

    public void addUserAsync(
      string sessionId,
      string userName,
      string firstName,
      string lastName,
      string email,
      string phone,
      bool isAdmin,
      object userState)
    {
      if (this.addUserOperationCompleted == null)
        this.addUserOperationCompleted = new SendOrPostCallback(this.OnaddUserOperationCompleted);
      this.InvokeAsync("addUser", new object[7]
      {
        (object) sessionId,
        (object) userName,
        (object) firstName,
        (object) lastName,
        (object) email,
        (object) phone,
        (object) isAdmin
      }, this.addUserOperationCompleted, userState);
    }

    private void OnaddUserOperationCompleted(object arg)
    {
      if (this.addUserCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.addUserCompleted((object) this, new addUserCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public userListResult getUserProfile(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] int userId,
      [XmlElement(Form = XmlSchemaForm.Unqualified), XmlIgnore] bool userIdSpecified)
    {
      return (userListResult) this.Invoke(nameof (getUserProfile), new object[3]
      {
        (object) sessionId,
        (object) userId,
        (object) userIdSpecified
      })[0];
    }

    public IAsyncResult BegingetUserProfile(
      string sessionId,
      int userId,
      bool userIdSpecified,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("getUserProfile", new object[3]
      {
        (object) sessionId,
        (object) userId,
        (object) userIdSpecified
      }, callback, asyncState);
    }

    public userListResult EndgetUserProfile(IAsyncResult asyncResult)
    {
      return (userListResult) this.EndInvoke(asyncResult)[0];
    }

    public void getUserProfileAsync(string sessionId, int userId, bool userIdSpecified)
    {
      this.getUserProfileAsync(sessionId, userId, userIdSpecified, (object) null);
    }

    public void getUserProfileAsync(
      string sessionId,
      int userId,
      bool userIdSpecified,
      object userState)
    {
      if (this.getUserProfileOperationCompleted == null)
        this.getUserProfileOperationCompleted = new SendOrPostCallback(this.OngetUserProfileOperationCompleted);
      this.InvokeAsync("getUserProfile", new object[3]
      {
        (object) sessionId,
        (object) userId,
        (object) userIdSpecified
      }, this.getUserProfileOperationCompleted, userState);
    }

    private void OngetUserProfileOperationCompleted(object arg)
    {
      if (this.getUserProfileCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.getUserProfileCompleted((object) this, new getUserProfileCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult autoEnrollUser([XmlElement(Form = XmlSchemaForm.Unqualified)] string userName, [XmlElement(Form = XmlSchemaForm.Unqualified)] string password, [XmlElement(Form = XmlSchemaForm.Unqualified)] string email)
    {
      return (molResult) this.Invoke(nameof (autoEnrollUser), new object[3]
      {
        (object) userName,
        (object) password,
        (object) email
      })[0];
    }

    public IAsyncResult BeginautoEnrollUser(
      string userName,
      string password,
      string email,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("autoEnrollUser", new object[3]
      {
        (object) userName,
        (object) password,
        (object) email
      }, callback, asyncState);
    }

    public molResult EndautoEnrollUser(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void autoEnrollUserAsync(string userName, string password, string email)
    {
      this.autoEnrollUserAsync(userName, password, email, (object) null);
    }

    public void autoEnrollUserAsync(
      string userName,
      string password,
      string email,
      object userState)
    {
      if (this.autoEnrollUserOperationCompleted == null)
        this.autoEnrollUserOperationCompleted = new SendOrPostCallback(this.OnautoEnrollUserOperationCompleted);
      this.InvokeAsync("autoEnrollUser", new object[3]
      {
        (object) userName,
        (object) password,
        (object) email
      }, this.autoEnrollUserOperationCompleted, userState);
    }

    private void OnautoEnrollUserOperationCompleted(object arg)
    {
      if (this.autoEnrollUserCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.autoEnrollUserCompleted((object) this, new autoEnrollUserCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult addFederationMap([XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId, [XmlElement(Form = XmlSchemaForm.Unqualified)] int idpId, [XmlElement(Form = XmlSchemaForm.Unqualified)] int spId)
    {
      return (molResult) this.Invoke(nameof (addFederationMap), new object[3]
      {
        (object) sessionId,
        (object) idpId,
        (object) spId
      })[0];
    }

    public IAsyncResult BeginaddFederationMap(
      string sessionId,
      int idpId,
      int spId,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("addFederationMap", new object[3]
      {
        (object) sessionId,
        (object) idpId,
        (object) spId
      }, callback, asyncState);
    }

    public molResult EndaddFederationMap(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void addFederationMapAsync(string sessionId, int idpId, int spId)
    {
      this.addFederationMapAsync(sessionId, idpId, spId, (object) null);
    }

    public void addFederationMapAsync(string sessionId, int idpId, int spId, object userState)
    {
      if (this.addFederationMapOperationCompleted == null)
        this.addFederationMapOperationCompleted = new SendOrPostCallback(this.OnaddFederationMapOperationCompleted);
      this.InvokeAsync("addFederationMap", new object[3]
      {
        (object) sessionId,
        (object) idpId,
        (object) spId
      }, this.addFederationMapOperationCompleted, userState);
    }

    private void OnaddFederationMapOperationCompleted(object arg)
    {
      if (this.addFederationMapCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.addFederationMapCompleted((object) this, new addFederationMapCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult deleteIdentityProvider([XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId, [XmlElement(Form = XmlSchemaForm.Unqualified)] int idpId)
    {
      return (molResult) this.Invoke(nameof (deleteIdentityProvider), new object[2]
      {
        (object) sessionId,
        (object) idpId
      })[0];
    }

    public IAsyncResult BegindeleteIdentityProvider(
      string sessionId,
      int idpId,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("deleteIdentityProvider", new object[2]
      {
        (object) sessionId,
        (object) idpId
      }, callback, asyncState);
    }

    public molResult EnddeleteIdentityProvider(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void deleteIdentityProviderAsync(string sessionId, int idpId)
    {
      this.deleteIdentityProviderAsync(sessionId, idpId, (object) null);
    }

    public void deleteIdentityProviderAsync(string sessionId, int idpId, object userState)
    {
      if (this.deleteIdentityProviderOperationCompleted == null)
        this.deleteIdentityProviderOperationCompleted = new SendOrPostCallback(this.OndeleteIdentityProviderOperationCompleted);
      this.InvokeAsync("deleteIdentityProvider", new object[2]
      {
        (object) sessionId,
        (object) idpId
      }, this.deleteIdentityProviderOperationCompleted, userState);
    }

    private void OndeleteIdentityProviderOperationCompleted(object arg)
    {
      if (this.deleteIdentityProviderCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.deleteIdentityProviderCompleted((object) this, new deleteIdentityProviderCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult getCustomUserData([XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId, [XmlElement(Form = XmlSchemaForm.Unqualified)] int userId, [XmlElement(Form = XmlSchemaForm.Unqualified), XmlIgnore] bool userIdSpecified)
    {
      return (molResult) this.Invoke(nameof (getCustomUserData), new object[3]
      {
        (object) sessionId,
        (object) userId,
        (object) userIdSpecified
      })[0];
    }

    public IAsyncResult BegingetCustomUserData(
      string sessionId,
      int userId,
      bool userIdSpecified,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("getCustomUserData", new object[3]
      {
        (object) sessionId,
        (object) userId,
        (object) userIdSpecified
      }, callback, asyncState);
    }

    public molResult EndgetCustomUserData(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void getCustomUserDataAsync(string sessionId, int userId, bool userIdSpecified)
    {
      this.getCustomUserDataAsync(sessionId, userId, userIdSpecified, (object) null);
    }

    public void getCustomUserDataAsync(
      string sessionId,
      int userId,
      bool userIdSpecified,
      object userState)
    {
      if (this.getCustomUserDataOperationCompleted == null)
        this.getCustomUserDataOperationCompleted = new SendOrPostCallback(this.OngetCustomUserDataOperationCompleted);
      this.InvokeAsync("getCustomUserData", new object[3]
      {
        (object) sessionId,
        (object) userId,
        (object) userIdSpecified
      }, this.getCustomUserDataOperationCompleted, userState);
    }

    private void OngetCustomUserDataOperationCompleted(object arg)
    {
      if (this.getCustomUserDataCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.getCustomUserDataCompleted((object) this, new getCustomUserDataCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult setCustomUserData(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] int userId,
      [XmlElement(Form = XmlSchemaForm.Unqualified), XmlIgnore] bool userIdSpecified,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string customData)
    {
      return (molResult) this.Invoke(nameof (setCustomUserData), new object[4]
      {
        (object) sessionId,
        (object) userId,
        (object) userIdSpecified,
        (object) customData
      })[0];
    }

    public IAsyncResult BeginsetCustomUserData(
      string sessionId,
      int userId,
      bool userIdSpecified,
      string customData,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("setCustomUserData", new object[4]
      {
        (object) sessionId,
        (object) userId,
        (object) userIdSpecified,
        (object) customData
      }, callback, asyncState);
    }

    public molResult EndsetCustomUserData(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void setCustomUserDataAsync(
      string sessionId,
      int userId,
      bool userIdSpecified,
      string customData)
    {
      this.setCustomUserDataAsync(sessionId, userId, userIdSpecified, customData, (object) null);
    }

    public void setCustomUserDataAsync(
      string sessionId,
      int userId,
      bool userIdSpecified,
      string customData,
      object userState)
    {
      if (this.setCustomUserDataOperationCompleted == null)
        this.setCustomUserDataOperationCompleted = new SendOrPostCallback(this.OnsetCustomUserDataOperationCompleted);
      this.InvokeAsync("setCustomUserData", new object[4]
      {
        (object) sessionId,
        (object) userId,
        (object) userIdSpecified,
        (object) customData
      }, this.setCustomUserDataOperationCompleted, userState);
    }

    private void OnsetCustomUserDataOperationCompleted(object arg)
    {
      if (this.setCustomUserDataCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.setCustomUserDataCompleted((object) this, new setCustomUserDataCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult deleteUser([XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId, [XmlElement(Form = XmlSchemaForm.Unqualified)] string userName)
    {
      return (molResult) this.Invoke(nameof (deleteUser), new object[2]
      {
        (object) sessionId,
        (object) userName
      })[0];
    }

    public IAsyncResult BegindeleteUser(
      string sessionId,
      string userName,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("deleteUser", new object[2]
      {
        (object) sessionId,
        (object) userName
      }, callback, asyncState);
    }

    public molResult EnddeleteUser(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void deleteUserAsync(string sessionId, string userName)
    {
      this.deleteUserAsync(sessionId, userName, (object) null);
    }

    public void deleteUserAsync(string sessionId, string userName, object userState)
    {
      if (this.deleteUserOperationCompleted == null)
        this.deleteUserOperationCompleted = new SendOrPostCallback(this.OndeleteUserOperationCompleted);
      this.InvokeAsync("deleteUser", new object[2]
      {
        (object) sessionId,
        (object) userName
      }, this.deleteUserOperationCompleted, userState);
    }

    private void OndeleteUserOperationCompleted(object arg)
    {
      if (this.deleteUserCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.deleteUserCompleted((object) this, new deleteUserCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult disableUser([XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId, [XmlElement(Form = XmlSchemaForm.Unqualified)] string userName)
    {
      return (molResult) this.Invoke(nameof (disableUser), new object[2]
      {
        (object) sessionId,
        (object) userName
      })[0];
    }

    public IAsyncResult BegindisableUser(
      string sessionId,
      string userName,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("disableUser", new object[2]
      {
        (object) sessionId,
        (object) userName
      }, callback, asyncState);
    }

    public molResult EnddisableUser(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void disableUserAsync(string sessionId, string userName)
    {
      this.disableUserAsync(sessionId, userName, (object) null);
    }

    public void disableUserAsync(string sessionId, string userName, object userState)
    {
      if (this.disableUserOperationCompleted == null)
        this.disableUserOperationCompleted = new SendOrPostCallback(this.OndisableUserOperationCompleted);
      this.InvokeAsync("disableUser", new object[2]
      {
        (object) sessionId,
        (object) userName
      }, this.disableUserOperationCompleted, userState);
    }

    private void OndisableUserOperationCompleted(object arg)
    {
      if (this.disableUserCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.disableUserCompleted((object) this, new disableUserCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult enableUser([XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId, [XmlElement(Form = XmlSchemaForm.Unqualified)] string userName)
    {
      return (molResult) this.Invoke(nameof (enableUser), new object[2]
      {
        (object) sessionId,
        (object) userName
      })[0];
    }

    public IAsyncResult BeginenableUser(
      string sessionId,
      string userName,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("enableUser", new object[2]
      {
        (object) sessionId,
        (object) userName
      }, callback, asyncState);
    }

    public molResult EndenableUser(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void enableUserAsync(string sessionId, string userName)
    {
      this.enableUserAsync(sessionId, userName, (object) null);
    }

    public void enableUserAsync(string sessionId, string userName, object userState)
    {
      if (this.enableUserOperationCompleted == null)
        this.enableUserOperationCompleted = new SendOrPostCallback(this.OnenableUserOperationCompleted);
      this.InvokeAsync("enableUser", new object[2]
      {
        (object) sessionId,
        (object) userName
      }, this.enableUserOperationCompleted, userState);
    }

    private void OnenableUserOperationCompleted(object arg)
    {
      if (this.enableUserCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.enableUserCompleted((object) this, new enableUserCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult addServiceProvider(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string name,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string description,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string profile,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string postUrl,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string targetUrl,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string recipient,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string audience,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] int lifetime,
      [XmlElement(Form = XmlSchemaForm.Unqualified), XmlIgnore] bool lifetimeSpecified,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string metaDataUrl,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string metaData,
      [XmlElement("attributes", Form = XmlSchemaForm.Unqualified)] attributeMapping[] attributes)
    {
      return (molResult) this.Invoke(nameof (addServiceProvider), new object[13]
      {
        (object) sessionId,
        (object) name,
        (object) description,
        (object) profile,
        (object) postUrl,
        (object) targetUrl,
        (object) recipient,
        (object) audience,
        (object) lifetime,
        (object) lifetimeSpecified,
        (object) metaDataUrl,
        (object) metaData,
        (object) attributes
      })[0];
    }

    public IAsyncResult BeginaddServiceProvider(
      string sessionId,
      string name,
      string description,
      string profile,
      string postUrl,
      string targetUrl,
      string recipient,
      string audience,
      int lifetime,
      bool lifetimeSpecified,
      string metaDataUrl,
      string metaData,
      attributeMapping[] attributes,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("addServiceProvider", new object[13]
      {
        (object) sessionId,
        (object) name,
        (object) description,
        (object) profile,
        (object) postUrl,
        (object) targetUrl,
        (object) recipient,
        (object) audience,
        (object) lifetime,
        (object) lifetimeSpecified,
        (object) metaDataUrl,
        (object) metaData,
        (object) attributes
      }, callback, asyncState);
    }

    public molResult EndaddServiceProvider(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void addServiceProviderAsync(
      string sessionId,
      string name,
      string description,
      string profile,
      string postUrl,
      string targetUrl,
      string recipient,
      string audience,
      int lifetime,
      bool lifetimeSpecified,
      string metaDataUrl,
      string metaData,
      attributeMapping[] attributes)
    {
      this.addServiceProviderAsync(sessionId, name, description, profile, postUrl, targetUrl, recipient, audience, lifetime, lifetimeSpecified, metaDataUrl, metaData, attributes, (object) null);
    }

    public void addServiceProviderAsync(
      string sessionId,
      string name,
      string description,
      string profile,
      string postUrl,
      string targetUrl,
      string recipient,
      string audience,
      int lifetime,
      bool lifetimeSpecified,
      string metaDataUrl,
      string metaData,
      attributeMapping[] attributes,
      object userState)
    {
      if (this.addServiceProviderOperationCompleted == null)
        this.addServiceProviderOperationCompleted = new SendOrPostCallback(this.OnaddServiceProviderOperationCompleted);
      this.InvokeAsync("addServiceProvider", new object[13]
      {
        (object) sessionId,
        (object) name,
        (object) description,
        (object) profile,
        (object) postUrl,
        (object) targetUrl,
        (object) recipient,
        (object) audience,
        (object) lifetime,
        (object) lifetimeSpecified,
        (object) metaDataUrl,
        (object) metaData,
        (object) attributes
      }, this.addServiceProviderOperationCompleted, userState);
    }

    private void OnaddServiceProviderOperationCompleted(object arg)
    {
      if (this.addServiceProviderCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.addServiceProviderCompleted((object) this, new addServiceProviderCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public applicationListResult getApps([XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId)
    {
      return (applicationListResult) this.Invoke(nameof (getApps), new object[1]
      {
        (object) sessionId
      })[0];
    }

    public IAsyncResult BegingetApps(
      string sessionId,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("getApps", new object[1]
      {
        (object) sessionId
      }, callback, asyncState);
    }

    public applicationListResult EndgetApps(IAsyncResult asyncResult)
    {
      return (applicationListResult) this.EndInvoke(asyncResult)[0];
    }

    public void getAppsAsync(string sessionId)
    {
      this.getAppsAsync(sessionId, (object) null);
    }

    public void getAppsAsync(string sessionId, object userState)
    {
      if (this.getAppsOperationCompleted == null)
        this.getAppsOperationCompleted = new SendOrPostCallback(this.OngetAppsOperationCompleted);
      this.InvokeAsync("getApps", new object[1]
      {
        (object) sessionId
      }, this.getAppsOperationCompleted, userState);
    }

    private void OngetAppsOperationCompleted(object arg)
    {
      if (this.getAppsCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.getAppsCompleted((object) this, new getAppsCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult addIdentityProvider(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string idpName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string profile,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string orgName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string cert,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string metaDataUrl,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string metaData,
      [XmlElement("attributes", Form = XmlSchemaForm.Unqualified)] attributeMapping[] attributes)
    {
      return (molResult) this.Invoke(nameof (addIdentityProvider), new object[8]
      {
        (object) sessionId,
        (object) idpName,
        (object) profile,
        (object) orgName,
        (object) cert,
        (object) metaDataUrl,
        (object) metaData,
        (object) attributes
      })[0];
    }

    public IAsyncResult BeginaddIdentityProvider(
      string sessionId,
      string idpName,
      string profile,
      string orgName,
      string cert,
      string metaDataUrl,
      string metaData,
      attributeMapping[] attributes,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("addIdentityProvider", new object[8]
      {
        (object) sessionId,
        (object) idpName,
        (object) profile,
        (object) orgName,
        (object) cert,
        (object) metaDataUrl,
        (object) metaData,
        (object) attributes
      }, callback, asyncState);
    }

    public molResult EndaddIdentityProvider(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void addIdentityProviderAsync(
      string sessionId,
      string idpName,
      string profile,
      string orgName,
      string cert,
      string metaDataUrl,
      string metaData,
      attributeMapping[] attributes)
    {
      this.addIdentityProviderAsync(sessionId, idpName, profile, orgName, cert, metaDataUrl, metaData, attributes, (object) null);
    }

    public void addIdentityProviderAsync(
      string sessionId,
      string idpName,
      string profile,
      string orgName,
      string cert,
      string metaDataUrl,
      string metaData,
      attributeMapping[] attributes,
      object userState)
    {
      if (this.addIdentityProviderOperationCompleted == null)
        this.addIdentityProviderOperationCompleted = new SendOrPostCallback(this.OnaddIdentityProviderOperationCompleted);
      this.InvokeAsync("addIdentityProvider", new object[8]
      {
        (object) sessionId,
        (object) idpName,
        (object) profile,
        (object) orgName,
        (object) cert,
        (object) metaDataUrl,
        (object) metaData,
        (object) attributes
      }, this.addIdentityProviderOperationCompleted, userState);
    }

    private void OnaddIdentityProviderOperationCompleted(object arg)
    {
      if (this.addIdentityProviderCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.addIdentityProviderCompleted((object) this, new addIdentityProviderCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult modifyIdentityProvider(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] int idpId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string idpName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string orgName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string cert,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string metaDataUrl,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string metaData,
      [XmlElement("attributes", Form = XmlSchemaForm.Unqualified)] attributeMapping[] attributes)
    {
      return (molResult) this.Invoke(nameof (modifyIdentityProvider), new object[8]
      {
        (object) sessionId,
        (object) idpId,
        (object) idpName,
        (object) orgName,
        (object) cert,
        (object) metaDataUrl,
        (object) metaData,
        (object) attributes
      })[0];
    }

    public IAsyncResult BeginmodifyIdentityProvider(
      string sessionId,
      int idpId,
      string idpName,
      string orgName,
      string cert,
      string metaDataUrl,
      string metaData,
      attributeMapping[] attributes,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("modifyIdentityProvider", new object[8]
      {
        (object) sessionId,
        (object) idpId,
        (object) idpName,
        (object) orgName,
        (object) cert,
        (object) metaDataUrl,
        (object) metaData,
        (object) attributes
      }, callback, asyncState);
    }

    public molResult EndmodifyIdentityProvider(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void modifyIdentityProviderAsync(
      string sessionId,
      int idpId,
      string idpName,
      string orgName,
      string cert,
      string metaDataUrl,
      string metaData,
      attributeMapping[] attributes)
    {
      this.modifyIdentityProviderAsync(sessionId, idpId, idpName, orgName, cert, metaDataUrl, metaData, attributes, (object) null);
    }

    public void modifyIdentityProviderAsync(
      string sessionId,
      int idpId,
      string idpName,
      string orgName,
      string cert,
      string metaDataUrl,
      string metaData,
      attributeMapping[] attributes,
      object userState)
    {
      if (this.modifyIdentityProviderOperationCompleted == null)
        this.modifyIdentityProviderOperationCompleted = new SendOrPostCallback(this.OnmodifyIdentityProviderOperationCompleted);
      this.InvokeAsync("modifyIdentityProvider", new object[8]
      {
        (object) sessionId,
        (object) idpId,
        (object) idpName,
        (object) orgName,
        (object) cert,
        (object) metaDataUrl,
        (object) metaData,
        (object) attributes
      }, this.modifyIdentityProviderOperationCompleted, userState);
    }

    private void OnmodifyIdentityProviderOperationCompleted(object arg)
    {
      if (this.modifyIdentityProviderCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.modifyIdentityProviderCompleted((object) this, new modifyIdentityProviderCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult validateAssertion(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string samlResponse,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string recipientName)
    {
      return (molResult) this.Invoke(nameof (validateAssertion), new object[3]
      {
        (object) sessionId,
        (object) samlResponse,
        (object) recipientName
      })[0];
    }

    public IAsyncResult BeginvalidateAssertion(
      string sessionId,
      string samlResponse,
      string recipientName,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("validateAssertion", new object[3]
      {
        (object) sessionId,
        (object) samlResponse,
        (object) recipientName
      }, callback, asyncState);
    }

    public molResult EndvalidateAssertion(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void validateAssertionAsync(string sessionId, string samlResponse, string recipientName)
    {
      this.validateAssertionAsync(sessionId, samlResponse, recipientName, (object) null);
    }

    public void validateAssertionAsync(
      string sessionId,
      string samlResponse,
      string recipientName,
      object userState)
    {
      if (this.validateAssertionOperationCompleted == null)
        this.validateAssertionOperationCompleted = new SendOrPostCallback(this.OnvalidateAssertionOperationCompleted);
      this.InvokeAsync("validateAssertion", new object[3]
      {
        (object) sessionId,
        (object) samlResponse,
        (object) recipientName
      }, this.validateAssertionOperationCompleted, userState);
    }

    private void OnvalidateAssertionOperationCompleted(object arg)
    {
      if (this.validateAssertionCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.validateAssertionCompleted((object) this, new validateAssertionCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult validateUser([XmlElement(Form = XmlSchemaForm.Unqualified)] string userName, [XmlElement(Form = XmlSchemaForm.Unqualified)] string password)
    {
      return (molResult) this.Invoke(nameof (validateUser), new object[2]
      {
        (object) userName,
        (object) password
      })[0];
    }

    public IAsyncResult BeginvalidateUser(
      string userName,
      string password,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("validateUser", new object[2]
      {
        (object) userName,
        (object) password
      }, callback, asyncState);
    }

    public molResult EndvalidateUser(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void validateUserAsync(string userName, string password)
    {
      this.validateUserAsync(userName, password, (object) null);
    }

    public void validateUserAsync(string userName, string password, object userState)
    {
      if (this.validateUserOperationCompleted == null)
        this.validateUserOperationCompleted = new SendOrPostCallback(this.OnvalidateUserOperationCompleted);
      this.InvokeAsync("validateUser", new object[2]
      {
        (object) userName,
        (object) password
      }, this.validateUserOperationCompleted, userState);
    }

    private void OnvalidateUserOperationCompleted(object arg)
    {
      if (this.validateUserCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.validateUserCompleted((object) this, new validateUserCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public signinResult signIn([XmlElement(Form = XmlSchemaForm.Unqualified)] string securityToken, [XmlElement(Form = XmlSchemaForm.Unqualified)] string userName, [XmlElement(Form = XmlSchemaForm.Unqualified)] string password)
    {
      return (signinResult) this.Invoke(nameof (signIn), new object[3]
      {
        (object) securityToken,
        (object) userName,
        (object) password
      })[0];
    }

    public IAsyncResult BeginsignIn(
      string securityToken,
      string userName,
      string password,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("signIn", new object[3]
      {
        (object) securityToken,
        (object) userName,
        (object) password
      }, callback, asyncState);
    }

    public signinResult EndsignIn(IAsyncResult asyncResult)
    {
      return (signinResult) this.EndInvoke(asyncResult)[0];
    }

    public void signInAsync(string securityToken, string userName, string password)
    {
      this.signInAsync(securityToken, userName, password, (object) null);
    }

    public void signInAsync(
      string securityToken,
      string userName,
      string password,
      object userState)
    {
      if (this.signInOperationCompleted == null)
        this.signInOperationCompleted = new SendOrPostCallback(this.OnsignInOperationCompleted);
      this.InvokeAsync("signIn", new object[3]
      {
        (object) securityToken,
        (object) userName,
        (object) password
      }, this.signInOperationCompleted, userState);
    }

    private void OnsignInOperationCompleted(object arg)
    {
      if (this.signInCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.signInCompleted((object) this, new signInCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult signOut([XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId)
    {
      return (molResult) this.Invoke(nameof (signOut), new object[1]
      {
        (object) sessionId
      })[0];
    }

    public IAsyncResult BeginsignOut(
      string sessionId,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("signOut", new object[1]
      {
        (object) sessionId
      }, callback, asyncState);
    }

    public molResult EndsignOut(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void signOutAsync(string sessionId)
    {
      this.signOutAsync(sessionId, (object) null);
    }

    public void signOutAsync(string sessionId, object userState)
    {
      if (this.signOutOperationCompleted == null)
        this.signOutOperationCompleted = new SendOrPostCallback(this.OnsignOutOperationCompleted);
      this.InvokeAsync("signOut", new object[1]
      {
        (object) sessionId
      }, this.signOutOperationCompleted, userState);
    }

    private void OnsignOutOperationCompleted(object arg)
    {
      if (this.signOutCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.signOutCompleted((object) this, new signOutCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public applicationListResult getAllAppsForOrg([XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId)
    {
      return (applicationListResult) this.Invoke(nameof (getAllAppsForOrg), new object[1]
      {
        (object) sessionId
      })[0];
    }

    public IAsyncResult BegingetAllAppsForOrg(
      string sessionId,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("getAllAppsForOrg", new object[1]
      {
        (object) sessionId
      }, callback, asyncState);
    }

    public applicationListResult EndgetAllAppsForOrg(IAsyncResult asyncResult)
    {
      return (applicationListResult) this.EndInvoke(asyncResult)[0];
    }

    public void getAllAppsForOrgAsync(string sessionId)
    {
      this.getAllAppsForOrgAsync(sessionId, (object) null);
    }

    public void getAllAppsForOrgAsync(string sessionId, object userState)
    {
      if (this.getAllAppsForOrgOperationCompleted == null)
        this.getAllAppsForOrgOperationCompleted = new SendOrPostCallback(this.OngetAllAppsForOrgOperationCompleted);
      this.InvokeAsync("getAllAppsForOrg", new object[1]
      {
        (object) sessionId
      }, this.getAllAppsForOrgOperationCompleted, userState);
    }

    private void OngetAllAppsForOrgOperationCompleted(object arg)
    {
      if (this.getAllAppsForOrgCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.getAllAppsForOrgCompleted((object) this, new getAllAppsForOrgCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public applicationListResult getAppsForUser(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] int userId,
      [XmlIgnore, XmlElement(Form = XmlSchemaForm.Unqualified)] bool userIdSpecified)
    {
      return (applicationListResult) this.Invoke(nameof (getAppsForUser), new object[3]
      {
        (object) sessionId,
        (object) userId,
        (object) userIdSpecified
      })[0];
    }

    public IAsyncResult BegingetAppsForUser(
      string sessionId,
      int userId,
      bool userIdSpecified,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("getAppsForUser", new object[3]
      {
        (object) sessionId,
        (object) userId,
        (object) userIdSpecified
      }, callback, asyncState);
    }

    public applicationListResult EndgetAppsForUser(IAsyncResult asyncResult)
    {
      return (applicationListResult) this.EndInvoke(asyncResult)[0];
    }

    public void getAppsForUserAsync(string sessionId, int userId, bool userIdSpecified)
    {
      this.getAppsForUserAsync(sessionId, userId, userIdSpecified, (object) null);
    }

    public void getAppsForUserAsync(
      string sessionId,
      int userId,
      bool userIdSpecified,
      object userState)
    {
      if (this.getAppsForUserOperationCompleted == null)
        this.getAppsForUserOperationCompleted = new SendOrPostCallback(this.OngetAppsForUserOperationCompleted);
      this.InvokeAsync("getAppsForUser", new object[3]
      {
        (object) sessionId,
        (object) userId,
        (object) userIdSpecified
      }, this.getAppsForUserOperationCompleted, userState);
    }

    private void OngetAppsForUserOperationCompleted(object arg)
    {
      if (this.getAppsForUserCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.getAppsForUserCompleted((object) this, new getAppsForUserCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult subscribeUserToApp(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] int userId,
      [XmlElement(Form = XmlSchemaForm.Unqualified), XmlIgnore] bool userIdSpecified,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string appName)
    {
      return (molResult) this.Invoke(nameof (subscribeUserToApp), new object[4]
      {
        (object) sessionId,
        (object) userId,
        (object) userIdSpecified,
        (object) appName
      })[0];
    }

    public IAsyncResult BeginsubscribeUserToApp(
      string sessionId,
      int userId,
      bool userIdSpecified,
      string appName,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("subscribeUserToApp", new object[4]
      {
        (object) sessionId,
        (object) userId,
        (object) userIdSpecified,
        (object) appName
      }, callback, asyncState);
    }

    public molResult EndsubscribeUserToApp(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void subscribeUserToAppAsync(
      string sessionId,
      int userId,
      bool userIdSpecified,
      string appName)
    {
      this.subscribeUserToAppAsync(sessionId, userId, userIdSpecified, appName, (object) null);
    }

    public void subscribeUserToAppAsync(
      string sessionId,
      int userId,
      bool userIdSpecified,
      string appName,
      object userState)
    {
      if (this.subscribeUserToAppOperationCompleted == null)
        this.subscribeUserToAppOperationCompleted = new SendOrPostCallback(this.OnsubscribeUserToAppOperationCompleted);
      this.InvokeAsync("subscribeUserToApp", new object[4]
      {
        (object) sessionId,
        (object) userId,
        (object) userIdSpecified,
        (object) appName
      }, this.subscribeUserToAppOperationCompleted, userState);
    }

    private void OnsubscribeUserToAppOperationCompleted(object arg)
    {
      if (this.subscribeUserToAppCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.subscribeUserToAppCompleted((object) this, new subscribeUserToAppCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult unsubscribeUserFromApp(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] int userId,
      [XmlIgnore, XmlElement(Form = XmlSchemaForm.Unqualified)] bool userIdSpecified,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string appName)
    {
      return (molResult) this.Invoke(nameof (unsubscribeUserFromApp), new object[4]
      {
        (object) sessionId,
        (object) userId,
        (object) userIdSpecified,
        (object) appName
      })[0];
    }

    public IAsyncResult BeginunsubscribeUserFromApp(
      string sessionId,
      int userId,
      bool userIdSpecified,
      string appName,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("unsubscribeUserFromApp", new object[4]
      {
        (object) sessionId,
        (object) userId,
        (object) userIdSpecified,
        (object) appName
      }, callback, asyncState);
    }

    public molResult EndunsubscribeUserFromApp(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void unsubscribeUserFromAppAsync(
      string sessionId,
      int userId,
      bool userIdSpecified,
      string appName)
    {
      this.unsubscribeUserFromAppAsync(sessionId, userId, userIdSpecified, appName, (object) null);
    }

    public void unsubscribeUserFromAppAsync(
      string sessionId,
      int userId,
      bool userIdSpecified,
      string appName,
      object userState)
    {
      if (this.unsubscribeUserFromAppOperationCompleted == null)
        this.unsubscribeUserFromAppOperationCompleted = new SendOrPostCallback(this.OnunsubscribeUserFromAppOperationCompleted);
      this.InvokeAsync("unsubscribeUserFromApp", new object[4]
      {
        (object) sessionId,
        (object) userId,
        (object) userIdSpecified,
        (object) appName
      }, this.unsubscribeUserFromAppOperationCompleted, userState);
    }

    private void OnunsubscribeUserFromAppOperationCompleted(object arg)
    {
      if (this.unsubscribeUserFromAppCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.unsubscribeUserFromAppCompleted((object) this, new unsubscribeUserFromAppCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult subscribeToApp([XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId, [XmlElement(Form = XmlSchemaForm.Unqualified)] string appName)
    {
      return (molResult) this.Invoke(nameof (subscribeToApp), new object[2]
      {
        (object) sessionId,
        (object) appName
      })[0];
    }

    public IAsyncResult BeginsubscribeToApp(
      string sessionId,
      string appName,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("subscribeToApp", new object[2]
      {
        (object) sessionId,
        (object) appName
      }, callback, asyncState);
    }

    public molResult EndsubscribeToApp(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void subscribeToAppAsync(string sessionId, string appName)
    {
      this.subscribeToAppAsync(sessionId, appName, (object) null);
    }

    public void subscribeToAppAsync(string sessionId, string appName, object userState)
    {
      if (this.subscribeToAppOperationCompleted == null)
        this.subscribeToAppOperationCompleted = new SendOrPostCallback(this.OnsubscribeToAppOperationCompleted);
      this.InvokeAsync("subscribeToApp", new object[2]
      {
        (object) sessionId,
        (object) appName
      }, this.subscribeToAppOperationCompleted, userState);
    }

    private void OnsubscribeToAppOperationCompleted(object arg)
    {
      if (this.subscribeToAppCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.subscribeToAppCompleted((object) this, new subscribeToAppCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult unsubscribeFromApp([XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId, [XmlElement(Form = XmlSchemaForm.Unqualified)] string appName)
    {
      return (molResult) this.Invoke(nameof (unsubscribeFromApp), new object[2]
      {
        (object) sessionId,
        (object) appName
      })[0];
    }

    public IAsyncResult BeginunsubscribeFromApp(
      string sessionId,
      string appName,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("unsubscribeFromApp", new object[2]
      {
        (object) sessionId,
        (object) appName
      }, callback, asyncState);
    }

    public molResult EndunsubscribeFromApp(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void unsubscribeFromAppAsync(string sessionId, string appName)
    {
      this.unsubscribeFromAppAsync(sessionId, appName, (object) null);
    }

    public void unsubscribeFromAppAsync(string sessionId, string appName, object userState)
    {
      if (this.unsubscribeFromAppOperationCompleted == null)
        this.unsubscribeFromAppOperationCompleted = new SendOrPostCallback(this.OnunsubscribeFromAppOperationCompleted);
      this.InvokeAsync("unsubscribeFromApp", new object[2]
      {
        (object) sessionId,
        (object) appName
      }, this.unsubscribeFromAppOperationCompleted, userState);
    }

    private void OnunsubscribeFromAppOperationCompleted(object arg)
    {
      if (this.unsubscribeFromAppCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.unsubscribeFromAppCompleted((object) this, new unsubscribeFromAppCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public userListResult searchUsers(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string userName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string firstName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string lastName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string email,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string phone)
    {
      return (userListResult) this.Invoke(nameof (searchUsers), new object[6]
      {
        (object) sessionId,
        (object) userName,
        (object) firstName,
        (object) lastName,
        (object) email,
        (object) phone
      })[0];
    }

    public IAsyncResult BeginsearchUsers(
      string sessionId,
      string userName,
      string firstName,
      string lastName,
      string email,
      string phone,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("searchUsers", new object[6]
      {
        (object) sessionId,
        (object) userName,
        (object) firstName,
        (object) lastName,
        (object) email,
        (object) phone
      }, callback, asyncState);
    }

    public userListResult EndsearchUsers(IAsyncResult asyncResult)
    {
      return (userListResult) this.EndInvoke(asyncResult)[0];
    }

    public void searchUsersAsync(
      string sessionId,
      string userName,
      string firstName,
      string lastName,
      string email,
      string phone)
    {
      this.searchUsersAsync(sessionId, userName, firstName, lastName, email, phone, (object) null);
    }

    public void searchUsersAsync(
      string sessionId,
      string userName,
      string firstName,
      string lastName,
      string email,
      string phone,
      object userState)
    {
      if (this.searchUsersOperationCompleted == null)
        this.searchUsersOperationCompleted = new SendOrPostCallback(this.OnsearchUsersOperationCompleted);
      this.InvokeAsync("searchUsers", new object[6]
      {
        (object) sessionId,
        (object) userName,
        (object) firstName,
        (object) lastName,
        (object) email,
        (object) phone
      }, this.searchUsersOperationCompleted, userState);
    }

    private void OnsearchUsersOperationCompleted(object arg)
    {
      if (this.searchUsersCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.searchUsersCompleted((object) this, new searchUsersCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public userListResult getProfile([XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId)
    {
      return (userListResult) this.Invoke(nameof (getProfile), new object[1]
      {
        (object) sessionId
      })[0];
    }

    public IAsyncResult BegingetProfile(
      string sessionId,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("getProfile", new object[1]
      {
        (object) sessionId
      }, callback, asyncState);
    }

    public userListResult EndgetProfile(IAsyncResult asyncResult)
    {
      return (userListResult) this.EndInvoke(asyncResult)[0];
    }

    public void getProfileAsync(string sessionId)
    {
      this.getProfileAsync(sessionId, (object) null);
    }

    public void getProfileAsync(string sessionId, object userState)
    {
      if (this.getProfileOperationCompleted == null)
        this.getProfileOperationCompleted = new SendOrPostCallback(this.OngetProfileOperationCompleted);
      this.InvokeAsync("getProfile", new object[1]
      {
        (object) sessionId
      }, this.getProfileOperationCompleted, userState);
    }

    private void OngetProfileOperationCompleted(object arg)
    {
      if (this.getProfileCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.getProfileCompleted((object) this, new getProfileCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult setUserProfile(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] int userId,
      [XmlElement(Form = XmlSchemaForm.Unqualified), XmlIgnore] bool userIdSpecified,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string firstName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string lastName)
    {
      return (molResult) this.Invoke(nameof (setUserProfile), new object[5]
      {
        (object) sessionId,
        (object) userId,
        (object) userIdSpecified,
        (object) firstName,
        (object) lastName
      })[0];
    }

    public IAsyncResult BeginsetUserProfile(
      string sessionId,
      int userId,
      bool userIdSpecified,
      string firstName,
      string lastName,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("setUserProfile", new object[5]
      {
        (object) sessionId,
        (object) userId,
        (object) userIdSpecified,
        (object) firstName,
        (object) lastName
      }, callback, asyncState);
    }

    public molResult EndsetUserProfile(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void setUserProfileAsync(
      string sessionId,
      int userId,
      bool userIdSpecified,
      string firstName,
      string lastName)
    {
      this.setUserProfileAsync(sessionId, userId, userIdSpecified, firstName, lastName, (object) null);
    }

    public void setUserProfileAsync(
      string sessionId,
      int userId,
      bool userIdSpecified,
      string firstName,
      string lastName,
      object userState)
    {
      if (this.setUserProfileOperationCompleted == null)
        this.setUserProfileOperationCompleted = new SendOrPostCallback(this.OnsetUserProfileOperationCompleted);
      this.InvokeAsync("setUserProfile", new object[5]
      {
        (object) sessionId,
        (object) userId,
        (object) userIdSpecified,
        (object) firstName,
        (object) lastName
      }, this.setUserProfileOperationCompleted, userState);
    }

    private void OnsetUserProfileOperationCompleted(object arg)
    {
      if (this.setUserProfileCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.setUserProfileCompleted((object) this, new setUserProfileCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult setProfile(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string firstName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string lastName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string phone,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string email)
    {
      return (molResult) this.Invoke(nameof (setProfile), new object[5]
      {
        (object) sessionId,
        (object) firstName,
        (object) lastName,
        (object) phone,
        (object) email
      })[0];
    }

    public IAsyncResult BeginsetProfile(
      string sessionId,
      string firstName,
      string lastName,
      string phone,
      string email,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("setProfile", new object[5]
      {
        (object) sessionId,
        (object) firstName,
        (object) lastName,
        (object) phone,
        (object) email
      }, callback, asyncState);
    }

    public molResult EndsetProfile(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void setProfileAsync(
      string sessionId,
      string firstName,
      string lastName,
      string phone,
      string email)
    {
      this.setProfileAsync(sessionId, firstName, lastName, phone, email, (object) null);
    }

    public void setProfileAsync(
      string sessionId,
      string firstName,
      string lastName,
      string phone,
      string email,
      object userState)
    {
      if (this.setProfileOperationCompleted == null)
        this.setProfileOperationCompleted = new SendOrPostCallback(this.OnsetProfileOperationCompleted);
      this.InvokeAsync("setProfile", new object[5]
      {
        (object) sessionId,
        (object) firstName,
        (object) lastName,
        (object) phone,
        (object) email
      }, this.setProfileOperationCompleted, userState);
    }

    private void OnsetProfileOperationCompleted(object arg)
    {
      if (this.setProfileCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.setProfileCompleted((object) this, new setProfileCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult verifyUserExists([XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId, [XmlElement(Form = XmlSchemaForm.Unqualified)] string userName)
    {
      return (molResult) this.Invoke(nameof (verifyUserExists), new object[2]
      {
        (object) sessionId,
        (object) userName
      })[0];
    }

    public IAsyncResult BeginverifyUserExists(
      string sessionId,
      string userName,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("verifyUserExists", new object[2]
      {
        (object) sessionId,
        (object) userName
      }, callback, asyncState);
    }

    public molResult EndverifyUserExists(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void verifyUserExistsAsync(string sessionId, string userName)
    {
      this.verifyUserExistsAsync(sessionId, userName, (object) null);
    }

    public void verifyUserExistsAsync(string sessionId, string userName, object userState)
    {
      if (this.verifyUserExistsOperationCompleted == null)
        this.verifyUserExistsOperationCompleted = new SendOrPostCallback(this.OnverifyUserExistsOperationCompleted);
      this.InvokeAsync("verifyUserExists", new object[2]
      {
        (object) sessionId,
        (object) userName
      }, this.verifyUserExistsOperationCompleted, userState);
    }

    private void OnverifyUserExistsOperationCompleted(object arg)
    {
      if (this.verifyUserExistsCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.verifyUserExistsCompleted((object) this, new verifyUserExistsCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public applicationFieldListResult getApplicationFields(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] int appId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] bool excludeMaskedValues)
    {
      return (applicationFieldListResult) this.Invoke(nameof (getApplicationFields), new object[3]
      {
        (object) sessionId,
        (object) appId,
        (object) excludeMaskedValues
      })[0];
    }

    public IAsyncResult BegingetApplicationFields(
      string sessionId,
      int appId,
      bool excludeMaskedValues,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("getApplicationFields", new object[3]
      {
        (object) sessionId,
        (object) appId,
        (object) excludeMaskedValues
      }, callback, asyncState);
    }

    public applicationFieldListResult EndgetApplicationFields(
      IAsyncResult asyncResult)
    {
      return (applicationFieldListResult) this.EndInvoke(asyncResult)[0];
    }

    public void getApplicationFieldsAsync(string sessionId, int appId, bool excludeMaskedValues)
    {
      this.getApplicationFieldsAsync(sessionId, appId, excludeMaskedValues, (object) null);
    }

    public void getApplicationFieldsAsync(
      string sessionId,
      int appId,
      bool excludeMaskedValues,
      object userState)
    {
      if (this.getApplicationFieldsOperationCompleted == null)
        this.getApplicationFieldsOperationCompleted = new SendOrPostCallback(this.OngetApplicationFieldsOperationCompleted);
      this.InvokeAsync("getApplicationFields", new object[3]
      {
        (object) sessionId,
        (object) appId,
        (object) excludeMaskedValues
      }, this.getApplicationFieldsOperationCompleted, userState);
    }

    private void OngetApplicationFieldsOperationCompleted(object arg)
    {
      if (this.getApplicationFieldsCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.getApplicationFieldsCompleted((object) this, new getApplicationFieldsCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public applicationFieldListResult getApplicationFieldsForUser(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] int userId,
      [XmlElement(Form = XmlSchemaForm.Unqualified), XmlIgnore] bool userIdSpecified,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] int appId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] bool excludeMaskedValues)
    {
      return (applicationFieldListResult) this.Invoke(nameof (getApplicationFieldsForUser), new object[5]
      {
        (object) sessionId,
        (object) userId,
        (object) userIdSpecified,
        (object) appId,
        (object) excludeMaskedValues
      })[0];
    }

    public IAsyncResult BegingetApplicationFieldsForUser(
      string sessionId,
      int userId,
      bool userIdSpecified,
      int appId,
      bool excludeMaskedValues,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("getApplicationFieldsForUser", new object[5]
      {
        (object) sessionId,
        (object) userId,
        (object) userIdSpecified,
        (object) appId,
        (object) excludeMaskedValues
      }, callback, asyncState);
    }

    public applicationFieldListResult EndgetApplicationFieldsForUser(
      IAsyncResult asyncResult)
    {
      return (applicationFieldListResult) this.EndInvoke(asyncResult)[0];
    }

    public void getApplicationFieldsForUserAsync(
      string sessionId,
      int userId,
      bool userIdSpecified,
      int appId,
      bool excludeMaskedValues)
    {
      this.getApplicationFieldsForUserAsync(sessionId, userId, userIdSpecified, appId, excludeMaskedValues, (object) null);
    }

    public void getApplicationFieldsForUserAsync(
      string sessionId,
      int userId,
      bool userIdSpecified,
      int appId,
      bool excludeMaskedValues,
      object userState)
    {
      if (this.getApplicationFieldsForUserOperationCompleted == null)
        this.getApplicationFieldsForUserOperationCompleted = new SendOrPostCallback(this.OngetApplicationFieldsForUserOperationCompleted);
      this.InvokeAsync("getApplicationFieldsForUser", new object[5]
      {
        (object) sessionId,
        (object) userId,
        (object) userIdSpecified,
        (object) appId,
        (object) excludeMaskedValues
      }, this.getApplicationFieldsForUserOperationCompleted, userState);
    }

    private void OngetApplicationFieldsForUserOperationCompleted(object arg)
    {
      if (this.getApplicationFieldsForUserCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.getApplicationFieldsForUserCompleted((object) this, new getApplicationFieldsForUserCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult setApplicationFields(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] int appId,
      [XmlElement("fields", Form = XmlSchemaForm.Unqualified)] applicationField[] fields)
    {
      return (molResult) this.Invoke(nameof (setApplicationFields), new object[3]
      {
        (object) sessionId,
        (object) appId,
        (object) fields
      })[0];
    }

    public IAsyncResult BeginsetApplicationFields(
      string sessionId,
      int appId,
      applicationField[] fields,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("setApplicationFields", new object[3]
      {
        (object) sessionId,
        (object) appId,
        (object) fields
      }, callback, asyncState);
    }

    public molResult EndsetApplicationFields(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void setApplicationFieldsAsync(string sessionId, int appId, applicationField[] fields)
    {
      this.setApplicationFieldsAsync(sessionId, appId, fields, (object) null);
    }

    public void setApplicationFieldsAsync(
      string sessionId,
      int appId,
      applicationField[] fields,
      object userState)
    {
      if (this.setApplicationFieldsOperationCompleted == null)
        this.setApplicationFieldsOperationCompleted = new SendOrPostCallback(this.OnsetApplicationFieldsOperationCompleted);
      this.InvokeAsync("setApplicationFields", new object[3]
      {
        (object) sessionId,
        (object) appId,
        (object) fields
      }, this.setApplicationFieldsOperationCompleted, userState);
    }

    private void OnsetApplicationFieldsOperationCompleted(object arg)
    {
      if (this.setApplicationFieldsCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.setApplicationFieldsCompleted((object) this, new setApplicationFieldsCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult setApplicationFieldsForUser(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] int userId,
      [XmlElement(Form = XmlSchemaForm.Unqualified), XmlIgnore] bool userIdSpecified,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] int appId,
      [XmlElement("fields", Form = XmlSchemaForm.Unqualified)] applicationField[] fields)
    {
      return (molResult) this.Invoke(nameof (setApplicationFieldsForUser), new object[5]
      {
        (object) sessionId,
        (object) userId,
        (object) userIdSpecified,
        (object) appId,
        (object) fields
      })[0];
    }

    public IAsyncResult BeginsetApplicationFieldsForUser(
      string sessionId,
      int userId,
      bool userIdSpecified,
      int appId,
      applicationField[] fields,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("setApplicationFieldsForUser", new object[5]
      {
        (object) sessionId,
        (object) userId,
        (object) userIdSpecified,
        (object) appId,
        (object) fields
      }, callback, asyncState);
    }

    public molResult EndsetApplicationFieldsForUser(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void setApplicationFieldsForUserAsync(
      string sessionId,
      int userId,
      bool userIdSpecified,
      int appId,
      applicationField[] fields)
    {
      this.setApplicationFieldsForUserAsync(sessionId, userId, userIdSpecified, appId, fields, (object) null);
    }

    public void setApplicationFieldsForUserAsync(
      string sessionId,
      int userId,
      bool userIdSpecified,
      int appId,
      applicationField[] fields,
      object userState)
    {
      if (this.setApplicationFieldsForUserOperationCompleted == null)
        this.setApplicationFieldsForUserOperationCompleted = new SendOrPostCallback(this.OnsetApplicationFieldsForUserOperationCompleted);
      this.InvokeAsync("setApplicationFieldsForUser", new object[5]
      {
        (object) sessionId,
        (object) userId,
        (object) userIdSpecified,
        (object) appId,
        (object) fields
      }, this.setApplicationFieldsForUserOperationCompleted, userState);
    }

    private void OnsetApplicationFieldsForUserOperationCompleted(object arg)
    {
      if (this.setApplicationFieldsForUserCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.setApplicationFieldsForUserCompleted((object) this, new setApplicationFieldsForUserCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult addAndActivateUser(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string userName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string firstName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string lastName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string email,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string phone,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] bool isAdmin,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string password,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] bool sendEmail)
    {
      return (molResult) this.Invoke(nameof (addAndActivateUser), new object[9]
      {
        (object) sessionId,
        (object) userName,
        (object) firstName,
        (object) lastName,
        (object) email,
        (object) phone,
        (object) isAdmin,
        (object) password,
        (object) sendEmail
      })[0];
    }

    public IAsyncResult BeginaddAndActivateUser(
      string sessionId,
      string userName,
      string firstName,
      string lastName,
      string email,
      string phone,
      bool isAdmin,
      string password,
      bool sendEmail,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("addAndActivateUser", new object[9]
      {
        (object) sessionId,
        (object) userName,
        (object) firstName,
        (object) lastName,
        (object) email,
        (object) phone,
        (object) isAdmin,
        (object) password,
        (object) sendEmail
      }, callback, asyncState);
    }

    public molResult EndaddAndActivateUser(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void addAndActivateUserAsync(
      string sessionId,
      string userName,
      string firstName,
      string lastName,
      string email,
      string phone,
      bool isAdmin,
      string password,
      bool sendEmail)
    {
      this.addAndActivateUserAsync(sessionId, userName, firstName, lastName, email, phone, isAdmin, password, sendEmail, (object) null);
    }

    public void addAndActivateUserAsync(
      string sessionId,
      string userName,
      string firstName,
      string lastName,
      string email,
      string phone,
      bool isAdmin,
      string password,
      bool sendEmail,
      object userState)
    {
      if (this.addAndActivateUserOperationCompleted == null)
        this.addAndActivateUserOperationCompleted = new SendOrPostCallback(this.OnaddAndActivateUserOperationCompleted);
      this.InvokeAsync("addAndActivateUser", new object[9]
      {
        (object) sessionId,
        (object) userName,
        (object) firstName,
        (object) lastName,
        (object) email,
        (object) phone,
        (object) isAdmin,
        (object) password,
        (object) sendEmail
      }, this.addAndActivateUserOperationCompleted, userState);
    }

    private void OnaddAndActivateUserOperationCompleted(object arg)
    {
      if (this.addAndActivateUserCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.addAndActivateUserCompleted((object) this, new addAndActivateUserCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult getAssertion([XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId, [XmlElement(Form = XmlSchemaForm.Unqualified)] int appId)
    {
      return (molResult) this.Invoke(nameof (getAssertion), new object[2]
      {
        (object) sessionId,
        (object) appId
      })[0];
    }

    public IAsyncResult BegingetAssertion(
      string sessionId,
      int appId,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("getAssertion", new object[2]
      {
        (object) sessionId,
        (object) appId
      }, callback, asyncState);
    }

    public molResult EndgetAssertion(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void getAssertionAsync(string sessionId, int appId)
    {
      this.getAssertionAsync(sessionId, appId, (object) null);
    }

    public void getAssertionAsync(string sessionId, int appId, object userState)
    {
      if (this.getAssertionOperationCompleted == null)
        this.getAssertionOperationCompleted = new SendOrPostCallback(this.OngetAssertionOperationCompleted);
      this.InvokeAsync("getAssertion", new object[2]
      {
        (object) sessionId,
        (object) appId
      }, this.getAssertionOperationCompleted, userState);
    }

    private void OngetAssertionOperationCompleted(object arg)
    {
      if (this.getAssertionCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.getAssertionCompleted((object) this, new getAssertionCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult getAssertionForUser([XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId, [XmlElement(Form = XmlSchemaForm.Unqualified)] string userName, [XmlElement(Form = XmlSchemaForm.Unqualified)] int appId)
    {
      return (molResult) this.Invoke(nameof (getAssertionForUser), new object[3]
      {
        (object) sessionId,
        (object) userName,
        (object) appId
      })[0];
    }

    public IAsyncResult BegingetAssertionForUser(
      string sessionId,
      string userName,
      int appId,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("getAssertionForUser", new object[3]
      {
        (object) sessionId,
        (object) userName,
        (object) appId
      }, callback, asyncState);
    }

    public molResult EndgetAssertionForUser(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void getAssertionForUserAsync(string sessionId, string userName, int appId)
    {
      this.getAssertionForUserAsync(sessionId, userName, appId, (object) null);
    }

    public void getAssertionForUserAsync(
      string sessionId,
      string userName,
      int appId,
      object userState)
    {
      if (this.getAssertionForUserOperationCompleted == null)
        this.getAssertionForUserOperationCompleted = new SendOrPostCallback(this.OngetAssertionForUserOperationCompleted);
      this.InvokeAsync("getAssertionForUser", new object[3]
      {
        (object) sessionId,
        (object) userName,
        (object) appId
      }, this.getAssertionForUserOperationCompleted, userState);
    }

    private void OngetAssertionForUserOperationCompleted(object arg)
    {
      if (this.getAssertionForUserCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.getAssertionForUserCompleted((object) this, new getAssertionForUserCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult getAssertionForAnyUser(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string userName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] int appId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string nameIdFormat)
    {
      return (molResult) this.Invoke(nameof (getAssertionForAnyUser), new object[4]
      {
        (object) sessionId,
        (object) userName,
        (object) appId,
        (object) nameIdFormat
      })[0];
    }

    public IAsyncResult BegingetAssertionForAnyUser(
      string sessionId,
      string userName,
      int appId,
      string nameIdFormat,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("getAssertionForAnyUser", new object[4]
      {
        (object) sessionId,
        (object) userName,
        (object) appId,
        (object) nameIdFormat
      }, callback, asyncState);
    }

    public molResult EndgetAssertionForAnyUser(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void getAssertionForAnyUserAsync(
      string sessionId,
      string userName,
      int appId,
      string nameIdFormat)
    {
      this.getAssertionForAnyUserAsync(sessionId, userName, appId, nameIdFormat, (object) null);
    }

    public void getAssertionForAnyUserAsync(
      string sessionId,
      string userName,
      int appId,
      string nameIdFormat,
      object userState)
    {
      if (this.getAssertionForAnyUserOperationCompleted == null)
        this.getAssertionForAnyUserOperationCompleted = new SendOrPostCallback(this.OngetAssertionForAnyUserOperationCompleted);
      this.InvokeAsync("getAssertionForAnyUser", new object[4]
      {
        (object) sessionId,
        (object) userName,
        (object) appId,
        (object) nameIdFormat
      }, this.getAssertionForAnyUserOperationCompleted, userState);
    }

    private void OngetAssertionForAnyUserOperationCompleted(object arg)
    {
      if (this.getAssertionForAnyUserCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.getAssertionForAnyUserCompleted((object) this, new getAssertionForAnyUserCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult getAssertionForAnyUserWithAttributes(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string userName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] int appId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string nameIdFormat,
      [XmlElement("customAttributes", Form = XmlSchemaForm.Unqualified)] nameValuePair[] customAttributes)
    {
      return (molResult) this.Invoke(nameof (getAssertionForAnyUserWithAttributes), new object[5]
      {
        (object) sessionId,
        (object) userName,
        (object) appId,
        (object) nameIdFormat,
        (object) customAttributes
      })[0];
    }

    public IAsyncResult BegingetAssertionForAnyUserWithAttributes(
      string sessionId,
      string userName,
      int appId,
      string nameIdFormat,
      nameValuePair[] customAttributes,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("getAssertionForAnyUserWithAttributes", new object[5]
      {
        (object) sessionId,
        (object) userName,
        (object) appId,
        (object) nameIdFormat,
        (object) customAttributes
      }, callback, asyncState);
    }

    public molResult EndgetAssertionForAnyUserWithAttributes(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void getAssertionForAnyUserWithAttributesAsync(
      string sessionId,
      string userName,
      int appId,
      string nameIdFormat,
      nameValuePair[] customAttributes)
    {
      this.getAssertionForAnyUserWithAttributesAsync(sessionId, userName, appId, nameIdFormat, customAttributes, (object) null);
    }

    public void getAssertionForAnyUserWithAttributesAsync(
      string sessionId,
      string userName,
      int appId,
      string nameIdFormat,
      nameValuePair[] customAttributes,
      object userState)
    {
      if (this.getAssertionForAnyUserWithAttributesOperationCompleted == null)
        this.getAssertionForAnyUserWithAttributesOperationCompleted = new SendOrPostCallback(this.OngetAssertionForAnyUserWithAttributesOperationCompleted);
      this.InvokeAsync("getAssertionForAnyUserWithAttributes", new object[5]
      {
        (object) sessionId,
        (object) userName,
        (object) appId,
        (object) nameIdFormat,
        (object) customAttributes
      }, this.getAssertionForAnyUserWithAttributesOperationCompleted, userState);
    }

    private void OngetAssertionForAnyUserWithAttributesOperationCompleted(object arg)
    {
      if (this.getAssertionForAnyUserWithAttributesCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.getAssertionForAnyUserWithAttributesCompleted((object) this, new getAssertionForAnyUserWithAttributesCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult validateAssertionById(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string samlResponse,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string recipientName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] int idpId)
    {
      return (molResult) this.Invoke(nameof (validateAssertionById), new object[4]
      {
        (object) sessionId,
        (object) samlResponse,
        (object) recipientName,
        (object) idpId
      })[0];
    }

    public IAsyncResult BeginvalidateAssertionById(
      string sessionId,
      string samlResponse,
      string recipientName,
      int idpId,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("validateAssertionById", new object[4]
      {
        (object) sessionId,
        (object) samlResponse,
        (object) recipientName,
        (object) idpId
      }, callback, asyncState);
    }

    public molResult EndvalidateAssertionById(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void validateAssertionByIdAsync(
      string sessionId,
      string samlResponse,
      string recipientName,
      int idpId)
    {
      this.validateAssertionByIdAsync(sessionId, samlResponse, recipientName, idpId, (object) null);
    }

    public void validateAssertionByIdAsync(
      string sessionId,
      string samlResponse,
      string recipientName,
      int idpId,
      object userState)
    {
      if (this.validateAssertionByIdOperationCompleted == null)
        this.validateAssertionByIdOperationCompleted = new SendOrPostCallback(this.OnvalidateAssertionByIdOperationCompleted);
      this.InvokeAsync("validateAssertionById", new object[4]
      {
        (object) sessionId,
        (object) samlResponse,
        (object) recipientName,
        (object) idpId
      }, this.validateAssertionByIdOperationCompleted, userState);
    }

    private void OnvalidateAssertionByIdOperationCompleted(object arg)
    {
      if (this.validateAssertionByIdCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.validateAssertionByIdCompleted((object) this, new validateAssertionByIdCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult validateAssertionByName(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string samlResponse,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string recipientName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string idpName)
    {
      return (molResult) this.Invoke(nameof (validateAssertionByName), new object[4]
      {
        (object) sessionId,
        (object) samlResponse,
        (object) recipientName,
        (object) idpName
      })[0];
    }

    public IAsyncResult BeginvalidateAssertionByName(
      string sessionId,
      string samlResponse,
      string recipientName,
      string idpName,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("validateAssertionByName", new object[4]
      {
        (object) sessionId,
        (object) samlResponse,
        (object) recipientName,
        (object) idpName
      }, callback, asyncState);
    }

    public molResult EndvalidateAssertionByName(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void validateAssertionByNameAsync(
      string sessionId,
      string samlResponse,
      string recipientName,
      string idpName)
    {
      this.validateAssertionByNameAsync(sessionId, samlResponse, recipientName, idpName, (object) null);
    }

    public void validateAssertionByNameAsync(
      string sessionId,
      string samlResponse,
      string recipientName,
      string idpName,
      object userState)
    {
      if (this.validateAssertionByNameOperationCompleted == null)
        this.validateAssertionByNameOperationCompleted = new SendOrPostCallback(this.OnvalidateAssertionByNameOperationCompleted);
      this.InvokeAsync("validateAssertionByName", new object[4]
      {
        (object) sessionId,
        (object) samlResponse,
        (object) recipientName,
        (object) idpName
      }, this.validateAssertionByNameOperationCompleted, userState);
    }

    private void OnvalidateAssertionByNameOperationCompleted(object arg)
    {
      if (this.validateAssertionByNameCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.validateAssertionByNameCompleted((object) this, new validateAssertionByNameCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public identityProviderListResult getIdentityProviders(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId)
    {
      return (identityProviderListResult) this.Invoke(nameof (getIdentityProviders), new object[1]
      {
        (object) sessionId
      })[0];
    }

    public IAsyncResult BegingetIdentityProviders(
      string sessionId,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("getIdentityProviders", new object[1]
      {
        (object) sessionId
      }, callback, asyncState);
    }

    public identityProviderListResult EndgetIdentityProviders(
      IAsyncResult asyncResult)
    {
      return (identityProviderListResult) this.EndInvoke(asyncResult)[0];
    }

    public void getIdentityProvidersAsync(string sessionId)
    {
      this.getIdentityProvidersAsync(sessionId, (object) null);
    }

    public void getIdentityProvidersAsync(string sessionId, object userState)
    {
      if (this.getIdentityProvidersOperationCompleted == null)
        this.getIdentityProvidersOperationCompleted = new SendOrPostCallback(this.OngetIdentityProvidersOperationCompleted);
      this.InvokeAsync("getIdentityProviders", new object[1]
      {
        (object) sessionId
      }, this.getIdentityProvidersOperationCompleted, userState);
    }

    private void OngetIdentityProvidersOperationCompleted(object arg)
    {
      if (this.getIdentityProvidersCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.getIdentityProvidersCompleted((object) this, new getIdentityProvidersCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public federationMapListResult getFederationMap([XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId)
    {
      return (federationMapListResult) this.Invoke(nameof (getFederationMap), new object[1]
      {
        (object) sessionId
      })[0];
    }

    public IAsyncResult BegingetFederationMap(
      string sessionId,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("getFederationMap", new object[1]
      {
        (object) sessionId
      }, callback, asyncState);
    }

    public federationMapListResult EndgetFederationMap(
      IAsyncResult asyncResult)
    {
      return (federationMapListResult) this.EndInvoke(asyncResult)[0];
    }

    public void getFederationMapAsync(string sessionId)
    {
      this.getFederationMapAsync(sessionId, (object) null);
    }

    public void getFederationMapAsync(string sessionId, object userState)
    {
      if (this.getFederationMapOperationCompleted == null)
        this.getFederationMapOperationCompleted = new SendOrPostCallback(this.OngetFederationMapOperationCompleted);
      this.InvokeAsync("getFederationMap", new object[1]
      {
        (object) sessionId
      }, this.getFederationMapOperationCompleted, userState);
    }

    private void OngetFederationMapOperationCompleted(object arg)
    {
      if (this.getFederationMapCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.getFederationMapCompleted((object) this, new getFederationMapCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult deleteFederationMap([XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId, [XmlElement(Form = XmlSchemaForm.Unqualified)] int mapId)
    {
      return (molResult) this.Invoke(nameof (deleteFederationMap), new object[2]
      {
        (object) sessionId,
        (object) mapId
      })[0];
    }

    public IAsyncResult BegindeleteFederationMap(
      string sessionId,
      int mapId,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("deleteFederationMap", new object[2]
      {
        (object) sessionId,
        (object) mapId
      }, callback, asyncState);
    }

    public molResult EnddeleteFederationMap(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void deleteFederationMapAsync(string sessionId, int mapId)
    {
      this.deleteFederationMapAsync(sessionId, mapId, (object) null);
    }

    public void deleteFederationMapAsync(string sessionId, int mapId, object userState)
    {
      if (this.deleteFederationMapOperationCompleted == null)
        this.deleteFederationMapOperationCompleted = new SendOrPostCallback(this.OndeleteFederationMapOperationCompleted);
      this.InvokeAsync("deleteFederationMap", new object[2]
      {
        (object) sessionId,
        (object) mapId
      }, this.deleteFederationMapOperationCompleted, userState);
    }

    private void OndeleteFederationMapOperationCompleted(object arg)
    {
      if (this.deleteFederationMapCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.deleteFederationMapCompleted((object) this, new deleteFederationMapCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public serviceProviderListResult getServiceProviders([XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId)
    {
      return (serviceProviderListResult) this.Invoke(nameof (getServiceProviders), new object[1]
      {
        (object) sessionId
      })[0];
    }

    public IAsyncResult BegingetServiceProviders(
      string sessionId,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("getServiceProviders", new object[1]
      {
        (object) sessionId
      }, callback, asyncState);
    }

    public serviceProviderListResult EndgetServiceProviders(
      IAsyncResult asyncResult)
    {
      return (serviceProviderListResult) this.EndInvoke(asyncResult)[0];
    }

    public void getServiceProvidersAsync(string sessionId)
    {
      this.getServiceProvidersAsync(sessionId, (object) null);
    }

    public void getServiceProvidersAsync(string sessionId, object userState)
    {
      if (this.getServiceProvidersOperationCompleted == null)
        this.getServiceProvidersOperationCompleted = new SendOrPostCallback(this.OngetServiceProvidersOperationCompleted);
      this.InvokeAsync("getServiceProviders", new object[1]
      {
        (object) sessionId
      }, this.getServiceProvidersOperationCompleted, userState);
    }

    private void OngetServiceProvidersOperationCompleted(object arg)
    {
      if (this.getServiceProvidersCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.getServiceProvidersCompleted((object) this, new getServiceProvidersCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult modifyServiceProvider(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] int spId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string name,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string description,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string postUrl,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string targetUrl,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string recipient,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string audience,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] int lifetime,
      [XmlElement(Form = XmlSchemaForm.Unqualified), XmlIgnore] bool lifetimeSpecified,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string metaDataUrl,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string metaData,
      [XmlElement("attributes", Form = XmlSchemaForm.Unqualified)] attributeMapping[] attributes)
    {
      return (molResult) this.Invoke(nameof (modifyServiceProvider), new object[13]
      {
        (object) sessionId,
        (object) spId,
        (object) name,
        (object) description,
        (object) postUrl,
        (object) targetUrl,
        (object) recipient,
        (object) audience,
        (object) lifetime,
        (object) lifetimeSpecified,
        (object) metaDataUrl,
        (object) metaData,
        (object) attributes
      })[0];
    }

    public IAsyncResult BeginmodifyServiceProvider(
      string sessionId,
      int spId,
      string name,
      string description,
      string postUrl,
      string targetUrl,
      string recipient,
      string audience,
      int lifetime,
      bool lifetimeSpecified,
      string metaDataUrl,
      string metaData,
      attributeMapping[] attributes,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("modifyServiceProvider", new object[13]
      {
        (object) sessionId,
        (object) spId,
        (object) name,
        (object) description,
        (object) postUrl,
        (object) targetUrl,
        (object) recipient,
        (object) audience,
        (object) lifetime,
        (object) lifetimeSpecified,
        (object) metaDataUrl,
        (object) metaData,
        (object) attributes
      }, callback, asyncState);
    }

    public molResult EndmodifyServiceProvider(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void modifyServiceProviderAsync(
      string sessionId,
      int spId,
      string name,
      string description,
      string postUrl,
      string targetUrl,
      string recipient,
      string audience,
      int lifetime,
      bool lifetimeSpecified,
      string metaDataUrl,
      string metaData,
      attributeMapping[] attributes)
    {
      this.modifyServiceProviderAsync(sessionId, spId, name, description, postUrl, targetUrl, recipient, audience, lifetime, lifetimeSpecified, metaDataUrl, metaData, attributes, (object) null);
    }

    public void modifyServiceProviderAsync(
      string sessionId,
      int spId,
      string name,
      string description,
      string postUrl,
      string targetUrl,
      string recipient,
      string audience,
      int lifetime,
      bool lifetimeSpecified,
      string metaDataUrl,
      string metaData,
      attributeMapping[] attributes,
      object userState)
    {
      if (this.modifyServiceProviderOperationCompleted == null)
        this.modifyServiceProviderOperationCompleted = new SendOrPostCallback(this.OnmodifyServiceProviderOperationCompleted);
      this.InvokeAsync("modifyServiceProvider", new object[13]
      {
        (object) sessionId,
        (object) spId,
        (object) name,
        (object) description,
        (object) postUrl,
        (object) targetUrl,
        (object) recipient,
        (object) audience,
        (object) lifetime,
        (object) lifetimeSpecified,
        (object) metaDataUrl,
        (object) metaData,
        (object) attributes
      }, this.modifyServiceProviderOperationCompleted, userState);
    }

    private void OnmodifyServiceProviderOperationCompleted(object arg)
    {
      if (this.modifyServiceProviderCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.modifyServiceProviderCompleted((object) this, new modifyServiceProviderCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult addChildOrganization(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string orgName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string userName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string firstName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string lastName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string email,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string phone)
    {
      return (molResult) this.Invoke(nameof (addChildOrganization), new object[7]
      {
        (object) sessionId,
        (object) orgName,
        (object) userName,
        (object) firstName,
        (object) lastName,
        (object) email,
        (object) phone
      })[0];
    }

    public IAsyncResult BeginaddChildOrganization(
      string sessionId,
      string orgName,
      string userName,
      string firstName,
      string lastName,
      string email,
      string phone,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("addChildOrganization", new object[7]
      {
        (object) sessionId,
        (object) orgName,
        (object) userName,
        (object) firstName,
        (object) lastName,
        (object) email,
        (object) phone
      }, callback, asyncState);
    }

    public molResult EndaddChildOrganization(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void addChildOrganizationAsync(
      string sessionId,
      string orgName,
      string userName,
      string firstName,
      string lastName,
      string email,
      string phone)
    {
      this.addChildOrganizationAsync(sessionId, orgName, userName, firstName, lastName, email, phone, (object) null);
    }

    public void addChildOrganizationAsync(
      string sessionId,
      string orgName,
      string userName,
      string firstName,
      string lastName,
      string email,
      string phone,
      object userState)
    {
      if (this.addChildOrganizationOperationCompleted == null)
        this.addChildOrganizationOperationCompleted = new SendOrPostCallback(this.OnaddChildOrganizationOperationCompleted);
      this.InvokeAsync("addChildOrganization", new object[7]
      {
        (object) sessionId,
        (object) orgName,
        (object) userName,
        (object) firstName,
        (object) lastName,
        (object) email,
        (object) phone
      }, this.addChildOrganizationOperationCompleted, userState);
    }

    private void OnaddChildOrganizationOperationCompleted(object arg)
    {
      if (this.addChildOrganizationCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.addChildOrganizationCompleted((object) this, new addChildOrganizationCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public orgResult addOrganization(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string captcha,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string orgName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string userName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string firstName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string lastName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string email,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string phone,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string password,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string referrerCode,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string promoCode)
    {
      return (orgResult) this.Invoke(nameof (addOrganization), new object[11]
      {
        (object) sessionId,
        (object) captcha,
        (object) orgName,
        (object) userName,
        (object) firstName,
        (object) lastName,
        (object) email,
        (object) phone,
        (object) password,
        (object) referrerCode,
        (object) promoCode
      })[0];
    }

    public IAsyncResult BeginaddOrganization(
      string sessionId,
      string captcha,
      string orgName,
      string userName,
      string firstName,
      string lastName,
      string email,
      string phone,
      string password,
      string referrerCode,
      string promoCode,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("addOrganization", new object[11]
      {
        (object) sessionId,
        (object) captcha,
        (object) orgName,
        (object) userName,
        (object) firstName,
        (object) lastName,
        (object) email,
        (object) phone,
        (object) password,
        (object) referrerCode,
        (object) promoCode
      }, callback, asyncState);
    }

    public orgResult EndaddOrganization(IAsyncResult asyncResult)
    {
      return (orgResult) this.EndInvoke(asyncResult)[0];
    }

    public void addOrganizationAsync(
      string sessionId,
      string captcha,
      string orgName,
      string userName,
      string firstName,
      string lastName,
      string email,
      string phone,
      string password,
      string referrerCode,
      string promoCode)
    {
      this.addOrganizationAsync(sessionId, captcha, orgName, userName, firstName, lastName, email, phone, password, referrerCode, promoCode, (object) null);
    }

    public void addOrganizationAsync(
      string sessionId,
      string captcha,
      string orgName,
      string userName,
      string firstName,
      string lastName,
      string email,
      string phone,
      string password,
      string referrerCode,
      string promoCode,
      object userState)
    {
      if (this.addOrganizationOperationCompleted == null)
        this.addOrganizationOperationCompleted = new SendOrPostCallback(this.OnaddOrganizationOperationCompleted);
      this.InvokeAsync("addOrganization", new object[11]
      {
        (object) sessionId,
        (object) captcha,
        (object) orgName,
        (object) userName,
        (object) firstName,
        (object) lastName,
        (object) email,
        (object) phone,
        (object) password,
        (object) referrerCode,
        (object) promoCode
      }, this.addOrganizationOperationCompleted, userState);
    }

    private void OnaddOrganizationOperationCompleted(object arg)
    {
      if (this.addOrganizationCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.addOrganizationCompleted((object) this, new addOrganizationCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public orgResult getCaptchaSession()
    {
      return (orgResult) this.Invoke(nameof (getCaptchaSession), new object[0])[0];
    }

    public IAsyncResult BegingetCaptchaSession(
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("getCaptchaSession", new object[0], callback, asyncState);
    }

    public orgResult EndgetCaptchaSession(IAsyncResult asyncResult)
    {
      return (orgResult) this.EndInvoke(asyncResult)[0];
    }

    public void getCaptchaSessionAsync()
    {
      this.getCaptchaSessionAsync((object) null);
    }

    public void getCaptchaSessionAsync(object userState)
    {
      if (this.getCaptchaSessionOperationCompleted == null)
        this.getCaptchaSessionOperationCompleted = new SendOrPostCallback(this.OngetCaptchaSessionOperationCompleted);
      this.InvokeAsync("getCaptchaSession", new object[0], this.getCaptchaSessionOperationCompleted, userState);
    }

    private void OngetCaptchaSessionOperationCompleted(object arg)
    {
      if (this.getCaptchaSessionCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.getCaptchaSessionCompleted((object) this, new getCaptchaSessionCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult validateNewOrgName([XmlElement(Form = XmlSchemaForm.Unqualified)] string orgName)
    {
      return (molResult) this.Invoke(nameof (validateNewOrgName), new object[1]
      {
        (object) orgName
      })[0];
    }

    public IAsyncResult BeginvalidateNewOrgName(
      string orgName,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("validateNewOrgName", new object[1]
      {
        (object) orgName
      }, callback, asyncState);
    }

    public molResult EndvalidateNewOrgName(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void validateNewOrgNameAsync(string orgName)
    {
      this.validateNewOrgNameAsync(orgName, (object) null);
    }

    public void validateNewOrgNameAsync(string orgName, object userState)
    {
      if (this.validateNewOrgNameOperationCompleted == null)
        this.validateNewOrgNameOperationCompleted = new SendOrPostCallback(this.OnvalidateNewOrgNameOperationCompleted);
      this.InvokeAsync("validateNewOrgName", new object[1]
      {
        (object) orgName
      }, this.validateNewOrgNameOperationCompleted, userState);
    }

    private void OnvalidateNewOrgNameOperationCompleted(object arg)
    {
      if (this.validateNewOrgNameCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.validateNewOrgNameCompleted((object) this, new validateNewOrgNameCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public tokenResult validateToken(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string userName,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string token,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string recipientName)
    {
      return (tokenResult) this.Invoke(nameof (validateToken), new object[3]
      {
        (object) userName,
        (object) token,
        (object) recipientName
      })[0];
    }

    public IAsyncResult BeginvalidateToken(
      string userName,
      string token,
      string recipientName,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("validateToken", new object[3]
      {
        (object) userName,
        (object) token,
        (object) recipientName
      }, callback, asyncState);
    }

    public tokenResult EndvalidateToken(IAsyncResult asyncResult)
    {
      return (tokenResult) this.EndInvoke(asyncResult)[0];
    }

    public void validateTokenAsync(string userName, string token, string recipientName)
    {
      this.validateTokenAsync(userName, token, recipientName, (object) null);
    }

    public void validateTokenAsync(
      string userName,
      string token,
      string recipientName,
      object userState)
    {
      if (this.validateTokenOperationCompleted == null)
        this.validateTokenOperationCompleted = new SendOrPostCallback(this.OnvalidateTokenOperationCompleted);
      this.InvokeAsync("validateToken", new object[3]
      {
        (object) userName,
        (object) token,
        (object) recipientName
      }, this.validateTokenOperationCompleted, userState);
    }

    private void OnvalidateTokenOperationCompleted(object arg)
    {
      if (this.validateTokenCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.validateTokenCompleted((object) this, new validateTokenCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public eventLogResult getAuditReport(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId,
      [XmlElement("users", Form = XmlSchemaForm.Unqualified)] string[] users,
      [XmlElement("eventTypes", Form = XmlSchemaForm.Unqualified)] string[] eventTypes,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] DateTime startDate,
      [XmlElement(Form = XmlSchemaForm.Unqualified), XmlIgnore] bool startDateSpecified,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] DateTime endDate,
      [XmlElement(Form = XmlSchemaForm.Unqualified), XmlIgnore] bool endDateSpecified)
    {
      return (eventLogResult) this.Invoke(nameof (getAuditReport), new object[7]
      {
        (object) sessionId,
        (object) users,
        (object) eventTypes,
        (object) startDate,
        (object) startDateSpecified,
        (object) endDate,
        (object) endDateSpecified
      })[0];
    }

    public IAsyncResult BegingetAuditReport(
      string sessionId,
      string[] users,
      string[] eventTypes,
      DateTime startDate,
      bool startDateSpecified,
      DateTime endDate,
      bool endDateSpecified,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("getAuditReport", new object[7]
      {
        (object) sessionId,
        (object) users,
        (object) eventTypes,
        (object) startDate,
        (object) startDateSpecified,
        (object) endDate,
        (object) endDateSpecified
      }, callback, asyncState);
    }

    public eventLogResult EndgetAuditReport(IAsyncResult asyncResult)
    {
      return (eventLogResult) this.EndInvoke(asyncResult)[0];
    }

    public void getAuditReportAsync(
      string sessionId,
      string[] users,
      string[] eventTypes,
      DateTime startDate,
      bool startDateSpecified,
      DateTime endDate,
      bool endDateSpecified)
    {
      this.getAuditReportAsync(sessionId, users, eventTypes, startDate, startDateSpecified, endDate, endDateSpecified, (object) null);
    }

    public void getAuditReportAsync(
      string sessionId,
      string[] users,
      string[] eventTypes,
      DateTime startDate,
      bool startDateSpecified,
      DateTime endDate,
      bool endDateSpecified,
      object userState)
    {
      if (this.getAuditReportOperationCompleted == null)
        this.getAuditReportOperationCompleted = new SendOrPostCallback(this.OngetAuditReportOperationCompleted);
      this.InvokeAsync("getAuditReport", new object[7]
      {
        (object) sessionId,
        (object) users,
        (object) eventTypes,
        (object) startDate,
        (object) startDateSpecified,
        (object) endDate,
        (object) endDateSpecified
      }, this.getAuditReportOperationCompleted, userState);
    }

    private void OngetAuditReportOperationCompleted(object arg)
    {
      if (this.getAuditReportCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.getAuditReportCompleted((object) this, new getAuditReportCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    [SoapDocumentMethod("", ParameterStyle = SoapParameterStyle.Wrapped, RequestNamespace = "http://soa.tricipher.com/", ResponseNamespace = "http://soa.tricipher.com/", Use = SoapBindingUse.Literal)]
    [return: XmlElement("return", Form = XmlSchemaForm.Unqualified)]
    public molResult modifyDirectoryIntegration(
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string sessionId,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string authServiceCerts,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string authServiceDomain,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] string authServiceURL,
      [XmlElement(Form = XmlSchemaForm.Unqualified)] int timeout,
      [XmlElement(Form = XmlSchemaForm.Unqualified), XmlIgnore] bool timeoutSpecified)
    {
      return (molResult) this.Invoke(nameof (modifyDirectoryIntegration), new object[6]
      {
        (object) sessionId,
        (object) authServiceCerts,
        (object) authServiceDomain,
        (object) authServiceURL,
        (object) timeout,
        (object) timeoutSpecified
      })[0];
    }

    public IAsyncResult BeginmodifyDirectoryIntegration(
      string sessionId,
      string authServiceCerts,
      string authServiceDomain,
      string authServiceURL,
      int timeout,
      bool timeoutSpecified,
      AsyncCallback callback,
      object asyncState)
    {
      return this.BeginInvoke("modifyDirectoryIntegration", new object[6]
      {
        (object) sessionId,
        (object) authServiceCerts,
        (object) authServiceDomain,
        (object) authServiceURL,
        (object) timeout,
        (object) timeoutSpecified
      }, callback, asyncState);
    }

    public molResult EndmodifyDirectoryIntegration(IAsyncResult asyncResult)
    {
      return (molResult) this.EndInvoke(asyncResult)[0];
    }

    public void modifyDirectoryIntegrationAsync(
      string sessionId,
      string authServiceCerts,
      string authServiceDomain,
      string authServiceURL,
      int timeout,
      bool timeoutSpecified)
    {
      this.modifyDirectoryIntegrationAsync(sessionId, authServiceCerts, authServiceDomain, authServiceURL, timeout, timeoutSpecified, (object) null);
    }

    public void modifyDirectoryIntegrationAsync(
      string sessionId,
      string authServiceCerts,
      string authServiceDomain,
      string authServiceURL,
      int timeout,
      bool timeoutSpecified,
      object userState)
    {
      if (this.modifyDirectoryIntegrationOperationCompleted == null)
        this.modifyDirectoryIntegrationOperationCompleted = new SendOrPostCallback(this.OnmodifyDirectoryIntegrationOperationCompleted);
      this.InvokeAsync("modifyDirectoryIntegration", new object[6]
      {
        (object) sessionId,
        (object) authServiceCerts,
        (object) authServiceDomain,
        (object) authServiceURL,
        (object) timeout,
        (object) timeoutSpecified
      }, this.modifyDirectoryIntegrationOperationCompleted, userState);
    }

    private void OnmodifyDirectoryIntegrationOperationCompleted(object arg)
    {
      if (this.modifyDirectoryIntegrationCompleted == null)
        return;
      InvokeCompletedEventArgs completedEventArgs = (InvokeCompletedEventArgs) arg;
      this.modifyDirectoryIntegrationCompleted((object) this, new modifyDirectoryIntegrationCompletedEventArgs(completedEventArgs.Results, completedEventArgs.Error, completedEventArgs.Cancelled, completedEventArgs.UserState));
    }

    public new void CancelAsync(object userState)
    {
      base.CancelAsync(userState);
    }
  }
}
