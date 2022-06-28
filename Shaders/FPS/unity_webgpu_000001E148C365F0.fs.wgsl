type Arr = array<mat4x4<f32>, 4u>;

struct PGlobals {
  unity_WorldToShadow : Arr,
  x_LightShadowData : vec4<f32>,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_GlossMapScale : f32,
  @size(12)
  padding : u32,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_21 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat9 : f32;

@group(0) @binding(4) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_LightTexture0 : sampler;

var<private> u_xlatb1 : bool;

@group(0) @binding(5) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(14) var sampler_LightTextureB0 : sampler;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(7) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat6 : f32;

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
  let x_209 : vec4<f32> = vs_TEXCOORD0;
  let x_211 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_209.x, x_209.y));
  let x_212 : vec3<f32> = vec3<f32>(x_211.x, x_211.y, x_211.w);
  let x_213 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_216 : f32 = u_xlat1.z;
  let x_218 : f32 = u_xlat1.x;
  u_xlat1.x = (x_216 * x_218);
  let x_221 : vec4<f32> = u_xlat1;
  let x_228 : vec2<f32> = ((vec2<f32>(x_221.x, x_221.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_229 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_228.x, x_228.y, x_229.z, x_229.w);
  let x_232 : vec4<f32> = u_xlat1;
  let x_235 : vec4<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_232.y, x_232.y, x_232.y) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_239 : vec4<f32> = vs_TEXCOORD2;
  let x_241 : vec4<f32> = u_xlat1;
  let x_244 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_239.x, x_239.y, x_239.z) * vec3<f32>(x_241.x, x_241.x, x_241.x)) + x_244);
  let x_246 : vec4<f32> = u_xlat1;
  let x_248 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(vec2<f32>(x_246.x, x_246.y), vec2<f32>(x_248.x, x_248.y));
  let x_251 : f32 = u_xlat9;
  u_xlat9 = min(x_251, 1.0f);
  let x_253 : f32 = u_xlat9;
  u_xlat9 = (-(x_253) + 1.0f);
  let x_256 : f32 = u_xlat9;
  u_xlat9 = sqrt(x_256);
  let x_259 : vec4<f32> = vs_TEXCOORD4;
  let x_261 : f32 = u_xlat9;
  let x_264 : vec3<f32> = u_xlat2;
  let x_265 : vec3<f32> = ((vec3<f32>(x_259.x, x_259.y, x_259.z) * vec3<f32>(x_261, x_261, x_261)) + x_264);
  let x_266 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  let x_270 : f32 = vs_TEXCOORD2.w;
  u_xlat2.x = x_270;
  let x_273 : f32 = vs_TEXCOORD3.w;
  u_xlat2.y = x_273;
  let x_277 : f32 = vs_TEXCOORD4.w;
  u_xlat2.z = x_277;
  let x_279 : vec4<f32> = u_xlat1;
  let x_281 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_279.x, x_279.y, x_279.z), x_281);
  let x_283 : f32 = u_xlat9;
  u_xlat9 = clamp(x_283, 0.0f, 1.0f);
  let x_285 : f32 = u_xlat9;
  let x_287 : vec4<f32> = u_xlat0;
  let x_289 : vec3<f32> = (vec3<f32>(x_285, x_285, x_285) * vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_293 : vec4<f32> = vs_TEXCOORD1;
  let x_296 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(-(vec3<f32>(x_293.x, x_293.y, x_293.z)), vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_299 : f32 = u_xlat9;
  let x_300 : f32 = u_xlat9;
  u_xlat9 = (x_299 + x_300);
  let x_302 : vec4<f32> = u_xlat1;
  let x_304 : f32 = u_xlat9;
  let x_308 : vec4<f32> = vs_TEXCOORD1;
  let x_311 : vec3<f32> = ((vec3<f32>(x_302.x, x_302.y, x_302.z) * -(vec3<f32>(x_304, x_304, x_304))) + -(vec3<f32>(x_308.x, x_308.y, x_308.z)));
  let x_312 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : vec4<f32> = u_xlat1;
  let x_316 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_314.x, x_314.y, x_314.z), x_316);
  let x_318 : f32 = u_xlat9;
  let x_319 : f32 = u_xlat9;
  u_xlat9 = (x_318 * x_319);
  let x_321 : f32 = u_xlat9;
  let x_322 : f32 = u_xlat9;
  u_xlat1.x = (x_321 * x_322);
  let x_332 : vec4<f32> = vs_TEXCOORD0;
  let x_334 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_332.x, x_332.y));
  u_xlat7 = vec2<f32>(x_334.x, x_334.w);
  let x_337 : f32 = u_xlat7.y;
  let x_341 : f32 = x_21.x_GlossMapScale;
  u_xlat1.y = ((-(x_337) * x_341) + 1.0f);
  let x_350 : vec4<f32> = u_xlat1;
  let x_352 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_350.x, x_350.y));
  u_xlat9 = x_352.x;
  let x_354 : f32 = u_xlat9;
  u_xlat9 = (x_354 * 16.0f);
  let x_362 : vec4<f32> = vs_TEXCOORD0;
  let x_364 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_362.x, x_362.y));
  let x_365 : vec3<f32> = vec3<f32>(x_364.x, x_364.y, x_364.z);
  let x_366 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_365.x, x_365.y, x_366.z, x_365.z);
  let x_369 : vec4<f32> = x_21.x_Color;
  let x_371 : vec4<f32> = u_xlat1;
  u_xlat2 = ((vec3<f32>(x_369.x, x_369.y, x_369.z) * vec3<f32>(x_371.x, x_371.y, x_371.w)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_377 : vec4<f32> = u_xlat1;
  let x_380 : vec4<f32> = x_21.x_Color;
  let x_382 : vec3<f32> = (vec3<f32>(x_377.x, x_377.y, x_377.w) * vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_383 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_382.x, x_382.y, x_383.z, x_382.z);
  let x_385 : vec2<f32> = u_xlat7;
  let x_387 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_385.x, x_385.x, x_385.x) * x_387) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_393 : f32 = u_xlat7.x;
  u_xlat7.x = ((-(x_393) * 0.959999979f) + 0.959999979f);
  let x_399 : f32 = u_xlat9;
  let x_401 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_399, x_399, x_399) * x_401);
  let x_403 : vec4<f32> = u_xlat1;
  let x_405 : vec2<f32> = u_xlat7;
  let x_408 : vec3<f32> = u_xlat2;
  let x_409 : vec3<f32> = ((vec3<f32>(x_403.x, x_403.y, x_403.w) * vec3<f32>(x_405.x, x_405.x, x_405.x)) + x_408);
  let x_410 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_409.x, x_409.y, x_409.z, x_410.w);
  let x_414 : vec4<f32> = u_xlat0;
  let x_416 : vec4<f32> = u_xlat1;
  let x_418 : vec3<f32> = (vec3<f32>(x_414.x, x_414.y, x_414.z) * vec3<f32>(x_416.x, x_416.y, x_416.z));
  let x_419 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
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

