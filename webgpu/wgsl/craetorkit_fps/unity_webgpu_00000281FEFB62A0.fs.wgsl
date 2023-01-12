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

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

@group(0) @binding(6) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(8) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(4) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(12) var sampler_LightTexture0 : sampler;

@group(0) @binding(3) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_LightTextureB0 : sampler;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicGlossMap : sampler;

@group(0) @binding(5) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_NHxRoughness : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat9 : f32;
  var txVec0 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat7 : vec2<f32>;
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
  let x_140 : vec3<f32> = u_xlat3;
  let x_141 : vec3<f32> = u_xlat3;
  u_xlat1.x = dot(x_140, x_141);
  let x_152 : vec3<f32> = u_xlat3;
  let x_153 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_152);
  u_xlat3.x = x_153.w;
  let x_166 : vec4<f32> = u_xlat1;
  let x_168 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_166.x, x_166.x));
  u_xlat6 = x_168.x;
  let x_171 : f32 = u_xlat3.x;
  let x_172 : f32 = u_xlat6;
  u_xlat3.x = (x_171 * x_172);
  let x_176 : f32 = u_xlat0.x;
  let x_178 : f32 = u_xlat3.x;
  u_xlat0.x = (x_176 * x_178);
  let x_181 : vec3<f32> = u_xlat0;
  let x_184 : vec4<f32> = x_17.x_LightColor0;
  u_xlat0 = (vec3<f32>(x_181.x, x_181.x, x_181.x) * vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_194 : vec4<f32> = vs_TEXCOORD0;
  let x_196 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_194.x, x_194.y));
  let x_197 : vec3<f32> = vec3<f32>(x_196.x, x_196.y, x_196.w);
  let x_198 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  let x_201 : f32 = u_xlat1.z;
  let x_203 : f32 = u_xlat1.x;
  u_xlat1.x = (x_201 * x_203);
  let x_206 : vec4<f32> = u_xlat1;
  let x_213 : vec2<f32> = ((vec2<f32>(x_206.x, x_206.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_214 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_213.x, x_213.y, x_214.z, x_214.w);
  let x_217 : vec4<f32> = u_xlat1;
  let x_220 : vec4<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_217.y, x_217.y, x_217.y) * vec3<f32>(x_220.x, x_220.y, x_220.z));
  let x_224 : vec4<f32> = vs_TEXCOORD2;
  let x_226 : vec4<f32> = u_xlat1;
  let x_229 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_224.x, x_224.y, x_224.z) * vec3<f32>(x_226.x, x_226.x, x_226.x)) + x_229);
  let x_231 : vec4<f32> = u_xlat1;
  let x_233 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(vec2<f32>(x_231.x, x_231.y), vec2<f32>(x_233.x, x_233.y));
  let x_236 : f32 = u_xlat9;
  u_xlat9 = min(x_236, 1.0f);
  let x_238 : f32 = u_xlat9;
  u_xlat9 = (-(x_238) + 1.0f);
  let x_241 : f32 = u_xlat9;
  u_xlat9 = sqrt(x_241);
  let x_244 : vec4<f32> = vs_TEXCOORD4;
  let x_246 : f32 = u_xlat9;
  let x_249 : vec3<f32> = u_xlat2;
  let x_250 : vec3<f32> = ((vec3<f32>(x_244.x, x_244.y, x_244.z) * vec3<f32>(x_246, x_246, x_246)) + x_249);
  let x_251 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_255 : f32 = vs_TEXCOORD2.w;
  u_xlat2.x = x_255;
  let x_258 : f32 = vs_TEXCOORD3.w;
  u_xlat2.y = x_258;
  let x_261 : f32 = vs_TEXCOORD4.w;
  u_xlat2.z = x_261;
  let x_263 : vec4<f32> = u_xlat1;
  let x_265 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_263.x, x_263.y, x_263.z), x_265);
  let x_267 : f32 = u_xlat9;
  u_xlat9 = clamp(x_267, 0.0f, 1.0f);
  let x_270 : f32 = u_xlat9;
  let x_272 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_270, x_270, x_270) * x_272);
  let x_275 : vec4<f32> = vs_TEXCOORD1;
  let x_278 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(-(vec3<f32>(x_275.x, x_275.y, x_275.z)), vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_281 : f32 = u_xlat9;
  let x_282 : f32 = u_xlat9;
  u_xlat9 = (x_281 + x_282);
  let x_284 : vec4<f32> = u_xlat1;
  let x_286 : f32 = u_xlat9;
  let x_290 : vec4<f32> = vs_TEXCOORD1;
  let x_293 : vec3<f32> = ((vec3<f32>(x_284.x, x_284.y, x_284.z) * -(vec3<f32>(x_286, x_286, x_286))) + -(vec3<f32>(x_290.x, x_290.y, x_290.z)));
  let x_294 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_296 : vec4<f32> = u_xlat1;
  let x_298 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_296.x, x_296.y, x_296.z), x_298);
  let x_300 : f32 = u_xlat9;
  let x_301 : f32 = u_xlat9;
  u_xlat9 = (x_300 * x_301);
  let x_303 : f32 = u_xlat9;
  let x_304 : f32 = u_xlat9;
  u_xlat1.x = (x_303 * x_304);
  let x_314 : vec4<f32> = vs_TEXCOORD0;
  let x_316 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_314.x, x_314.y));
  u_xlat7 = vec2<f32>(x_316.x, x_316.w);
  let x_319 : f32 = u_xlat7.y;
  let x_323 : f32 = x_17.x_GlossMapScale;
  u_xlat1.y = ((-(x_319) * x_323) + 1.0f);
  let x_332 : vec4<f32> = u_xlat1;
  let x_334 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_332.x, x_332.y));
  u_xlat9 = x_334.x;
  let x_336 : f32 = u_xlat9;
  u_xlat9 = (x_336 * 16.0f);
  let x_344 : vec4<f32> = vs_TEXCOORD0;
  let x_346 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_344.x, x_344.y));
  let x_347 : vec3<f32> = vec3<f32>(x_346.x, x_346.y, x_346.z);
  let x_348 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_347.x, x_347.y, x_348.z, x_347.z);
  let x_352 : vec4<f32> = x_17.x_Color;
  let x_354 : vec4<f32> = u_xlat1;
  u_xlat2 = ((vec3<f32>(x_352.x, x_352.y, x_352.z) * vec3<f32>(x_354.x, x_354.y, x_354.w)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_360 : vec4<f32> = u_xlat1;
  let x_363 : vec4<f32> = x_17.x_Color;
  let x_365 : vec3<f32> = (vec3<f32>(x_360.x, x_360.y, x_360.w) * vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_365.x, x_365.y, x_366.z, x_365.z);
  let x_368 : vec2<f32> = u_xlat7;
  let x_370 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_368.x, x_368.x, x_368.x) * x_370) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_376 : f32 = u_xlat7.x;
  u_xlat7.x = ((-(x_376) * 0.959999979f) + 0.959999979f);
  let x_382 : f32 = u_xlat9;
  let x_384 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_382, x_382, x_382) * x_384);
  let x_386 : vec4<f32> = u_xlat1;
  let x_388 : vec2<f32> = u_xlat7;
  let x_391 : vec3<f32> = u_xlat2;
  let x_392 : vec3<f32> = ((vec3<f32>(x_386.x, x_386.y, x_386.w) * vec3<f32>(x_388.x, x_388.x, x_388.x)) + x_391);
  let x_393 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_397 : vec3<f32> = u_xlat0;
  let x_398 : vec4<f32> = u_xlat1;
  let x_400 : vec3<f32> = (x_397 * vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_401 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
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

