struct PGlobals {
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(8)
  padding : u32,
  x_EmissionColor : vec4<f32>,
  unity_MetaFragmentControl : vec4<u32>,
  unity_OneOverOutputBoost : f32,
  unity_MaxOutputValue : f32,
  unity_UseLinearSpace : f32,
}

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_EmissionMap : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat9 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlatb10 : bool;
  var x_223 : vec3<f32>;
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
  u_xlat3 = vec3<f32>(x_50.x, x_50.y, x_50.z);
  let x_56 : vec4<f32> = x_14.x_Color;
  let x_58 : vec3<f32> = u_xlat3;
  let x_62 : vec3<f32> = ((vec3<f32>(x_56.x, x_56.y, x_56.z) * x_58) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_63 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_62.x, x_62.y, x_62.z, x_63.w);
  let x_65 : vec3<f32> = u_xlat3;
  let x_67 : vec4<f32> = x_14.x_Color;
  u_xlat3 = (x_65 * vec3<f32>(x_67.x, x_67.y, x_67.z));
  let x_72 : f32 = x_14.x_Metallic;
  let x_74 : f32 = x_14.x_Metallic;
  let x_76 : f32 = x_14.x_Metallic;
  let x_77 : vec3<f32> = vec3<f32>(x_72, x_74, x_76);
  let x_82 : vec4<f32> = u_xlat1;
  let x_87 : vec3<f32> = ((vec3<f32>(x_77.x, x_77.y, x_77.z) * vec3<f32>(x_82.x, x_82.y, x_82.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_88 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_87.x, x_87.y, x_87.z, x_88.w);
  let x_90 : vec4<f32> = u_xlat0;
  let x_92 : vec4<f32> = u_xlat1;
  let x_94 : vec3<f32> = (vec3<f32>(x_90.x, x_90.x, x_90.x) * vec3<f32>(x_92.x, x_92.y, x_92.z));
  let x_95 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_97 : vec4<f32> = u_xlat1;
  let x_101 : vec3<f32> = (vec3<f32>(x_97.x, x_97.y, x_97.z) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_102 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_101.x, x_101.y, x_101.z, x_102.w);
  let x_105 : f32 = x_14.x_Metallic;
  u_xlat0.x = ((-(x_105) * 0.959999979f) + 0.959999979f);
  let x_111 : vec3<f32> = u_xlat3;
  let x_112 : vec4<f32> = u_xlat0;
  let x_115 : vec4<f32> = u_xlat1;
  let x_117 : vec3<f32> = ((x_111 * vec3<f32>(x_112.x, x_112.x, x_112.x)) + vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_118 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_117.x, x_117.y, x_117.z, x_118.w);
  let x_120 : vec4<f32> = u_xlat0;
  let x_122 : vec3<f32> = log2(vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_128 : f32 = x_14.unity_OneOverOutputBoost;
  u_xlat9 = x_128;
  let x_129 : f32 = u_xlat9;
  u_xlat9 = clamp(x_129, 0.0f, 1.0f);
  let x_132 : vec4<f32> = u_xlat0;
  let x_134 : f32 = u_xlat9;
  let x_136 : vec3<f32> = (vec3<f32>(x_132.x, x_132.y, x_132.z) * vec3<f32>(x_134, x_134, x_134));
  let x_137 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_139 : vec4<f32> = u_xlat0;
  let x_141 : vec3<f32> = exp2(vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_142 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_141.x, x_141.y, x_141.z, x_142.w);
  let x_144 : vec4<f32> = u_xlat0;
  let x_148 : f32 = x_14.unity_MaxOutputValue;
  let x_150 : f32 = x_14.unity_MaxOutputValue;
  let x_152 : f32 = x_14.unity_MaxOutputValue;
  let x_153 : vec3<f32> = vec3<f32>(x_148, x_150, x_152);
  let x_158 : vec3<f32> = min(vec3<f32>(x_144.x, x_144.y, x_144.z), vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_159 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  u_xlat0.w = 1.0f;
  let x_168 : u32 = x_14.unity_MetaFragmentControl.x;
  let x_169 : bool = (x_168 != 0u);
  let x_170 : vec4<f32> = u_xlat0;
  u_xlat0 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), x_170, vec4<bool>(x_169, x_169, x_169, x_169));
  let x_179 : vec4<f32> = vs_TEXCOORD0;
  let x_181 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_179.x, x_179.y));
  let x_182 : vec3<f32> = vec3<f32>(x_181.x, x_181.y, x_181.z);
  let x_183 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_185 : vec4<f32> = u_xlat1;
  let x_189 : vec4<f32> = x_14.x_EmissionColor;
  let x_191 : vec3<f32> = (vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_195 : vec4<f32> = u_xlat1;
  u_xlat2 = ((vec3<f32>(x_195.x, x_195.y, x_195.z) * vec3<f32>(0.305306017f, 0.305306017f, 0.305306017f)) + vec3<f32>(0.682171106f, 0.682171106f, 0.682171106f));
  let x_203 : vec4<f32> = u_xlat1;
  let x_205 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_203.x, x_203.y, x_203.z) * x_205) + vec3<f32>(0.012522878f, 0.012522878f, 0.012522878f));
  let x_210 : vec4<f32> = u_xlat1;
  let x_212 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_210.x, x_210.y, x_210.z) * x_212);
  let x_218 : f32 = x_14.unity_UseLinearSpace;
  u_xlatb10 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_218, x_218, x_218, x_218))));
  let x_222 : bool = u_xlatb10;
  if (x_222) {
    let x_226 : vec4<f32> = u_xlat1;
    x_223 = vec3<f32>(x_226.x, x_226.y, x_226.z);
  } else {
    let x_229 : vec3<f32> = u_xlat2;
    x_223 = x_229;
  }
  let x_230 : vec3<f32> = x_223;
  let x_231 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  u_xlat1.w = 1.0f;
  let x_238 : u32 = x_14.unity_MetaFragmentControl.y;
  let x_239 : bool = (x_238 != 0u);
  let x_240 : vec4<f32> = u_xlat1;
  let x_241 : vec4<f32> = u_xlat0;
  SV_Target0 = select(x_241, x_240, vec4<bool>(x_239, x_239, x_239, x_239));
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

