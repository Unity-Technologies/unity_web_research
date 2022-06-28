struct PGlobals {
  x_Time : vec4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding : u32,
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_61 : PGlobals;

var<private> u_xlat6 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> SV_Target1 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD2;
  let x_13 : vec3<f32> = vs_TEXCOORD2;
  u_xlat0.x = dot(x_12, x_13);
  let x_20 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_20);
  let x_23 : vec3<f32> = u_xlat0;
  let x_25 : vec3<f32> = vs_TEXCOORD2;
  u_xlat0 = (vec3<f32>(x_23.x, x_23.x, x_23.x) * x_25);
  let x_28 : vec3<f32> = vs_TEXCOORD0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_28, x_29);
  let x_33 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_33);
  let x_37 : f32 = u_xlat0.x;
  u_xlat0.x = (x_37 * 0.100000001f);
  let x_42 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_42);
  let x_46 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_46) + 1.0f);
  let x_52 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_52, 0.0f);
  let x_56 : vec3<f32> = u_xlat0;
  let x_66 : vec4<f32> = x_61.x_Color;
  u_xlat0 = (vec3<f32>(x_56.x, x_56.x, x_56.x) * vec3<f32>(x_66.x, x_66.y, x_66.z));
  let x_73 : f32 = x_61.x_Time.x;
  u_xlat6 = (x_73 * 200.0f);
  let x_76 : f32 = u_xlat6;
  u_xlat6 = sin(x_76);
  let x_78 : f32 = u_xlat6;
  u_xlat6 = (x_78 + 1.0f);
  let x_80 : f32 = u_xlat6;
  u_xlat6 = (x_80 * 0.5f);
  let x_84 : f32 = u_xlat6;
  let x_86 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_84, x_84, x_84) * x_86);
  let x_88 : vec3<f32> = u_xlat0;
  let x_89 : f32 = u_xlat6;
  u_xlat0 = ((x_88 * vec3<f32>(x_89, x_89, x_89)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_99 : f32 = x_61.x_Metallic;
  let x_101 : f32 = x_61.x_Metallic;
  let x_103 : f32 = x_61.x_Metallic;
  let x_104 : vec3<f32> = vec3<f32>(x_99, x_101, x_103);
  let x_109 : vec3<f32> = u_xlat0;
  let x_113 : vec3<f32> = ((vec3<f32>(x_104.x, x_104.y, x_104.z) * x_109) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_114 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_117 : f32 = x_61.x_Metallic;
  u_xlat0.x = ((-(x_117) * 0.959999979f) + 0.959999979f);
  let x_124 : vec3<f32> = u_xlat0;
  let x_126 : vec3<f32> = u_xlat1;
  let x_127 : vec3<f32> = (vec3<f32>(x_124.x, x_124.x, x_124.x) * x_126);
  let x_128 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  SV_Target0.w = 1.0f;
  let x_135 : f32 = x_61.x_Glossiness;
  SV_Target1.w = x_135;
  let x_138 : vec3<f32> = vs_TEXCOORD0;
  let x_141 : vec3<f32> = ((x_138 * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_142 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_141.x, x_141.y, x_141.z, x_142.w);
  SV_Target2.w = 1.0f;
  SV_Target3 = vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f);
  return;
}

struct main_out {
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
  @location(3)
  SV_Target3_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD2_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target1, SV_Target0, SV_Target2, SV_Target3);
}

