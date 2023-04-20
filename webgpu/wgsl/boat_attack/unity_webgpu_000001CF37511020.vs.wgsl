diagnostic(off, derivative_uniformity);

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

struct VGlobals {
  /* @offset(0) */
  x_Time : vec4<f32>,
  /* @offset(16) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(32) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(48) */
  unity_FogParams : vec4<f32>,
  /* @offset(64) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(128) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(192) */
  x_MaxDepth : f32,
  /* @offset(196) */
  x_MaxWaveHeight : f32,
  /* @offset(208) */
  x_VeraslWater_DepthCamParams : vec4<f32>,
  /* @offset(224) */
  x_WaveCount : u32,
}

alias Arr_1 = array<u32, 6u>;

struct x_WaveDataBuffer_type {
  /* @offset(0) */
  value : Arr_1,
}

alias RTArr = array<x_WaveDataBuffer_type>;

struct x_WaveDataBuffer {
  /* @offset(0) */
  x_WaveDataBuffer_buf : RTArr,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_21 : UnityPerDraw;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(5) var<uniform> x_73 : VGlobals;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat26 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat25 : vec2<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat37 : f32;

var<private> u_xlat15 : f32;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(4) var x_WaterDepthMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_WaterDepthMap_linear_clamp : sampler;

var<private> u_xlat14 : f32;

var<private> u_xlat12 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(20) var<storage, read> x_798 : x_WaveDataBuffer;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat40 : f32;

var<private> u_xlat41 : f32;

var<private> u_xlat42 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat21 : vec2<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat20 : vec2<f32>;

@group(0) @binding(1) var x_WaterFXMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenTextures_linear_clamp : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec2<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlatu39 : u32;

var<private> u_xlatb40 : bool;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlatu_loop_1 : u32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_27 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_29 : vec3<f32> = (vec3<f32>(x_13.y, x_13.y, x_13.y) * vec3<f32>(x_27.x, x_27.y, x_27.z));
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_29.x, x_29.y, x_29.z, x_30.w);
  let x_33 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_35 : vec4<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  let x_40 : vec3<f32> = ((vec3<f32>(x_33.x, x_33.y, x_33.z) * vec3<f32>(x_35.x, x_35.x, x_35.x)) + vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_40.x, x_40.y, x_40.z, x_41.w);
  let x_45 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_47 : vec4<f32> = in_POSITION0;
  let x_50 : vec4<f32> = u_xlat0;
  let x_52 : vec3<f32> = ((vec3<f32>(x_45.x, x_45.y, x_45.z) * vec3<f32>(x_47.z, x_47.z, x_47.z)) + vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_53 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_52.x, x_52.y, x_52.z, x_53.w);
  let x_55 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_61 : vec3<f32> = (vec3<f32>(x_55.x, x_55.y, x_55.z) + vec3<f32>(x_59.x, x_59.y, x_59.z));
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_61.x, x_61.y, x_61.z, x_62.w);
  let x_66 : vec4<f32> = u_xlat0;
  let x_75 : vec4<f32> = x_73.x_Time;
  let x_77 : vec2<f32> = ((vec2<f32>(x_66.x, x_66.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_75.y, x_75.y));
  let x_78 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_77.x, x_77.y, x_78.z, x_78.w);
  let x_80 : vec4<f32> = u_xlat1;
  let x_82 : vec2<f32> = floor(vec2<f32>(x_80.x, x_80.y));
  let x_83 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_82.x, x_82.y);
  let x_85 : vec4<f32> = u_xlat1;
  let x_87 : vec2<f32> = fract(vec2<f32>(x_85.x, x_85.y));
  let x_88 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_87.x, x_87.y, x_88.z, x_88.w);
  let x_91 : vec4<f32> = u_xlat1;
  let x_93 : vec4<f32> = u_xlat1;
  let x_95 : vec2<f32> = (vec2<f32>(x_91.x, x_91.y) * vec2<f32>(x_93.x, x_93.y));
  let x_96 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_95.x, x_95.y, x_96.z, x_96.w);
  let x_100 : vec4<f32> = u_xlat1;
  u_xlat26 = ((-(vec2<f32>(x_100.x, x_100.y)) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(3.0f, 3.0f));
  let x_109 : vec2<f32> = u_xlat26;
  let x_110 : vec4<f32> = u_xlat2;
  let x_112 : vec2<f32> = (x_109 * vec2<f32>(x_110.x, x_110.y));
  let x_113 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_112.x, x_112.y, x_113.z, x_113.w);
  let x_115 : vec4<f32> = u_xlat1;
  u_xlat26.x = dot(vec2<f32>(x_115.z, x_115.w), vec2<f32>(127.09999847412109375f, 311.70001220703125f));
  let x_124 : vec4<f32> = u_xlat1;
  u_xlat26.y = dot(vec2<f32>(x_124.z, x_124.w), vec2<f32>(269.5f, 183.3000030517578125f));
  let x_133 : vec2<f32> = u_xlat26;
  let x_134 : vec2<f32> = sin(x_133);
  let x_135 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_134.x, x_134.y, x_135.z, x_135.w);
  let x_137 : vec4<f32> = u_xlat3;
  u_xlat26 = (vec2<f32>(x_137.x, x_137.y) * vec2<f32>(43758.546875f, 43758.546875f));
  let x_142 : vec2<f32> = u_xlat26;
  u_xlat26 = fract(x_142);
  let x_144 : vec2<f32> = u_xlat26;
  u_xlat26 = ((x_144 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_149 : vec2<f32> = u_xlat26;
  let x_150 : vec4<f32> = u_xlat1;
  u_xlat26.x = dot(x_149, vec2<f32>(x_150.x, x_150.y));
  let x_154 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_154.z, x_154.w, x_154.z, x_154.w) + vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f));
  let x_161 : vec4<f32> = u_xlat3;
  u_xlat38 = dot(vec2<f32>(x_161.x, x_161.y), vec2<f32>(127.09999847412109375f, 311.70001220703125f));
  let x_164 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec2<f32>(x_164.x, x_164.y), vec2<f32>(269.5f, 183.3000030517578125f));
  let x_169 : f32 = u_xlat38;
  u_xlat4.x = sin(x_169);
  let x_173 : f32 = u_xlat3.x;
  u_xlat4.y = sin(x_173);
  let x_176 : vec4<f32> = u_xlat4;
  let x_178 : vec2<f32> = (vec2<f32>(x_176.x, x_176.y) * vec2<f32>(43758.546875f, 43758.546875f));
  let x_179 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_178.x, x_178.y, x_179.z, x_179.w);
  let x_181 : vec4<f32> = u_xlat3;
  let x_183 : vec2<f32> = fract(vec2<f32>(x_181.x, x_181.y));
  let x_184 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_183.x, x_183.y, x_184.z, x_184.w);
  let x_186 : vec4<f32> = u_xlat3;
  let x_189 : vec2<f32> = ((vec2<f32>(x_186.x, x_186.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_190 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_189.x, x_189.y, x_190.z, x_190.w);
  let x_192 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_192.x, x_192.y, x_192.x, x_192.y) + vec4<f32>(-1.0f, -0.0f, -0.0f, -1.0f));
  let x_197 : vec4<f32> = u_xlat3;
  let x_199 : vec4<f32> = u_xlat4;
  u_xlat38 = dot(vec2<f32>(x_197.x, x_197.y), vec2<f32>(x_199.x, x_199.y));
  let x_203 : f32 = u_xlat26.x;
  let x_205 : f32 = u_xlat38;
  u_xlat38 = (-(x_203) + x_205);
  let x_208 : f32 = u_xlat2.x;
  let x_209 : f32 = u_xlat38;
  let x_212 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_208 * x_209) + x_212);
  let x_215 : vec4<f32> = u_xlat3;
  u_xlat38 = dot(vec2<f32>(x_215.z, x_215.w), vec2<f32>(127.09999847412109375f, 311.70001220703125f));
  let x_218 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec2<f32>(x_218.z, x_218.w), vec2<f32>(269.5f, 183.3000030517578125f));
  let x_222 : f32 = u_xlat38;
  u_xlat4.x = sin(x_222);
  let x_226 : f32 = u_xlat3.x;
  u_xlat4.y = sin(x_226);
  let x_229 : vec4<f32> = u_xlat4;
  let x_231 : vec2<f32> = (vec2<f32>(x_229.x, x_229.y) * vec2<f32>(43758.546875f, 43758.546875f));
  let x_232 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_231.x, x_231.y, x_232.z, x_232.w);
  let x_234 : vec4<f32> = u_xlat3;
  let x_236 : vec2<f32> = fract(vec2<f32>(x_234.x, x_234.y));
  let x_237 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_236.x, x_236.y, x_237.z, x_237.w);
  let x_239 : vec4<f32> = u_xlat3;
  let x_242 : vec2<f32> = ((vec2<f32>(x_239.x, x_239.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_243 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_242.x, x_242.y, x_243.z, x_243.w);
  let x_245 : vec4<f32> = u_xlat3;
  let x_247 : vec4<f32> = u_xlat4;
  u_xlat38 = dot(vec2<f32>(x_245.x, x_245.y), vec2<f32>(x_247.z, x_247.w));
  let x_250 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_250 + vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_253 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(vec2<f32>(x_253.z, x_253.w), vec2<f32>(127.09999847412109375f, 311.70001220703125f));
  let x_258 : vec4<f32> = u_xlat1;
  u_xlat25.x = dot(vec2<f32>(x_258.z, x_258.w), vec2<f32>(269.5f, 183.3000030517578125f));
  let x_263 : f32 = u_xlat3.x;
  u_xlat3.x = sin(x_263);
  let x_267 : f32 = u_xlat25.x;
  u_xlat3.y = sin(x_267);
  let x_270 : vec4<f32> = u_xlat3;
  u_xlat25 = (vec2<f32>(x_270.x, x_270.y) * vec2<f32>(43758.546875f, 43758.546875f));
  let x_273 : vec2<f32> = u_xlat25;
  u_xlat25 = fract(x_273);
  let x_275 : vec2<f32> = u_xlat25;
  u_xlat25 = ((x_275 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_278 : vec2<f32> = u_xlat25;
  let x_279 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(x_278, vec2<f32>(x_279.x, x_279.y));
  let x_283 : f32 = u_xlat38;
  let x_286 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_283) + x_286);
  let x_290 : f32 = u_xlat2.x;
  let x_292 : f32 = u_xlat1.x;
  let x_294 : f32 = u_xlat38;
  u_xlat1.x = ((x_290 * x_292) + x_294);
  let x_298 : f32 = u_xlat26.x;
  let x_301 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_298) + x_301);
  let x_305 : f32 = u_xlat2.y;
  let x_307 : f32 = u_xlat1.x;
  let x_310 : f32 = u_xlat26.x;
  u_xlat1.x = ((x_305 * x_307) + x_310);
  let x_315 : vec4<f32> = u_xlat0;
  let x_318 : vec4<f32> = x_73.x_Time;
  let x_320 : vec2<f32> = (vec2<f32>(x_315.x, x_315.z) + vec2<f32>(x_318.y, x_318.y));
  let x_321 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_320.x, x_320.y, x_321.z);
  let x_323 : vec3<f32> = u_xlat13;
  let x_325 : vec2<f32> = floor(vec2<f32>(x_323.x, x_323.y));
  let x_326 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_325.x, x_325.y, x_326.z, x_326.w);
  let x_328 : vec3<f32> = u_xlat13;
  let x_330 : vec2<f32> = fract(vec2<f32>(x_328.x, x_328.y));
  let x_331 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_330.x, x_330.y, x_331.z);
  let x_333 : vec3<f32> = u_xlat13;
  let x_335 : vec3<f32> = u_xlat13;
  u_xlat26 = (vec2<f32>(x_333.x, x_333.y) * vec2<f32>(x_335.x, x_335.y));
  let x_338 : vec3<f32> = u_xlat13;
  let x_342 : vec2<f32> = ((-(vec2<f32>(x_338.x, x_338.y)) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(3.0f, 3.0f));
  let x_343 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_342.x, x_342.y, x_343.z, x_343.w);
  let x_345 : vec2<f32> = u_xlat26;
  let x_346 : vec4<f32> = u_xlat3;
  u_xlat26 = (x_345 * vec2<f32>(x_346.x, x_346.y));
  let x_350 : vec4<f32> = u_xlat2;
  u_xlat37 = dot(vec2<f32>(x_350.x, x_350.y), vec2<f32>(127.09999847412109375f, 311.70001220703125f));
  let x_353 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(vec2<f32>(x_353.x, x_353.y), vec2<f32>(269.5f, 183.3000030517578125f));
  let x_357 : f32 = u_xlat37;
  u_xlat4.x = sin(x_357);
  let x_361 : f32 = u_xlat3.x;
  u_xlat4.y = sin(x_361);
  let x_364 : vec4<f32> = u_xlat4;
  let x_366 : vec2<f32> = (vec2<f32>(x_364.x, x_364.y) * vec2<f32>(43758.546875f, 43758.546875f));
  let x_367 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_366.x, x_366.y, x_367.z, x_367.w);
  let x_369 : vec4<f32> = u_xlat3;
  let x_371 : vec2<f32> = fract(vec2<f32>(x_369.x, x_369.y));
  let x_372 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_371.x, x_371.y, x_372.z, x_372.w);
  let x_374 : vec4<f32> = u_xlat3;
  let x_377 : vec2<f32> = ((vec2<f32>(x_374.x, x_374.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_378 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_377.x, x_377.y, x_378.z, x_378.w);
  let x_380 : vec4<f32> = u_xlat3;
  let x_382 : vec3<f32> = u_xlat13;
  u_xlat37 = dot(vec2<f32>(x_380.x, x_380.y), vec2<f32>(x_382.x, x_382.y));
  let x_385 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec4<f32>(x_385.x, x_385.y, x_385.x, x_385.y) + vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f));
  let x_388 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(vec2<f32>(x_388.x, x_388.y), vec2<f32>(127.09999847412109375f, 311.70001220703125f));
  let x_392 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec2<f32>(x_392.x, x_392.y), vec2<f32>(269.5f, 183.3000030517578125f));
  let x_397 : f32 = u_xlat4.x;
  u_xlat4.x = sin(x_397);
  let x_401 : f32 = u_xlat3.x;
  u_xlat4.y = sin(x_401);
  let x_404 : vec4<f32> = u_xlat4;
  let x_406 : vec2<f32> = (vec2<f32>(x_404.x, x_404.y) * vec2<f32>(43758.546875f, 43758.546875f));
  let x_407 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_406.x, x_406.y, x_407.z, x_407.w);
  let x_409 : vec4<f32> = u_xlat3;
  let x_411 : vec2<f32> = fract(vec2<f32>(x_409.x, x_409.y));
  let x_412 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_411.x, x_411.y, x_412.z, x_412.w);
  let x_414 : vec4<f32> = u_xlat3;
  let x_417 : vec2<f32> = ((vec2<f32>(x_414.x, x_414.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_418 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_417.x, x_417.y, x_418.z, x_418.w);
  let x_420 : vec3<f32> = u_xlat13;
  u_xlat4 = (vec4<f32>(x_420.x, x_420.y, x_420.x, x_420.y) + vec4<f32>(-1.0f, -0.0f, -0.0f, -1.0f));
  let x_423 : vec4<f32> = u_xlat3;
  let x_425 : vec4<f32> = u_xlat4;
  u_xlat3.x = dot(vec2<f32>(x_423.x, x_423.y), vec2<f32>(x_425.x, x_425.y));
  let x_429 : f32 = u_xlat37;
  let x_432 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_429) + x_432);
  let x_436 : f32 = u_xlat26.x;
  let x_438 : f32 = u_xlat3.x;
  let x_440 : f32 = u_xlat37;
  u_xlat37 = ((x_436 * x_438) + x_440);
  let x_442 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec2<f32>(x_442.z, x_442.w), vec2<f32>(127.09999847412109375f, 311.70001220703125f));
  let x_446 : vec4<f32> = u_xlat3;
  u_xlat3.y = dot(vec2<f32>(x_446.z, x_446.w), vec2<f32>(269.5f, 183.3000030517578125f));
  let x_450 : vec4<f32> = u_xlat3;
  let x_452 : vec2<f32> = sin(vec2<f32>(x_450.x, x_450.y));
  let x_453 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_452.x, x_452.y, x_453.z, x_453.w);
  let x_455 : vec4<f32> = u_xlat4;
  let x_457 : vec2<f32> = (vec2<f32>(x_455.x, x_455.y) * vec2<f32>(43758.546875f, 43758.546875f));
  let x_458 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_457.x, x_457.y, x_458.z, x_458.w);
  let x_460 : vec4<f32> = u_xlat3;
  let x_462 : vec2<f32> = fract(vec2<f32>(x_460.x, x_460.y));
  let x_463 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_462.x, x_462.y, x_463.z, x_463.w);
  let x_465 : vec4<f32> = u_xlat3;
  let x_468 : vec2<f32> = ((vec2<f32>(x_465.x, x_465.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_469 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_468.x, x_468.y, x_469.z, x_469.w);
  let x_471 : vec4<f32> = u_xlat3;
  let x_473 : vec4<f32> = u_xlat4;
  u_xlat3.x = dot(vec2<f32>(x_471.x, x_471.y), vec2<f32>(x_473.z, x_473.w));
  let x_477 : vec4<f32> = u_xlat2;
  let x_480 : vec2<f32> = (vec2<f32>(x_477.x, x_477.y) + vec2<f32>(1.0f, 1.0f));
  let x_481 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_480.x, x_480.y, x_481.z, x_481.w);
  let x_484 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec2<f32>(x_484.x, x_484.y), vec2<f32>(127.09999847412109375f, 311.70001220703125f));
  let x_487 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec2<f32>(x_487.x, x_487.y), vec2<f32>(269.5f, 183.3000030517578125f));
  let x_491 : f32 = u_xlat15;
  u_xlat4.x = sin(x_491);
  let x_495 : f32 = u_xlat2.x;
  u_xlat4.y = sin(x_495);
  let x_498 : vec4<f32> = u_xlat4;
  let x_500 : vec2<f32> = (vec2<f32>(x_498.x, x_498.y) * vec2<f32>(43758.546875f, 43758.546875f));
  let x_501 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_500.x, x_500.y, x_501.z, x_501.w);
  let x_503 : vec4<f32> = u_xlat2;
  let x_505 : vec2<f32> = fract(vec2<f32>(x_503.x, x_503.y));
  let x_506 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_505.x, x_505.y, x_506.z, x_506.w);
  let x_508 : vec4<f32> = u_xlat2;
  let x_511 : vec2<f32> = ((vec2<f32>(x_508.x, x_508.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_512 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_511.x, x_511.y, x_512.z, x_512.w);
  let x_514 : vec3<f32> = u_xlat13;
  let x_516 : vec2<f32> = (vec2<f32>(x_514.x, x_514.y) + vec2<f32>(-1.0f, -1.0f));
  let x_517 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_516.x, x_516.y, x_517.z);
  let x_519 : vec4<f32> = u_xlat2;
  let x_521 : vec3<f32> = u_xlat13;
  u_xlat13.x = dot(vec2<f32>(x_519.x, x_519.y), vec2<f32>(x_521.x, x_521.y));
  let x_526 : f32 = u_xlat3.x;
  let x_529 : f32 = u_xlat13.x;
  u_xlat13.x = (-(x_526) + x_529);
  let x_533 : f32 = u_xlat26.x;
  let x_535 : f32 = u_xlat13.x;
  let x_538 : f32 = u_xlat3.x;
  u_xlat13.x = ((x_533 * x_535) + x_538);
  let x_541 : f32 = u_xlat37;
  let x_544 : f32 = u_xlat13.x;
  u_xlat13.x = (-(x_541) + x_544);
  let x_548 : f32 = u_xlat26.y;
  let x_550 : f32 = u_xlat13.x;
  let x_552 : f32 = u_xlat37;
  u_xlat13.x = ((x_548 * x_550) + x_552);
  let x_556 : f32 = u_xlat13.x;
  let x_558 : f32 = u_xlat1.x;
  u_xlat1.x = (x_556 + x_558);
  let x_562 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_562 * 0.25f) + -0.5f);
  let x_569 : f32 = u_xlat1.x;
  u_xlat1.x = (x_569 + 1.0f);
  let x_573 : vec4<f32> = x_73.x_Time;
  let x_578 : vec2<f32> = (vec2<f32>(x_573.y, x_573.y) * vec2<f32>(0.05000000074505805969f, 0.10000000149011611938f));
  let x_579 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_578.x, x_578.y, x_579.z);
  let x_581 : vec4<f32> = u_xlat0;
  let x_585 : vec3<f32> = u_xlat13;
  let x_587 : vec2<f32> = ((vec2<f32>(x_581.x, x_581.z) * vec2<f32>(0.10000000149011611938f, 0.10000000149011611938f)) + vec2<f32>(x_585.x, x_585.x));
  let x_588 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_587.x, x_588.y, x_587.y);
  let x_592 : vec4<f32> = u_xlat1;
  let x_595 : vec3<f32> = u_xlat13;
  let x_597 : vec2<f32> = ((vec2<f32>(x_592.x, x_592.x) * vec2<f32>(0.10000000149011611938f, 0.10000000149011611938f)) + vec2<f32>(x_595.x, x_595.z));
  let x_598 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_598.x, x_598.y, x_597.x, x_597.y);
  let x_600 : vec4<f32> = u_xlat0;
  let x_605 : vec3<f32> = u_xlat13;
  let x_608 : vec2<f32> = ((vec2<f32>(x_600.x, x_600.z) * vec2<f32>(0.40000000596046447754f, 0.40000000596046447754f)) + -(vec2<f32>(x_605.y, x_605.y)));
  let x_609 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_608.x, x_608.y, x_609.z);
  let x_611 : vec4<f32> = u_xlat1;
  let x_616 : vec3<f32> = u_xlat13;
  let x_618 : vec2<f32> = ((vec2<f32>(x_611.x, x_611.x) * vec2<f32>(0.20000000298023223877f, 0.20000000298023223877f)) + vec2<f32>(x_616.x, x_616.y));
  let x_619 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_618.x, x_618.y, x_619.z, x_619.w);
  let x_621 : vec4<f32> = u_xlat0;
  let x_625 : vec4<f32> = x_73.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_621.y, x_621.y, x_621.y, x_621.y) * x_625);
  let x_628 : vec4<f32> = x_73.unity_MatrixVP[0i];
  let x_629 : vec4<f32> = u_xlat0;
  let x_632 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_628 * vec4<f32>(x_629.x, x_629.x, x_629.x, x_629.x)) + x_632);
  let x_635 : vec4<f32> = x_73.unity_MatrixVP[2i];
  let x_636 : vec4<f32> = u_xlat0;
  let x_639 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_635 * vec4<f32>(x_636.z, x_636.z, x_636.z, x_636.z)) + x_639);
  let x_641 : vec4<f32> = u_xlat2;
  let x_643 : vec4<f32> = x_73.unity_MatrixVP[3i];
  u_xlat2 = (x_641 + x_643);
  u_xlat3.x = 0.5f;
  u_xlat3.z = 0.5f;
  let x_649 : f32 = x_73.x_ProjectionParams.x;
  u_xlat3.y = x_649;
  let x_651 : vec4<f32> = u_xlat2;
  let x_653 : vec4<f32> = u_xlat3;
  let x_655 : vec3<f32> = (vec3<f32>(x_651.x, x_651.y, x_651.w) * vec3<f32>(x_653.z, x_653.y, x_653.z));
  let x_656 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_659 : f32 = u_xlat4.y;
  u_xlat4.w = (x_659 * 0.5f);
  let x_663 : vec4<f32> = u_xlat4;
  let x_665 : vec4<f32> = u_xlat4;
  let x_667 : vec2<f32> = (vec2<f32>(x_663.z, x_663.z) + vec2<f32>(x_665.x, x_665.w));
  let x_668 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_667.x, x_667.y, x_668.z, x_668.w);
  let x_670 : vec4<f32> = u_xlat2;
  let x_672 : vec4<f32> = u_xlat2;
  u_xlat13 = (vec3<f32>(x_670.x, x_670.y, x_670.z) / vec3<f32>(x_672.w, x_672.w, x_672.w));
  let x_675 : vec4<f32> = u_xlat0;
  let x_680 : vec2<f32> = ((vec2<f32>(x_675.x, x_675.z) * vec2<f32>(0.00200000009499490261f, 0.00200000009499490261f)) + vec2<f32>(0.5f, 0.5f));
  let x_681 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_680.x, x_680.y, x_681.z, x_681.w);
  let x_693 : vec4<f32> = u_xlat2;
  let x_695 : vec4<f32> = textureSampleLevel(x_WaterDepthMap, sampler_WaterDepthMap_linear_clamp, vec2<f32>(x_693.x, x_693.y), 1.0f);
  u_xlat2.x = x_695.x;
  let x_699 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_699) + 1.0f);
  let x_706 : f32 = x_73.x_MaxDepth;
  let x_709 : f32 = x_73.x_VeraslWater_DepthCamParams.x;
  u_xlat14 = (x_706 + x_709);
  let x_712 : f32 = u_xlat2.x;
  let x_713 : f32 = u_xlat14;
  let x_716 : f32 = x_73.x_VeraslWater_DepthCamParams.x;
  u_xlat2.x = ((x_712 * x_713) + -(x_716));
  let x_721 : f32 = u_xlat2.x;
  u_xlat14 = (-(x_721) + 1.5f);
  let x_725 : f32 = u_xlat14;
  u_xlat14 = (x_725 * 0.40000000596046447754f);
  let x_727 : f32 = u_xlat14;
  u_xlat14 = clamp(x_727, 0.0f, 1.0f);
  let x_729 : f32 = u_xlat14;
  let x_730 : f32 = u_xlat14;
  let x_733 : f32 = u_xlat0.y;
  u_xlat0.w = ((x_729 * x_730) + x_733);
  let x_738 : f32 = u_xlat2.x;
  u_xlat12 = ((x_738 * 0.10000000149011611938f) + 0.05000000074505805969f);
  let x_741 : f32 = u_xlat12;
  let x_742 : vec2<f32> = vec2<f32>(x_741, x_741);
  let x_743 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_742.x, x_743.y, x_742.y, x_743.w);
  let x_745 : vec4<f32> = u_xlat2;
  let x_749 : vec2<f32> = clamp(vec2<f32>(x_745.x, x_745.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_750 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_749.x, x_750.y, x_749.y, x_750.w);
  let x_755 : u32 = x_73.x_WaveCount;
  u_xlat12 = f32(x_755);
  let x_757 : f32 = u_xlat12;
  u_xlat38 = (1.0f / x_757);
  let x_759 : vec4<f32> = u_xlat2;
  let x_762 : vec3<f32> = (vec3<f32>(x_759.z, x_759.z, x_759.z) * vec3<f32>(3.0f, 3.0f, 1.0f));
  let x_763 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_765 : vec4<f32> = u_xlat4;
  let x_768 : vec3<f32> = min(vec3<f32>(x_765.x, x_765.y, x_765.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_769 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_786 : u32 = u_xlatu_loop_1;
    let x_788 : u32 = x_73.x_WaveCount;
    if ((x_786 < x_788)) {
    } else {
      break;
    }
    let x_799 : u32 = u_xlatu_loop_1;
    let x_801 : u32 = x_798.x_WaveDataBuffer_buf[x_799].value[0i];
    let x_803 : u32 = u_xlatu_loop_1;
    let x_805 : u32 = x_798.x_WaveDataBuffer_buf[x_803].value[1i];
    let x_807 : u32 = u_xlatu_loop_1;
    let x_809 : u32 = x_798.x_WaveDataBuffer_buf[x_807].value[2i];
    let x_811 : u32 = u_xlatu_loop_1;
    let x_813 : u32 = x_798.x_WaveDataBuffer_buf[x_811].value[3i];
    u_xlat7 = vec4<f32>(bitcast<f32>(x_801), bitcast<f32>(x_805), bitcast<f32>(x_809), bitcast<f32>(x_813));
    let x_817 : u32 = u_xlatu_loop_1;
    let x_820 : u32 = x_798.x_WaveDataBuffer_buf[x_817].value[4i];
    let x_822 : u32 = u_xlatu_loop_1;
    let x_824 : u32 = x_798.x_WaveDataBuffer_buf[x_822].value[5i];
    let x_826 : vec2<f32> = vec2<f32>(bitcast<f32>(x_820), bitcast<f32>(x_824));
    let x_827 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_826.x, x_826.y, x_827.z);
    let x_832 : f32 = u_xlat7.z;
    u_xlat40 = (6.28318023681640625f / x_832);
    let x_835 : f32 = u_xlat40;
    u_xlat41 = (x_835 * 9.80000019073486328125f);
    let x_838 : f32 = u_xlat41;
    u_xlat41 = sqrt(x_838);
    let x_841 : f32 = u_xlat40;
    let x_843 : f32 = u_xlat7.x;
    u_xlat42 = (x_841 * x_843);
    let x_846 : f32 = u_xlat12;
    let x_847 : f32 = u_xlat42;
    u_xlat31 = (x_846 * x_847);
    let x_849 : f32 = u_xlat31;
    u_xlat31 = (1.5f / x_849);
    let x_852 : vec4<f32> = u_xlat7;
    u_xlat9 = (vec2<f32>(x_852.x, x_852.y) * vec2<f32>(10000.0f, 0.01745329238474369049f));
    let x_860 : f32 = u_xlat9.y;
    u_xlat10.x = sin(x_860);
    let x_865 : f32 = u_xlat9.y;
    u_xlat11.x = cos(x_865);
    let x_870 : f32 = u_xlat8.y;
    u_xlat19.x = (-(x_870) + 1.0f);
    let x_875 : f32 = u_xlat11.x;
    u_xlat10.z = x_875;
    let x_878 : f32 = u_xlat7.w;
    u_xlat8.z = x_878;
    let x_881 : vec4<f32> = u_xlat0;
    let x_883 : vec3<f32> = u_xlat8;
    u_xlat21 = (vec2<f32>(x_881.x, x_881.z) + -(vec2<f32>(x_883.z, x_883.x)));
    let x_887 : vec3<f32> = u_xlat8;
    let x_889 : vec2<f32> = u_xlat21;
    u_xlat21 = (vec2<f32>(x_887.y, x_887.y) * x_889);
    let x_891 : vec3<f32> = u_xlat10;
    let x_893 : vec3<f32> = u_xlat19;
    let x_896 : vec2<f32> = u_xlat21;
    let x_897 : vec2<f32> = ((vec2<f32>(x_891.x, x_891.z) * vec2<f32>(x_893.x, x_893.x)) + x_896);
    let x_898 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_897.x, x_898.y, x_897.y);
    let x_901 : vec3<f32> = u_xlat19;
    let x_903 : vec3<f32> = u_xlat19;
    u_xlat44 = dot(vec2<f32>(x_901.x, x_901.z), vec2<f32>(x_903.x, x_903.z));
    let x_906 : f32 = u_xlat44;
    u_xlat44 = inverseSqrt(x_906);
    let x_908 : vec3<f32> = u_xlat19;
    let x_910 : f32 = u_xlat44;
    let x_912 : vec2<f32> = (vec2<f32>(x_908.x, x_908.z) * vec2<f32>(x_910, x_910));
    let x_913 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_912.x, x_913.y, x_912.y);
    let x_915 : vec3<f32> = u_xlat8;
    let x_918 : vec3<f32> = u_xlat8;
    let x_921 : vec4<f32> = u_xlat0;
    let x_923 : vec2<f32> = ((-(vec2<f32>(x_915.z, x_915.x)) * vec2<f32>(x_918.y, x_918.y)) + vec2<f32>(x_921.x, x_921.z));
    let x_924 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_923.x, x_923.y, x_924.z);
    let x_926 : vec3<f32> = u_xlat19;
    let x_928 : vec3<f32> = u_xlat8;
    u_xlat8.x = dot(vec2<f32>(x_926.x, x_926.z), vec2<f32>(x_928.x, x_928.y));
    let x_932 : f32 = u_xlat41;
    let x_934 : f32 = x_73.x_Time.y;
    u_xlat41 = (x_932 * -(x_934));
    let x_938 : f32 = u_xlat8.x;
    let x_939 : f32 = u_xlat40;
    let x_941 : f32 = u_xlat41;
    u_xlat40 = ((x_938 * x_939) + x_941);
    let x_943 : f32 = u_xlat40;
    u_xlat8.x = sin(x_943);
    let x_946 : f32 = u_xlat40;
    u_xlat10.x = cos(x_946);
    let x_950 : f32 = u_xlat7.x;
    let x_951 : f32 = u_xlat31;
    u_xlat40 = (x_950 * x_951);
    let x_954 : vec3<f32> = u_xlat19;
    let x_956 : f32 = u_xlat40;
    u_xlat20 = (vec2<f32>(x_954.x, x_954.z) * vec2<f32>(x_956, x_956));
    let x_959 : vec3<f32> = u_xlat10;
    let x_961 : vec2<f32> = u_xlat20;
    let x_962 : vec2<f32> = (vec2<f32>(x_959.x, x_959.x) * x_961);
    let x_963 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_962.x, x_963.y, x_962.y);
    let x_966 : f32 = u_xlat7.x;
    let x_968 : f32 = u_xlat8.x;
    u_xlat40 = (x_966 * x_968);
    let x_970 : f32 = u_xlat38;
    let x_971 : f32 = u_xlat40;
    u_xlat11.y = (x_970 * x_971);
    let x_974 : f32 = u_xlat42;
    let x_976 : vec3<f32> = u_xlat19;
    let x_978 : vec2<f32> = (vec2<f32>(x_974, x_974) * vec2<f32>(x_976.x, x_976.z));
    let x_979 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_978.x, x_978.y, x_979.z, x_979.w);
    let x_981 : vec3<f32> = u_xlat10;
    let x_983 : vec4<f32> = u_xlat7;
    let x_985 : vec2<f32> = (vec2<f32>(x_981.x, x_981.x) * vec2<f32>(x_983.x, x_983.y));
    let x_986 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_985.x, x_985.y, x_986.z, x_986.w);
    let x_988 : vec4<f32> = u_xlat7;
    let x_990 : vec2<f32> = -(vec2<f32>(x_988.x, x_988.y));
    let x_991 : vec3<f32> = u_xlat10;
    u_xlat10 = vec3<f32>(x_990.x, x_991.y, x_990.y);
    let x_993 : f32 = u_xlat42;
    let x_994 : f32 = u_xlat31;
    u_xlat40 = (x_993 * x_994);
    let x_996 : f32 = u_xlat40;
    let x_999 : f32 = u_xlat8.x;
    u_xlat10.y = ((-(x_996) * x_999) + 1.0f);
    let x_1004 : f32 = u_xlat9.x;
    u_xlat9.x = x_1004;
    let x_1007 : f32 = u_xlat9.x;
    u_xlat9.x = clamp(x_1007, 0.0f, 1.0f);
    let x_1010 : vec3<f32> = u_xlat11;
    let x_1011 : vec2<f32> = u_xlat9;
    let x_1014 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_1010 * vec3<f32>(x_1011.x, x_1011.x, x_1011.x)) + x_1014);
    let x_1016 : vec3<f32> = u_xlat10;
    let x_1017 : f32 = u_xlat38;
    let x_1020 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1016 * vec3<f32>(x_1017, x_1017, x_1017)) + x_1020);

    continuing {
      let x_1022 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1022 + bitcast<u32>(1i));
    }
  }
  let x_1024 : vec4<f32> = u_xlat4;
  let x_1026 : vec3<f32> = u_xlat5;
  let x_1027 : vec3<f32> = (vec3<f32>(x_1024.x, x_1024.y, x_1024.z) * x_1026);
  let x_1028 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
  u_xlat2.y = 1.0f;
  let x_1031 : vec4<f32> = u_xlat2;
  let x_1033 : vec3<f32> = u_xlat6;
  u_xlat8 = (vec3<f32>(x_1031.x, x_1031.y, x_1031.z) * x_1033);
  let x_1035 : vec3<f32> = u_xlat5;
  let x_1036 : vec4<f32> = u_xlat4;
  let x_1039 : vec4<f32> = u_xlat0;
  let x_1041 : vec3<f32> = ((x_1035 * vec3<f32>(x_1036.x, x_1036.y, x_1036.z)) + vec3<f32>(x_1039.x, x_1039.w, x_1039.z));
  let x_1042 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
  let x_1049 : vec3<f32> = u_xlat13;
  let x_1051 : vec4<f32> = textureSampleLevel(x_WaterFXMap, sampler_ScreenTextures_linear_clamp, vec2<f32>(x_1049.x, x_1049.y), 0.0f);
  u_xlat38 = x_1051.w;
  let x_1053 : f32 = u_xlat38;
  u_xlat38 = ((x_1053 * 2.0f) + -1.0f);
  let x_1057 : f32 = u_xlat0.y;
  let x_1058 : f32 = u_xlat38;
  u_xlat0.w = (x_1057 + x_1058);
  let x_1061 : vec4<f32> = u_xlat0;
  let x_1064 : vec4<f32> = x_73.unity_MatrixVP[1i];
  u_xlat4 = (vec4<f32>(x_1061.w, x_1061.w, x_1061.w, x_1061.w) * x_1064);
  let x_1067 : vec4<f32> = x_73.unity_MatrixVP[0i];
  let x_1068 : vec4<f32> = u_xlat0;
  let x_1071 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_1067 * vec4<f32>(x_1068.x, x_1068.x, x_1068.x, x_1068.x)) + x_1071);
  let x_1074 : vec4<f32> = x_73.unity_MatrixVP[2i];
  let x_1075 : vec4<f32> = u_xlat0;
  let x_1078 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_1074 * vec4<f32>(x_1075.z, x_1075.z, x_1075.z, x_1075.z)) + x_1078);
  let x_1080 : vec4<f32> = u_xlat4;
  let x_1082 : vec4<f32> = x_73.unity_MatrixVP[3i];
  u_xlat4 = (x_1080 + x_1082);
  let x_1084 : vec4<f32> = u_xlat3;
  let x_1086 : vec4<f32> = u_xlat4;
  let x_1088 : vec3<f32> = (vec3<f32>(x_1084.x, x_1084.y, x_1084.z) * vec3<f32>(x_1086.x, x_1086.y, x_1086.w));
  let x_1089 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1089.w);
  let x_1092 : f32 = u_xlat3.y;
  u_xlat3.w = (x_1092 * 0.5f);
  let x_1096 : vec4<f32> = u_xlat3;
  let x_1098 : vec4<f32> = u_xlat3;
  let x_1100 : vec2<f32> = (vec2<f32>(x_1096.z, x_1096.z) + vec2<f32>(x_1098.x, x_1098.w));
  let x_1101 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_1100.x, x_1100.y, x_1101.z, x_1101.w);
  let x_1103 : vec4<f32> = u_xlat0;
  let x_1108 : vec3<f32> = x_73.x_WorldSpaceCameraPos;
  let x_1109 : vec3<f32> = (-(vec3<f32>(x_1103.x, x_1103.w, x_1103.z)) + x_1108);
  let x_1110 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1109.x, x_1109.y, x_1109.z, x_1110.w);
  let x_1112 : vec4<f32> = u_xlat3;
  let x_1114 : vec4<f32> = u_xlat3;
  u_xlat12 = dot(vec3<f32>(x_1112.x, x_1112.y, x_1112.z), vec3<f32>(x_1114.x, x_1114.y, x_1114.z));
  let x_1117 : f32 = u_xlat12;
  u_xlat38 = max(x_1117, 1.17549435e-38f);
  let x_1120 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_1120);
  let x_1124 : f32 = u_xlat38;
  let x_1126 : vec4<f32> = u_xlat3;
  vs_TEXCOORD2 = (vec3<f32>(x_1124, x_1124, x_1124) * vec3<f32>(x_1126.x, x_1126.y, x_1126.z));
  let x_1130 : f32 = u_xlat4.z;
  let x_1132 : f32 = x_73.x_ProjectionParams.y;
  u_xlat38 = (x_1130 / x_1132);
  let x_1134 : f32 = u_xlat38;
  u_xlat38 = (-(x_1134) + 1.0f);
  let x_1137 : f32 = u_xlat38;
  let x_1139 : f32 = x_73.x_ProjectionParams.z;
  u_xlat38 = (x_1137 * x_1139);
  let x_1141 : f32 = u_xlat38;
  u_xlat38 = max(x_1141, 0.0f);
  let x_1145 : f32 = u_xlat38;
  let x_1147 : f32 = x_73.unity_FogParams.x;
  vs_TEXCOORD4.x = (x_1145 * x_1147);
  let x_1151 : vec4<f32> = u_xlat0;
  let x_1154 : vec4<f32> = x_73.unity_MatrixV[1i];
  u_xlat5 = (vec3<f32>(x_1151.w, x_1151.w, x_1151.w) * vec3<f32>(x_1154.x, x_1154.y, x_1154.z));
  let x_1158 : vec4<f32> = x_73.unity_MatrixV[0i];
  let x_1160 : vec4<f32> = u_xlat0;
  let x_1163 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_1158.x, x_1158.y, x_1158.z) * vec3<f32>(x_1160.x, x_1160.x, x_1160.x)) + x_1163);
  let x_1166 : vec4<f32> = x_73.unity_MatrixV[2i];
  let x_1168 : vec4<f32> = u_xlat0;
  let x_1171 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_1166.x, x_1166.y, x_1166.z) * vec3<f32>(x_1168.z, x_1168.z, x_1168.z)) + x_1171);
  let x_1173 : vec3<f32> = u_xlat5;
  let x_1175 : vec4<f32> = x_73.unity_MatrixV[3i];
  u_xlat5 = (x_1173 + vec3<f32>(x_1175.x, x_1175.y, x_1175.z));
  let x_1178 : vec3<f32> = u_xlat5;
  let x_1179 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_1178 / vec3<f32>(x_1179.z, x_1179.z, x_1179.z));
  let x_1182 : vec3<f32> = u_xlat5;
  let x_1183 : vec3<f32> = u_xlat5;
  u_xlat38 = dot(x_1182, x_1183);
  let x_1186 : f32 = u_xlat38;
  vs_TEXCOORD5.x = sqrt(x_1186);
  let x_1189 : f32 = u_xlat12;
  vs_TEXCOORD5.y = sqrt(x_1189);
  let x_1193 : f32 = u_xlat7.y;
  let x_1196 : f32 = x_73.x_MaxWaveHeight;
  u_xlat12 = (x_1193 / x_1196);
  let x_1198 : f32 = u_xlat12;
  vs_TEXCOORD5.z = ((x_1198 * 0.5f) + 0.5f);
  let x_1203 : f32 = u_xlat7.z;
  let x_1205 : f32 = u_xlat7.x;
  vs_TEXCOORD5.w = (x_1203 + x_1205);
  let x_1208 : vec4<f32> = u_xlat3;
  let x_1212 : vec2<f32> = (vec2<f32>(x_1208.x, x_1208.z) * vec2<f32>(0.00499999988824129105f, 0.00499999988824129105f));
  let x_1213 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1212.x, x_1212.y, x_1213.z, x_1213.w);
  let x_1215 : vec4<f32> = u_xlat3;
  let x_1217 : vec4<f32> = u_xlat3;
  u_xlat12 = dot(vec2<f32>(x_1215.x, x_1215.y), vec2<f32>(x_1217.x, x_1217.y));
  let x_1220 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_1220);
  let x_1222 : f32 = u_xlat12;
  u_xlat12 = (x_1222 + -0.25f);
  let x_1225 : f32 = u_xlat12;
  u_xlat12 = clamp(x_1225, 0.0f, 1.0f);
  let x_1227 : vec3<f32> = u_xlat6;
  let x_1229 : vec4<f32> = u_xlat2;
  let x_1233 : vec3<f32> = ((-(x_1227) * vec3<f32>(x_1229.x, x_1229.y, x_1229.z)) + vec3<f32>(0.0f, 1.0f, 0.0f));
  let x_1234 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1233.x, x_1233.y, x_1233.z, x_1234.w);
  let x_1237 : f32 = u_xlat12;
  let x_1239 : vec4<f32> = u_xlat2;
  let x_1242 : vec3<f32> = u_xlat8;
  vs_NORMAL0 = ((vec3<f32>(x_1237, x_1237, x_1237) * vec3<f32>(x_1239.x, x_1239.y, x_1239.z)) + x_1242);
  let x_1244 : vec4<f32> = u_xlat4;
  let x_1245 : vec2<f32> = vec2<f32>(x_1244.z, x_1244.w);
  let x_1246 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_1246.x, x_1246.y, x_1245.x, x_1245.y);
  let x_1252 : vec4<f32> = u_xlat4;
  gl_Position = x_1252;
  let x_1255 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = vec3<f32>(x_1255.x, x_1255.w, x_1255.z);
  let x_1258 : vec3<f32> = u_xlat13;
  vs_TEXCOORD3 = x_1258;
  let x_1260 : f32 = u_xlat1.x;
  vs_TEXCOORD4.y = x_1260;
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(7)
  vs_TEXCOORD6_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(5)
  vs_TEXCOORD4_1 : vec2<f32>,
  @location(6)
  vs_TEXCOORD5_1 : vec4<f32>,
  @location(2)
  vs_NORMAL0_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD6, vs_TEXCOORD2, vs_TEXCOORD4, vs_TEXCOORD5, vs_NORMAL0, gl_Position, vs_TEXCOORD1, vs_TEXCOORD3);
}


