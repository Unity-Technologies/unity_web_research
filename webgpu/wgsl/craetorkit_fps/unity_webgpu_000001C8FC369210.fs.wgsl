struct PGlobals {
  x_Color : vec4<f32>,
  x_GlossMapScale : f32,
  @size(12)
  padding : u32,
  x_EmissionColor : vec4<f32>,
  unity_MetaFragmentControl : vec4<u32>,
  unity_OneOverOutputBoost : f32,
  unity_MaxOutputValue : f32,
  unity_UseLinearSpace : f32,
}

@group(0) @binding(0) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_41 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_EmissionMap : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlatb10 : bool;
  var x_223 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_23.x, x_23.y));
  let x_26 : vec2<f32> = vec2<f32>(x_25.x, x_25.w);
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_27.z, x_27.w);
  let x_36 : f32 = u_xlat0.y;
  let x_46 : f32 = x_41.x_GlossMapScale;
  u_xlat3.x = ((-(x_36) * x_46) + 1.0f);
  let x_53 : f32 = u_xlat3.x;
  let x_55 : f32 = u_xlat3.x;
  u_xlat3.x = (x_53 * x_55);
  let x_64 : vec4<f32> = vs_TEXCOORD0;
  let x_66 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_64.x, x_64.y));
  let x_67 : vec3<f32> = vec3<f32>(x_66.x, x_66.y, x_66.z);
  let x_68 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_67.x, x_67.y, x_67.z, x_68.w);
  let x_74 : vec4<f32> = x_41.x_Color;
  let x_76 : vec4<f32> = u_xlat1;
  u_xlat2 = ((vec3<f32>(x_74.x, x_74.y, x_74.z) * vec3<f32>(x_76.x, x_76.y, x_76.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_82 : vec4<f32> = u_xlat1;
  let x_85 : vec4<f32> = x_41.x_Color;
  let x_87 : vec3<f32> = (vec3<f32>(x_82.x, x_82.y, x_82.z) * vec3<f32>(x_85.x, x_85.y, x_85.z));
  let x_88 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_87.x, x_87.y, x_87.z, x_88.w);
  let x_90 : vec4<f32> = u_xlat0;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_90.x, x_90.x, x_90.x) * x_92) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_98 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_98) * 0.959999979f) + 0.959999979f);
  let x_104 : vec3<f32> = u_xlat3;
  let x_106 : vec3<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_104.x, x_104.x, x_104.x) * x_106);
  let x_108 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_108 * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_112 : vec4<f32> = u_xlat1;
  let x_114 : vec4<f32> = u_xlat0;
  let x_117 : vec3<f32> = u_xlat3;
  let x_118 : vec3<f32> = ((vec3<f32>(x_112.x, x_112.y, x_112.z) * vec3<f32>(x_114.x, x_114.x, x_114.x)) + x_117);
  let x_119 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  let x_121 : vec4<f32> = u_xlat0;
  let x_123 : vec3<f32> = log2(vec3<f32>(x_121.x, x_121.y, x_121.z));
  let x_124 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_123.x, x_123.y, x_123.z, x_124.w);
  let x_129 : f32 = x_41.unity_OneOverOutputBoost;
  u_xlat9 = x_129;
  let x_130 : f32 = u_xlat9;
  u_xlat9 = clamp(x_130, 0.0f, 1.0f);
  let x_133 : vec4<f32> = u_xlat0;
  let x_135 : f32 = u_xlat9;
  let x_137 : vec3<f32> = (vec3<f32>(x_133.x, x_133.y, x_133.z) * vec3<f32>(x_135, x_135, x_135));
  let x_138 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_137.x, x_137.y, x_137.z, x_138.w);
  let x_140 : vec4<f32> = u_xlat0;
  let x_142 : vec3<f32> = exp2(vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_143 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_145 : vec4<f32> = u_xlat0;
  let x_149 : f32 = x_41.unity_MaxOutputValue;
  let x_151 : f32 = x_41.unity_MaxOutputValue;
  let x_153 : f32 = x_41.unity_MaxOutputValue;
  let x_154 : vec3<f32> = vec3<f32>(x_149, x_151, x_153);
  let x_159 : vec3<f32> = min(vec3<f32>(x_145.x, x_145.y, x_145.z), vec3<f32>(x_154.x, x_154.y, x_154.z));
  let x_160 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  u_xlat0.w = 1.0f;
  let x_169 : u32 = x_41.unity_MetaFragmentControl.x;
  let x_170 : bool = (x_169 != 0u);
  let x_171 : vec4<f32> = u_xlat0;
  u_xlat0 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), x_171, vec4<bool>(x_170, x_170, x_170, x_170));
  let x_180 : vec4<f32> = vs_TEXCOORD0;
  let x_182 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_180.x, x_180.y));
  let x_183 : vec3<f32> = vec3<f32>(x_182.x, x_182.y, x_182.z);
  let x_184 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_186 : vec4<f32> = u_xlat1;
  let x_190 : vec4<f32> = x_41.x_EmissionColor;
  let x_192 : vec3<f32> = (vec3<f32>(x_186.x, x_186.y, x_186.z) * vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_193 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_195 : vec4<f32> = u_xlat1;
  u_xlat2 = ((vec3<f32>(x_195.x, x_195.y, x_195.z) * vec3<f32>(0.305306017f, 0.305306017f, 0.305306017f)) + vec3<f32>(0.682171106f, 0.682171106f, 0.682171106f));
  let x_203 : vec4<f32> = u_xlat1;
  let x_205 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_203.x, x_203.y, x_203.z) * x_205) + vec3<f32>(0.012522878f, 0.012522878f, 0.012522878f));
  let x_210 : vec4<f32> = u_xlat1;
  let x_212 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_210.x, x_210.y, x_210.z) * x_212);
  let x_218 : f32 = x_41.unity_UseLinearSpace;
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
  let x_237 : u32 = x_41.unity_MetaFragmentControl.y;
  let x_238 : bool = (x_237 != 0u);
  let x_239 : vec4<f32> = u_xlat1;
  let x_240 : vec4<f32> = u_xlat0;
  SV_Target0 = select(x_240, x_239, vec4<bool>(x_238, x_238, x_238, x_238));
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

