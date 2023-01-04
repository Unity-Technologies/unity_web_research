struct PGlobals {
  x_LightPositionRange : vec4<f32>,
  x_LightProjectionParams : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_GlossMapScale : f32,
  @size(12)
  padding : u32,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_17 : PGlobals;

var<private> u_xlat9 : f32;

@group(0) @binding(7) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(9) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(5) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(13) var sampler_LightTexture0 : sampler;

var<private> u_xlat6 : f32;

@group(0) @binding(4) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(14) var sampler_LightTextureB0 : sampler;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat7 : vec2<f32>;

@group(0) @binding(2) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicGlossMap : sampler;

@group(0) @binding(6) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_NHxRoughness : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var txVec0 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD5;
  let x_22 : vec4<f32> = x_17.x_LightPositionRange;
  u_xlat0 = (x_12 + -(vec3<f32>(x_22.x, x_22.y, x_22.z)));
  let x_31 : f32 = u_xlat0.y;
  let x_35 : f32 = u_xlat0.x;
  u_xlat9 = max(abs(x_31), abs(x_35));
  let x_40 : f32 = u_xlat0.z;
  let x_42 : f32 = u_xlat9;
  u_xlat9 = max(abs(x_40), x_42);
  let x_44 : f32 = u_xlat9;
  let x_48 : f32 = x_17.x_LightProjectionParams.z;
  u_xlat9 = (x_44 + -(x_48));
  let x_51 : f32 = u_xlat9;
  u_xlat9 = max(x_51, 0.00001f);
  let x_54 : f32 = u_xlat9;
  let x_57 : f32 = x_17.x_LightProjectionParams.w;
  u_xlat9 = (x_54 * x_57);
  let x_60 : f32 = x_17.x_LightProjectionParams.y;
  let x_61 : f32 = u_xlat9;
  u_xlat9 = (x_60 / x_61);
  let x_63 : f32 = u_xlat9;
  let x_65 : f32 = x_17.x_LightProjectionParams.x;
  u_xlat9 = (x_63 + -(x_65));
  let x_68 : f32 = u_xlat9;
  u_xlat9 = (-(x_68) + 1.0f);
  let x_74 : vec3<f32> = u_xlat0;
  let x_75 : f32 = u_xlat9;
  txVec0 = vec4<f32>(x_74.x, x_74.y, x_74.z, x_75);
  let x_90 : vec4<f32> = txVec0;
  let x_92 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_90.xyz, x_90.w);
  u_xlat0.x = x_92;
  let x_97 : f32 = x_17.x_LightShadowData.x;
  u_xlat3.x = (-(x_97) + 1.0f);
  let x_102 : f32 = u_xlat0.x;
  let x_104 : f32 = u_xlat3.x;
  let x_107 : f32 = x_17.x_LightShadowData.x;
  u_xlat0.x = ((x_102 * x_104) + x_107);
  let x_110 : vec3<f32> = vs_TEXCOORD5;
  let x_114 : vec4<f32> = x_17.unity_WorldToLight[1i];
  u_xlat3 = (vec3<f32>(x_110.y, x_110.y, x_110.y) * vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_118 : vec4<f32> = x_17.unity_WorldToLight[0i];
  let x_120 : vec3<f32> = vs_TEXCOORD5;
  let x_123 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_118.x, x_118.y, x_118.z) * vec3<f32>(x_120.x, x_120.x, x_120.x)) + x_123);
  let x_126 : vec4<f32> = x_17.unity_WorldToLight[2i];
  let x_128 : vec3<f32> = vs_TEXCOORD5;
  let x_131 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_126.x, x_126.y, x_126.z) * vec3<f32>(x_128.z, x_128.z, x_128.z)) + x_131);
  let x_133 : vec3<f32> = u_xlat3;
  let x_136 : vec4<f32> = x_17.unity_WorldToLight[3i];
  u_xlat3 = (x_133 + vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_141 : vec3<f32> = u_xlat3;
  let x_142 : vec3<f32> = u_xlat3;
  u_xlat1.x = dot(x_141, x_142);
  let x_153 : vec3<f32> = u_xlat3;
  let x_154 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_153);
  u_xlat3.x = x_154.w;
  let x_167 : vec4<f32> = u_xlat1;
  let x_169 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_167.x, x_167.x));
  u_xlat6 = x_169.x;
  let x_172 : f32 = u_xlat3.x;
  let x_173 : f32 = u_xlat6;
  u_xlat3.x = (x_172 * x_173);
  let x_177 : f32 = u_xlat0.x;
  let x_179 : f32 = u_xlat3.x;
  u_xlat0.x = (x_177 * x_179);
  let x_182 : vec3<f32> = u_xlat0;
  let x_185 : vec4<f32> = x_17.x_LightColor0;
  u_xlat0 = (vec3<f32>(x_182.x, x_182.x, x_182.x) * vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_195 : vec4<f32> = vs_TEXCOORD0;
  let x_197 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_195.x, x_195.y));
  let x_198 : vec3<f32> = vec3<f32>(x_197.x, x_197.y, x_197.w);
  let x_199 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_202 : f32 = u_xlat1.z;
  let x_204 : f32 = u_xlat1.x;
  u_xlat1.x = (x_202 * x_204);
  let x_207 : vec4<f32> = u_xlat1;
  let x_214 : vec2<f32> = ((vec2<f32>(x_207.x, x_207.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_215 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_214.x, x_214.y, x_215.z, x_215.w);
  let x_218 : vec4<f32> = u_xlat1;
  let x_221 : vec4<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_218.y, x_218.y, x_218.y) * vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_225 : vec4<f32> = vs_TEXCOORD2;
  let x_227 : vec4<f32> = u_xlat1;
  let x_230 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_225.x, x_225.y, x_225.z) * vec3<f32>(x_227.x, x_227.x, x_227.x)) + x_230);
  let x_232 : vec4<f32> = u_xlat1;
  let x_234 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(vec2<f32>(x_232.x, x_232.y), vec2<f32>(x_234.x, x_234.y));
  let x_237 : f32 = u_xlat9;
  u_xlat9 = min(x_237, 1.0f);
  let x_239 : f32 = u_xlat9;
  u_xlat9 = (-(x_239) + 1.0f);
  let x_242 : f32 = u_xlat9;
  u_xlat9 = sqrt(x_242);
  let x_245 : vec4<f32> = vs_TEXCOORD4;
  let x_247 : f32 = u_xlat9;
  let x_250 : vec3<f32> = u_xlat2;
  let x_251 : vec3<f32> = ((vec3<f32>(x_245.x, x_245.y, x_245.z) * vec3<f32>(x_247, x_247, x_247)) + x_250);
  let x_252 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_256 : f32 = vs_TEXCOORD2.w;
  u_xlat2.x = x_256;
  let x_259 : f32 = vs_TEXCOORD3.w;
  u_xlat2.y = x_259;
  let x_262 : f32 = vs_TEXCOORD4.w;
  u_xlat2.z = x_262;
  let x_264 : vec4<f32> = u_xlat1;
  let x_266 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_264.x, x_264.y, x_264.z), x_266);
  let x_268 : f32 = u_xlat9;
  u_xlat9 = clamp(x_268, 0.0f, 1.0f);
  let x_271 : f32 = u_xlat9;
  let x_273 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_271, x_271, x_271) * x_273);
  let x_276 : vec4<f32> = vs_TEXCOORD1;
  let x_279 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(-(vec3<f32>(x_276.x, x_276.y, x_276.z)), vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_282 : f32 = u_xlat9;
  let x_283 : f32 = u_xlat9;
  u_xlat9 = (x_282 + x_283);
  let x_285 : vec4<f32> = u_xlat1;
  let x_287 : f32 = u_xlat9;
  let x_291 : vec4<f32> = vs_TEXCOORD1;
  let x_294 : vec3<f32> = ((vec3<f32>(x_285.x, x_285.y, x_285.z) * -(vec3<f32>(x_287, x_287, x_287))) + -(vec3<f32>(x_291.x, x_291.y, x_291.z)));
  let x_295 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_297 : vec4<f32> = u_xlat1;
  let x_299 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_297.x, x_297.y, x_297.z), x_299);
  let x_301 : f32 = u_xlat9;
  let x_302 : f32 = u_xlat9;
  u_xlat9 = (x_301 * x_302);
  let x_304 : f32 = u_xlat9;
  let x_305 : f32 = u_xlat9;
  u_xlat1.x = (x_304 * x_305);
  let x_315 : vec4<f32> = vs_TEXCOORD0;
  let x_317 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_315.x, x_315.y));
  u_xlat7 = vec2<f32>(x_317.x, x_317.w);
  let x_320 : f32 = u_xlat7.y;
  let x_324 : f32 = x_17.x_GlossMapScale;
  u_xlat1.y = ((-(x_320) * x_324) + 1.0f);
  let x_333 : vec4<f32> = u_xlat1;
  let x_335 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_333.x, x_333.y));
  u_xlat9 = x_335.x;
  let x_337 : f32 = u_xlat9;
  u_xlat9 = (x_337 * 16.0f);
  let x_345 : vec4<f32> = vs_TEXCOORD0;
  let x_347 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_345.x, x_345.y));
  let x_348 : vec3<f32> = vec3<f32>(x_347.x, x_347.y, x_347.z);
  let x_349 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_348.x, x_348.y, x_349.z, x_348.z);
  let x_353 : vec4<f32> = x_17.x_Color;
  let x_355 : vec4<f32> = u_xlat1;
  u_xlat2 = ((vec3<f32>(x_353.x, x_353.y, x_353.z) * vec3<f32>(x_355.x, x_355.y, x_355.w)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_361 : vec4<f32> = u_xlat1;
  let x_364 : vec4<f32> = x_17.x_Color;
  let x_366 : vec3<f32> = (vec3<f32>(x_361.x, x_361.y, x_361.w) * vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_367 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_366.x, x_366.y, x_367.z, x_366.z);
  let x_369 : vec2<f32> = u_xlat7;
  let x_371 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_369.x, x_369.x, x_369.x) * x_371) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_377 : f32 = u_xlat7.x;
  u_xlat7.x = ((-(x_377) * 0.959999979f) + 0.959999979f);
  let x_383 : f32 = u_xlat9;
  let x_385 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_383, x_383, x_383) * x_385);
  let x_387 : vec4<f32> = u_xlat1;
  let x_389 : vec2<f32> = u_xlat7;
  let x_392 : vec3<f32> = u_xlat2;
  let x_393 : vec3<f32> = ((vec3<f32>(x_387.x, x_387.y, x_387.w) * vec3<f32>(x_389.x, x_389.x, x_389.x)) + x_392);
  let x_394 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_398 : vec3<f32> = u_xlat0;
  let x_399 : vec4<f32> = u_xlat1;
  let x_401 : vec3<f32> = (x_398 * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_TEXCOORD5_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

