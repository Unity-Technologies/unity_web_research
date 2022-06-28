type Arr = array<mat4x4<f32>, 4u>;

struct PGlobals {
  unity_WorldToShadow : Arr,
  x_LightShadowData : vec4<f32>,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(8)
  padding : u32,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_21 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat9 : f32;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

var<private> u_xlatb1 : bool;

@group(0) @binding(3) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTextureB0 : sampler;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(5) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat6 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(4) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_NHxRoughness : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var txVec0 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = vs_TEXCOORD5;
  let x_27 : vec4<f32> = x_21.unity_WorldToLight[1i];
  u_xlat0 = (vec4<f32>(x_13.y, x_13.y, x_13.y, x_13.y) * x_27);
  let x_31 : vec4<f32> = x_21.unity_WorldToLight[0i];
  let x_32 : vec3<f32> = vs_TEXCOORD5;
  let x_35 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_31 * vec4<f32>(x_32.x, x_32.x, x_32.x, x_32.x)) + x_35);
  let x_39 : vec4<f32> = x_21.unity_WorldToLight[2i];
  let x_40 : vec3<f32> = vs_TEXCOORD5;
  let x_43 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_39 * vec4<f32>(x_40.z, x_40.z, x_40.z, x_40.z)) + x_43);
  let x_45 : vec4<f32> = u_xlat0;
  let x_48 : vec4<f32> = x_21.unity_WorldToLight[3i];
  u_xlat0 = (x_45 + x_48);
  let x_52 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = u_xlat0;
  let x_56 : vec2<f32> = (vec2<f32>(x_52.x, x_52.y) / vec2<f32>(x_54.w, x_54.w));
  let x_57 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_56.x, x_56.y, x_57.z, x_57.w);
  let x_59 : vec4<f32> = u_xlat1;
  let x_63 : vec2<f32> = (vec2<f32>(x_59.x, x_59.y) + vec2<f32>(0.5f, 0.5f));
  let x_64 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_63.x, x_63.y, x_64.z, x_64.w);
  let x_78 : vec4<f32> = u_xlat1;
  let x_80 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_78.x, x_78.y));
  u_xlat9 = x_80.w;
  let x_89 : f32 = u_xlat0.z;
  u_xlatb1 = (0.0f < x_89);
  let x_91 : vec4<f32> = u_xlat0;
  let x_93 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_91.x, x_91.y, x_91.z), vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_103 : vec4<f32> = u_xlat0;
  let x_105 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_103.x, x_103.x));
  u_xlat0.x = x_105.x;
  let x_110 : bool = u_xlatb1;
  u_xlat3.x = select(0.0f, 1.0f, x_110);
  let x_114 : f32 = u_xlat9;
  let x_116 : f32 = u_xlat3.x;
  u_xlat3.x = (x_114 * x_116);
  let x_120 : f32 = u_xlat0.x;
  let x_122 : f32 = u_xlat3.x;
  u_xlat0.x = (x_120 * x_122);
  let x_125 : vec3<f32> = vs_TEXCOORD5;
  let x_128 : vec4<f32> = x_21.unity_WorldToShadow[0i][1i];
  u_xlat1 = (vec4<f32>(x_125.y, x_125.y, x_125.y, x_125.y) * x_128);
  let x_131 : vec4<f32> = x_21.unity_WorldToShadow[0i][0i];
  let x_132 : vec3<f32> = vs_TEXCOORD5;
  let x_135 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_131 * vec4<f32>(x_132.x, x_132.x, x_132.x, x_132.x)) + x_135);
  let x_138 : vec4<f32> = x_21.unity_WorldToShadow[0i][2i];
  let x_139 : vec3<f32> = vs_TEXCOORD5;
  let x_142 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_138 * vec4<f32>(x_139.z, x_139.z, x_139.z, x_139.z)) + x_142);
  let x_144 : vec4<f32> = u_xlat1;
  let x_146 : vec4<f32> = x_21.unity_WorldToShadow[0i][3i];
  u_xlat1 = (x_144 + x_146);
  let x_148 : vec4<f32> = u_xlat1;
  let x_150 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec3<f32>(x_148.x, x_148.y, x_148.z) / vec3<f32>(x_150.w, x_150.w, x_150.w));
  let x_155 : vec3<f32> = u_xlat3;
  let x_156 : vec2<f32> = vec2<f32>(x_155.x, x_155.y);
  let x_158 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_156.x, x_156.y, x_158);
  let x_170 : vec3<f32> = txVec0;
  let x_172 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_170.xy, x_170.z);
  u_xlat3.x = x_172;
  let x_177 : f32 = x_21.x_LightShadowData.x;
  u_xlat6 = (-(x_177) + 1.0f);
  let x_181 : f32 = u_xlat3.x;
  let x_182 : f32 = u_xlat6;
  let x_185 : f32 = x_21.x_LightShadowData.x;
  u_xlat3.x = ((x_181 * x_182) + x_185);
  let x_189 : f32 = u_xlat3.x;
  let x_191 : f32 = u_xlat0.x;
  u_xlat0.x = (x_189 * x_191);
  let x_194 : vec4<f32> = u_xlat0;
  let x_197 : vec4<f32> = x_21.x_LightColor0;
  let x_199 : vec3<f32> = (vec3<f32>(x_194.x, x_194.x, x_194.x) * vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_200 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_204 : vec4<f32> = vs_TEXCOORD4;
  let x_206 : vec4<f32> = vs_TEXCOORD4;
  u_xlat9 = dot(vec3<f32>(x_204.x, x_204.y, x_204.z), vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_209 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_209);
  let x_211 : f32 = u_xlat9;
  let x_213 : vec4<f32> = vs_TEXCOORD4;
  let x_215 : vec3<f32> = (vec3<f32>(x_211, x_211, x_211) * vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_216 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
  let x_222 : f32 = vs_TEXCOORD2.w;
  u_xlat2.x = x_222;
  let x_226 : f32 = vs_TEXCOORD3.w;
  u_xlat2.y = x_226;
  let x_230 : f32 = vs_TEXCOORD4.w;
  u_xlat2.z = x_230;
  let x_232 : vec4<f32> = u_xlat1;
  let x_234 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_232.x, x_232.y, x_232.z), x_234);
  let x_236 : f32 = u_xlat9;
  u_xlat9 = clamp(x_236, 0.0f, 1.0f);
  let x_238 : f32 = u_xlat9;
  let x_240 : vec4<f32> = u_xlat0;
  let x_242 : vec3<f32> = (vec3<f32>(x_238, x_238, x_238) * vec3<f32>(x_240.x, x_240.y, x_240.z));
  let x_243 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_246 : vec4<f32> = vs_TEXCOORD1;
  let x_249 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(-(vec3<f32>(x_246.x, x_246.y, x_246.z)), vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_252 : f32 = u_xlat9;
  let x_253 : f32 = u_xlat9;
  u_xlat9 = (x_252 + x_253);
  let x_255 : vec4<f32> = u_xlat1;
  let x_257 : f32 = u_xlat9;
  let x_261 : vec4<f32> = vs_TEXCOORD1;
  let x_264 : vec3<f32> = ((vec3<f32>(x_255.x, x_255.y, x_255.z) * -(vec3<f32>(x_257, x_257, x_257))) + -(vec3<f32>(x_261.x, x_261.y, x_261.z)));
  let x_265 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_267 : vec4<f32> = u_xlat1;
  let x_269 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_267.x, x_267.y, x_267.z), x_269);
  let x_271 : f32 = u_xlat9;
  let x_272 : f32 = u_xlat9;
  u_xlat9 = (x_271 * x_272);
  let x_274 : f32 = u_xlat9;
  let x_275 : f32 = u_xlat9;
  u_xlat1.x = (x_274 * x_275);
  let x_280 : f32 = x_21.x_Glossiness;
  u_xlat1.y = (-(x_280) + 1.0f);
  let x_289 : vec4<f32> = u_xlat1;
  let x_291 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_289.x, x_289.y));
  u_xlat9 = x_291.x;
  let x_293 : f32 = u_xlat9;
  u_xlat9 = (x_293 * 16.0f);
  let x_302 : vec4<f32> = vs_TEXCOORD0;
  let x_304 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_302.x, x_302.y));
  let x_305 : vec3<f32> = vec3<f32>(x_304.x, x_304.y, x_304.z);
  let x_306 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
  let x_309 : vec4<f32> = x_21.x_Color;
  let x_311 : vec4<f32> = u_xlat1;
  u_xlat2 = ((vec3<f32>(x_309.x, x_309.y, x_309.z) * vec3<f32>(x_311.x, x_311.y, x_311.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_317 : vec4<f32> = u_xlat1;
  let x_320 : vec4<f32> = x_21.x_Color;
  let x_322 : vec3<f32> = (vec3<f32>(x_317.x, x_317.y, x_317.z) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_327 : f32 = x_21.x_Metallic;
  let x_329 : f32 = x_21.x_Metallic;
  let x_331 : f32 = x_21.x_Metallic;
  let x_332 : vec3<f32> = vec3<f32>(x_327, x_329, x_331);
  let x_337 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_332.x, x_332.y, x_332.z) * x_337) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_342 : f32 = u_xlat9;
  let x_344 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_342, x_342, x_342) * x_344);
  let x_347 : f32 = x_21.x_Metallic;
  u_xlat9 = ((-(x_347) * 0.959999979f) + 0.959999979f);
  let x_352 : vec4<f32> = u_xlat1;
  let x_354 : f32 = u_xlat9;
  let x_357 : vec3<f32> = u_xlat2;
  let x_358 : vec3<f32> = ((vec3<f32>(x_352.x, x_352.y, x_352.z) * vec3<f32>(x_354, x_354, x_354)) + x_357);
  let x_359 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_363 : vec4<f32> = u_xlat0;
  let x_365 : vec4<f32> = u_xlat1;
  let x_367 : vec3<f32> = (vec3<f32>(x_363.x, x_363.y, x_363.z) * vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_368 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_TEXCOORD5_param : vec3<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

