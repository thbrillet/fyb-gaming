import "bootstrap";
import { ClickOnButton } from "../components/groupmembers";
import { ClickOnButtonShow } from "../components/groupmembers";
import "../components/fadeout";
import { EventEvents } from "../components/events";
import { EventPending } from "../components/events";
import { EventCreate } from "../components/events";
import { profilesTabs } from "../components/profile-tabs";
import { slideAlert } from "../components/alert";

ClickOnButton();
ClickOnButtonShow();
EventEvents();
EventPending();
EventCreate();
profilesTabs();
slideAlert();
