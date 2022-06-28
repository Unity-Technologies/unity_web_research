struct PGlobals {
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding : u32,
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_30 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = vec3<f32>(x_25.x, x_25.y, x_25.z);
  let x_27 : vec3<f32> = u_xlat0;
  let x_35 : vec4<f32> = x_30.x_Color;
  u_xlat0 = (x_27 * vec3<f32>(x_35.x, x_35.y, x_35.z));
  let x_39 : vec3<f32> = u_xlat0;
  let x_42 : vec4<f32> = vs_COLOR0;
  u_xlat1 = (x_39 * vec3<f32>(x_42.x, x_42.y, x_42.z));
  let x_45 : vec3<f32> = u_xlat0;
  let x_46 : vec4<f32> = vs_COLOR0;
  u_xlat0 = ((x_45 * vec3<f32>(x_46.x, x_46.y, x_46.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_57 : f32 = x_30.x_Metallic;
  let x_59 : f32 = x_30.x_Metallic;
  let x_61 : f32 = x_30.x_Metallic;
  let x_62 : vec3<f32> = vec3<f32>(x_57, x_59, x_61);
  let x_67 : vec3<f32> = u_xlat0;
  let x_71 : vec3<f32> = ((vec3<f32>(x_62.x, x_62.y, x_62.z) * x_67) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_72 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_71.x, x_71.y, x_71.z, x_72.w);
  let x_75 : f32 = x_30.x_Metallic;
  u_xlat0.x = ((-(x_75) * 0.959999979f) + 0.959999979f);
  let x_85 : vec3<f32> = u_xlat0;
  let x_87 : vec3<f32> = u_xlat1;
  let x_88 : vec3<f32> = (vec3<f32>(x_85.x, x_85.x, x_85.x) * x_87);
  let x_89 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_88.x, x_88.y, x_88.z, x_89.w);
  SV_Target0.w = 1.0f;
  let x_97 : f32 = x_30.x_Glossiness;
  SV_Target1.w = x_97;
  let x_102 : vec3<f32> = vs_TEXCOORD1;
  let x_106 : vec3<f32> = ((x_102 * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_107 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
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
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target1, SV_Target0, SV_Target2, SV_Target3);
}

