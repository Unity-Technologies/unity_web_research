struct PGlobals {
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(8)
  padding : u32,
  unity_MetaFragmentControl : vec4<u32>,
  unity_OneOverOutputBoost : f32,
  unity_MaxOutputValue : f32,
}

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : f32 = x_14.x_Glossiness;
  u_xlat0.x = (-(x_19) + 1.0f);
  let x_27 : f32 = u_xlat0.x;
  let x_29 : f32 = u_xlat0.x;
  u_xlat0.x = (x_27 * x_29);
  let x_48 : vec4<f32> = vs_TEXCOORD0;
  let x_50 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_48.x, x_48.y));
  u_xlat2 = vec3<f32>(x_50.x, x_50.y, x_50.z);
  let x_56 : vec4<f32> = x_14.x_Color;
  let x_58 : vec3<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_56.x, x_56.y, x_56.z) * x_58) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_63 : vec3<f32> = u_xlat2;
  let x_65 : vec4<f32> = x_14.x_Color;
  u_xlat2 = (x_63 * vec3<f32>(x_65.x, x_65.y, x_65.z));
  let x_70 : f32 = x_14.x_Metallic;
  let x_72 : f32 = x_14.x_Metallic;
  let x_74 : f32 = x_14.x_Metallic;
  let x_75 : vec3<f32> = vec3<f32>(x_70, x_72, x_74);
  let x_80 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_75.x, x_75.y, x_75.z) * x_80) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_85 : vec4<f32> = u_xlat0;
  let x_87 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_85.x, x_85.x, x_85.x) * x_87);
  let x_89 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_89 * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_94 : f32 = x_14.x_Metallic;
  u_xlat0.x = ((-(x_94) * 0.959999979f) + 0.959999979f);
  let x_100 : vec3<f32> = u_xlat2;
  let x_101 : vec4<f32> = u_xlat0;
  let x_104 : vec3<f32> = u_xlat1;
  let x_105 : vec3<f32> = ((x_100 * vec3<f32>(x_101.x, x_101.x, x_101.x)) + x_104);
  let x_106 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_105.x, x_105.y, x_105.z, x_106.w);
  let x_108 : vec4<f32> = u_xlat0;
  let x_110 : vec3<f32> = log2(vec3<f32>(x_108.x, x_108.y, x_108.z));
  let x_111 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
  let x_116 : f32 = x_14.unity_OneOverOutputBoost;
  u_xlat6 = x_116;
  let x_117 : f32 = u_xlat6;
  u_xlat6 = clamp(x_117, 0.0f, 1.0f);
  let x_120 : vec4<f32> = u_xlat0;
  let x_122 : f32 = u_xlat6;
  let x_124 : vec3<f32> = (vec3<f32>(x_120.x, x_120.y, x_120.z) * vec3<f32>(x_122, x_122, x_122));
  let x_125 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_124.x, x_124.y, x_124.z, x_125.w);
  let x_127 : vec4<f32> = u_xlat0;
  let x_129 : vec3<f32> = exp2(vec3<f32>(x_127.x, x_127.y, x_127.z));
  let x_130 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_129.x, x_129.y, x_129.z, x_130.w);
  let x_132 : vec4<f32> = u_xlat0;
  let x_136 : f32 = x_14.unity_MaxOutputValue;
  let x_138 : f32 = x_14.unity_MaxOutputValue;
  let x_140 : f32 = x_14.unity_MaxOutputValue;
  let x_141 : vec3<f32> = vec3<f32>(x_136, x_138, x_140);
  let x_146 : vec3<f32> = min(vec3<f32>(x_132.x, x_132.y, x_132.z), vec3<f32>(x_141.x, x_141.y, x_141.z));
  let x_147 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  u_xlat0.w = 1.0f;
  let x_156 : u32 = x_14.unity_MetaFragmentControl.x;
  let x_157 : bool = (x_156 != 0u);
  let x_158 : vec4<f32> = u_xlat0;
  u_xlat0 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), x_158, vec4<bool>(x_157, x_157, x_157, x_157));
  let x_166 : u32 = x_14.unity_MetaFragmentControl.y;
  let x_167 : bool = (x_166 != 0u);
  let x_169 : vec4<f32> = u_xlat0;
  SV_Target0 = select(x_169, vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f), vec4<bool>(x_167, x_167, x_167, x_167));
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

