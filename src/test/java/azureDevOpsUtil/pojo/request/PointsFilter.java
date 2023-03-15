package azureDevOpsUtil.pojo.request;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@Builder
public class PointsFilter {

    private List<Integer> testcaseIds = new ArrayList<Integer>();
}
