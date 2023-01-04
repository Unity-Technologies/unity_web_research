struct PGlobals {
  x_Glossiness : f32,
  x_Metallic : f32,
  x_Cutoff : f32,
  x_EdgeSize : f32,
  x_NoiseStrength : f32,
  @size(12)
  padding : u32,
  x_Color : vec4<f32>,
  x_EdgeColor1 : vec4<f32>,
  x_Emission : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(8) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat3 : f32;

@group(0) @binding(3) var x_Gradient : texture_2d<f32>;

@group(0) @binding(9) var sampler_Gradient : sampler;

var<private> u_xlat6 : f32;

@group(0) @binding(0) var<uniform> x_55 : PGlobals;

var<private> u_xlatb6 : bool;

@group(0) @binding(5) var x_AO : texture_2d<f32>;

@group(0) @binding(12) var sampler_AO : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicSmooth : sampler;

var<private> SV_Target1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(4) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> u_xlat4 : vec3<f32>;

var<private> SV_Target3 : vec4<f32>;

@group(0) @binding(6) var x_Normal : texture_2d<f32>;

@group(0) @binding(10) var sampler_Normal : sampler;

var<private> u_xlat9 : f32;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_23.x, x_23.y));
  u_xlat0.x = x_25.x;
  let x_37 : vec4<f32> = vs_TEXCOORD0;
  let x_39 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_37.z, x_37.w));
  u_xlat3 = x_39.x;
  let x_42 : f32 = u_xlat3;
  u_xlat6 = (-(x_42) + 1.0f);
  let x_46 : f32 = u_xlat6;
  let x_48 : f32 = u_xlat0.x;
  u_xlat0.x = (x_46 * x_48);
  let x_52 : f32 = u_xlat0.x;
  let x_60 : f32 = x_55.x_NoiseStrength;
  let x_62 : f32 = u_xlat3;
  u_xlat0.x = ((x_52 * x_60) + x_62);
  let x_66 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_66) + 1.0f);
  let x_71 : f32 = u_xlat0.x;
  let x_74 : f32 = x_55.x_Cutoff;
  u_xlat0.x = (x_71 + -(x_74));
  let x_80 : f32 = x_55.x_EdgeSize;
  u_xlat3 = (1.0f / -(x_80));
  let x_83 : f32 = u_xlat3;
  let x_85 : f32 = u_xlat0.x;
  u_xlat0.x = (x_83 * x_85);
  let x_89 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_89, 0.0f, 1.0f);
  let x_94 : f32 = u_xlat0.x;
  u_xlat3 = ((x_94 * -2.0f) + 3.0f);
  let x_100 : f32 = u_xlat0.x;
  let x_102 : f32 = u_xlat0.x;
  u_xlat0.x = (x_100 * x_102);
  let x_105 : f32 = u_xlat3;
  let x_108 : f32 = u_xlat0.x;
  let x_111 : f32 = x_55.x_Cutoff;
  u_xlat6 = ((-(x_105) * x_108) + -(x_111));
  let x_115 : f32 = u_xlat0.x;
  let x_116 : f32 = u_xlat3;
  u_xlat0.x = (x_115 * x_116);
  let x_120 : vec4<f32> = u_xlat0;
  let x_125 : vec4<f32> = x_55.x_EdgeColor1;
  let x_127 : vec3<f32> = (vec3<f32>(x_120.x, x_120.x, x_120.x) * vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_128 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_127.x, x_127.y, x_128.z, x_127.z);
  let x_130 : f32 = u_xlat6;
  u_xlat6 = (x_130 + 1.0f);
  let x_135 : f32 = u_xlat6;
  u_xlatb6 = (x_135 < 0.0f);
  let x_137 : bool = u_xlatb6;
  if (((select(0i, 1i, x_137) * -1i) != 0i)) {
    discard;
  }
  let x_152 : vec4<f32> = vs_TEXCOORD0;
  let x_154 : vec4<f32> = textureSample(x_AO, sampler_AO, vec2<f32>(x_152.z, x_152.w));
  u_xlat6 = x_154.x;
  let x_158 : f32 = u_xlat6;
  SV_Target0.w = x_158;
  let x_169 : vec4<f32> = vs_TEXCOORD0;
  let x_171 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, vec2<f32>(x_169.z, x_169.w));
  let x_172 : vec2<f32> = vec2<f32>(x_171.x, x_171.w);
  let x_173 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_172.x, x_172.y, x_173.z);
  let x_176 : f32 = u_xlat1.x;
  let x_178 : f32 = x_55.x_Metallic;
  u_xlat6 = (x_176 * x_178);
  let x_183 : f32 = u_xlat1.y;
  let x_185 : f32 = x_55.x_Glossiness;
  SV_Target1.w = (x_183 * x_185);
  let x_188 : f32 = u_xlat6;
  u_xlat1.x = ((-(x_188) * 0.959999979f) + 0.959999979f);
  let x_200 : vec4<f32> = vs_TEXCOORD0;
  let x_202 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_200.z, x_200.w));
  u_xlat2 = x_202;
  let x_204 : vec4<f32> = u_xlat2;
  let x_208 : vec4<f32> = x_55.x_Color;
  u_xlat4 = (vec3<f32>(x_204.x, x_204.y, x_204.z) * vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_211 : vec3<f32> = u_xlat1;
  let x_213 : vec3<f32> = u_xlat4;
  let x_214 : vec3<f32> = (vec3<f32>(x_211.x, x_211.x, x_211.x) * x_213);
  let x_215 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_217 : vec4<f32> = u_xlat2;
  let x_220 : vec4<f32> = x_55.x_Color;
  u_xlat1 = ((vec3<f32>(x_217.x, x_217.y, x_217.z) * vec3<f32>(x_220.x, x_220.y, x_220.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_226 : vec4<f32> = u_xlat2;
  let x_230 : vec4<f32> = x_55.x_Emission;
  let x_233 : vec4<f32> = u_xlat0;
  let x_235 : vec3<f32> = ((vec3<f32>(x_226.w, x_226.w, x_226.w) * vec3<f32>(x_230.x, x_230.y, x_230.z)) + vec3<f32>(x_233.x, x_233.y, x_233.w));
  let x_236 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_235.x, x_235.y, x_236.z, x_235.z);
  let x_239 : vec4<f32> = u_xlat0;
  let x_242 : vec3<f32> = exp2(-(vec3<f32>(x_239.x, x_239.y, x_239.w)));
  let x_243 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_245 : f32 = u_xlat6;
  let x_247 : vec3<f32> = u_xlat1;
  let x_251 : vec3<f32> = ((vec3<f32>(x_245, x_245, x_245) * x_247) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_252 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_259 : vec4<f32> = vs_TEXCOORD0;
  let x_261 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_259.z, x_259.w));
  let x_262 : vec3<f32> = vec3<f32>(x_261.x, x_261.y, x_261.w);
  let x_263 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_267 : f32 = u_xlat0.z;
  let x_269 : f32 = u_xlat0.x;
  u_xlat0.x = (x_267 * x_269);
  let x_272 : vec4<f32> = u_xlat0;
  let x_279 : vec2<f32> = ((vec2<f32>(x_272.x, x_272.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_280 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_279.x, x_279.y, x_280.z, x_280.w);
  let x_283 : vec4<f32> = u_xlat0;
  let x_285 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec2<f32>(x_283.x, x_283.y), vec2<f32>(x_285.x, x_285.y));
  let x_288 : f32 = u_xlat9;
  u_xlat9 = min(x_288, 1.0f);
  let x_290 : f32 = u_xlat9;
  u_xlat9 = (-(x_290) + 1.0f);
  let x_293 : f32 = u_xlat9;
  u_xlat0.z = sqrt(x_293);
  let x_297 : vec4<f32> = vs_TEXCOORD1;
  let x_299 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_297.x, x_297.y, x_297.z), vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_304 : vec4<f32> = vs_TEXCOORD2;
  let x_306 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(x_304.x, x_304.y, x_304.z), vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_311 : vec4<f32> = vs_TEXCOORD3;
  let x_313 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(x_311.x, x_311.y, x_311.z), vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_317 : vec3<f32> = u_xlat1;
  let x_318 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_317, x_318);
  let x_322 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_322);
  let x_325 : vec4<f32> = u_xlat0;
  let x_327 : vec3<f32> = u_xlat1;
  let x_328 : vec3<f32> = (vec3<f32>(x_325.x, x_325.x, x_325.x) * x_327);
  let x_329 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_332 : vec4<f32> = u_xlat0;
  let x_337 : vec3<f32> = ((vec3<f32>(x_332.x, x_332.y, x_332.z) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_338 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  SV_Target2.w = 1.0f;
  SV_Target3.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(3)
  SV_Target3_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0, SV_Target1, SV_Target3, SV_Target2);
}

