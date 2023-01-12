struct PGlobals {
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding : u32,
  x_Color : vec4<f32>,
  x_Color2 : vec4<f32>,
}

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_Gradient : texture_2d<f32>;

@group(0) @binding(1) var sampler_Gradient : sampler;

@group(1) @binding(0) var<uniform> x_95 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : f32;
  var u_xlatb0 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : f32 = vs_TEXCOORD3;
  u_xlat0.x = (x_12 + -1.0f);
  let x_20 : f32 = u_xlat0.x;
  u_xlat0.x = (x_20 * -9.999998093f);
  let x_25 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_25, 0.0f, 1.0f);
  let x_31 : vec3<f32> = u_xlat0;
  let x_36 : vec2<f32> = vs_TEXCOORD0;
  let x_37 : vec2<f32> = (-(vec2<f32>(x_31.x, x_31.x)) + x_36);
  let x_38 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_37.x, x_37.y, x_38.z);
  let x_50 : vec3<f32> = u_xlat0;
  let x_53 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_50.x, x_50.y));
  u_xlat0.x = x_53.x;
  let x_57 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_57 * -2.0f) + 1.0f);
  let x_66 : vec2<f32> = vs_TEXCOORD0;
  let x_67 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, x_66);
  u_xlat1 = x_67.z;
  let x_70 : f32 = u_xlat1;
  let x_73 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_70) + x_73);
  let x_80 : f32 = u_xlat0.x;
  u_xlatb0 = (x_80 < 0.0f);
  let x_82 : bool = u_xlatb0;
  if (((select(0i, 1i, x_82) * -1i) != 0i)) {
    discard;
  }
  let x_98 : f32 = x_95.x_Metallic;
  u_xlat0.x = ((-(x_98) * 0.959999979f) + 0.959999979f);
  let x_106 : vec3<f32> = u_xlat0;
  let x_111 : vec4<f32> = x_95.x_Color;
  let x_113 : vec3<f32> = (vec3<f32>(x_106.x, x_106.x, x_106.x) * vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  SV_Target0.w = 1.0f;
  let x_120 : vec4<f32> = x_95.x_Color;
  u_xlat0 = (vec3<f32>(x_120.x, x_120.y, x_120.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_127 : f32 = x_95.x_Metallic;
  let x_129 : f32 = x_95.x_Metallic;
  let x_131 : f32 = x_95.x_Metallic;
  let x_132 : vec3<f32> = vec3<f32>(x_127, x_129, x_131);
  let x_137 : vec3<f32> = u_xlat0;
  let x_141 : vec3<f32> = ((vec3<f32>(x_132.x, x_132.y, x_132.z) * x_137) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_142 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_141.x, x_141.y, x_141.z, x_142.w);
  let x_145 : f32 = x_95.x_Glossiness;
  SV_Target1.w = x_145;
  let x_150 : vec3<f32> = vs_TEXCOORD1;
  let x_154 : vec3<f32> = ((x_150 * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_155 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  SV_Target2.w = 1.0f;
  let x_161 : vec4<f32> = x_95.x_Color2;
  let x_164 : vec3<f32> = exp2(-(vec3<f32>(x_161.x, x_161.y, x_161.z)));
  let x_165 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
  SV_Target3.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
  @location(3)
  SV_Target3_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD3_param : f32, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0, SV_Target1, SV_Target2, SV_Target3);
}

