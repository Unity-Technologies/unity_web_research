type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

struct VGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MaxDepth : f32,
  x_MaxWaveHeight : f32,
  @size(8)
  padding_1 : u32,
  x_VeraslWater_DepthCamParams : vec4<f32>,
  x_WaveCount : u32,
}

type Arr_1 = array<u32, 6u>;

struct x_WaveDataBuffer_type {
  value : Arr_1,
}

type RTArr = array<x_WaveDataBuffer_type>;

struct x_WaveDataBuffer {
  x_WaveDataBuffer_buf : RTArr,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_21 : UnityPerDraw;

@group(1) @binding(5) var<uniform> x_73 : VGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(4) var x_WaterDepthMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_WaterDepthMap_linear_clamp : sampler;

@group(0) @binding(19) var<storage, read> x_798 : x_WaveDataBuffer;

@group(0) @binding(1) var x_WaterFXMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenTextures_linear_clamp : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec2<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat26 : vec2<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat38 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat25 : vec2<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat15 : f32;
  var u_xlat14 : f32;
  var u_xlat12 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat42 : f32;
  var u_xlat31 : f32;
  var u_xlat9 : vec2<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlat21 : vec2<f32>;
  var u_xlat44 : f32;
  var u_xlat20 : vec2<f32>;
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
  u_xlat26.x = dot(vec2<f32>(x_115.z, x_115.w), vec2<f32>(127.099998474f, 311.700012207f));
  let x_124 : vec4<f32> = u_xlat1;
  u_xlat26.y = dot(vec2<f32>(x_124.z, x_124.w), vec2<f32>(269.5f, 183.300003052f));
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
  u_xlat38 = dot(vec2<f32>(x_161.x, x_161.y), vec2<f32>(127.099998474f, 311.700012207f));
  let x_164 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec2<f32>(x_164.x, x_164.y), vec2<f32>(269.5f, 183.300003052f));
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
  u_xlat38 = dot(vec2<f32>(x_215.z, x_215.w), vec2<f32>(127.099998474f, 311.700012207f));
  let x_218 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec2<f32>(x_218.z, x_218.w), vec2<f32>(269.5f, 183.300003052f));
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
  u_xlat3.x = dot(vec2<f32>(x_253.z, x_253.w), vec2<f32>(127.099998474f, 311.700012207f));
  let x_258 : vec4<f32> = u_xlat1;
  u_xlat25.x = dot(vec2<f32>(x_258.z, x_258.w), vec2<f32>(269.5f, 183.300003052f));
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
  u_xlat37 = dot(vec2<f32>(x_350.x, x_350.y), vec2<f32>(127.099998474f, 311.700012207f));
  let x_353 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(vec2<f32>(x_353.x, x_353.y), vec2<f32>(269.5f, 183.300003052f));
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
  u_xlat4.x = dot(vec2<f32>(x_388.x, x_388.y), vec2<f32>(127.099998474f, 311.700012207f));
  let x_392 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec2<f32>(x_392.x, x_392.y), vec2<f32>(269.5f, 183.300003052f));
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
  u_xlat3.x = dot(vec2<f32>(x_442.z, x_442.w), vec2<f32>(127.099998474f, 311.700012207f));
  let x_446 : vec4<f32> = u_xlat3;
  u_xlat3.y = dot(vec2<f32>(x_446.z, x_446.w), vec2<f32>(269.5f, 183.300003052f));
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
  u_xlat15 = dot(vec2<f32>(x_484.x, x_484.y), vec2<f32>(127.099998474f, 311.700012207f));
  let x_487 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec2<f32>(x_487.x, x_487.y), vec2<f32>(269.5f, 183.300003052f));
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
  let x_578 : vec2<f32> = (vec2<f32>(x_573.y, x_573.y) * vec2<f32>(0.050000001f, 0.100000001f));
  let x_579 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_578.x, x_578.y, x_579.z);
  let x_581 : vec4<f32> = u_xlat0;
  let x_585 : vec3<f32> = u_xlat13;
  let x_587 : vec2<f32> = ((vec2<f32>(x_581.x, x_581.z) * vec2<f32>(0.100000001f, 0.100000001f)) + vec2<f32>(x_585.x, x_585.x));
  let x_588 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_587.x, x_588.y, x_587.y);
  let x_592 : vec4<f32> = u_xlat1;
  let x_595 : vec3<f32> = u_xlat13;
  let x_597 : vec2<f32> = ((vec2<f32>(x_592.x, x_592.x) * vec2<f32>(0.100000001f, 0.100000001f)) + vec2<f32>(x_595.x, x_595.z));
  let x_598 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_598.x, x_598.y, x_597.x, x_597.y);
  let x_600 : vec4<f32> = u_xlat0;
  let x_605 : vec3<f32> = u_xlat13;
  let x_608 : vec2<f32> = ((vec2<f32>(x_600.x, x_600.z) * vec2<f32>(0.400000006f, 0.400000006f)) + -(vec2<f32>(x_605.y, x_605.y)));
  let x_609 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_608.x, x_608.y, x_609.z);
  let x_611 : vec4<f32> = u_xlat1;
  let x_616 : vec3<f32> = u_xlat13;
  let x_618 : vec2<f32> = ((vec2<f32>(x_611.x, x_611.x) * vec2<f32>(0.200000003f, 0.200000003f)) + vec2<f32>(x_616.x, x_616.y));
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
  let x_680 : vec2<f32> = ((vec2<f32>(x_675.x, x_675.z) * vec2<f32>(0.002f, 0.002f)) + vec2<f32>(0.5f, 0.5f));
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
  u_xlat14 = (x_725 * 0.400000006f);
  let x_727 : f32 = u_xlat14;
  u_xlat14 = clamp(x_727, 0.0f, 1.0f);
  let x_729 : f32 = u_xlat14;
  let x_730 : f32 = u_xlat14;
  let x_733 : f32 = u_xlat0.y;
  u_xlat0.w = ((x_729 * x_730) + x_733);
  let x_738 : f32 = u_xlat2.x;
  u_xlat12 = ((x_738 * 0.100000001f) + 0.050000001f);
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
    let x_819 : u32 = x_798.x_WaveDataBuffer_buf[x_817].value[4i];
    let x_821 : u32 = u_xlatu_loop_1;
    let x_823 : u32 = x_798.x_WaveDataBuffer_buf[x_821].value[5i];
    let x_825 : vec2<f32> = vec2<f32>(bitcast<f32>(x_819), bitcast<f32>(x_823));
    let x_826 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_825.x, x_825.y, x_826.z);
    let x_831 : f32 = u_xlat7.z;
    u_xlat40 = (6.283180237f / x_831);
    let x_834 : f32 = u_xlat40;
    u_xlat41 = (x_834 * 9.800000191f);
    let x_837 : f32 = u_xlat41;
    u_xlat41 = sqrt(x_837);
    let x_840 : f32 = u_xlat40;
    let x_842 : f32 = u_xlat7.x;
    u_xlat42 = (x_840 * x_842);
    let x_845 : f32 = u_xlat12;
    let x_846 : f32 = u_xlat42;
    u_xlat31 = (x_845 * x_846);
    let x_848 : f32 = u_xlat31;
    u_xlat31 = (1.5f / x_848);
    let x_851 : vec4<f32> = u_xlat7;
    u_xlat9 = (vec2<f32>(x_851.x, x_851.y) * vec2<f32>(10000.0f, 0.017453292f));
    let x_859 : f32 = u_xlat9.y;
    u_xlat10.x = sin(x_859);
    let x_864 : f32 = u_xlat9.y;
    u_xlat11.x = cos(x_864);
    let x_869 : f32 = u_xlat8.y;
    u_xlat19.x = (-(x_869) + 1.0f);
    let x_874 : f32 = u_xlat11.x;
    u_xlat10.z = x_874;
    let x_877 : f32 = u_xlat7.w;
    u_xlat8.z = x_877;
    let x_880 : vec4<f32> = u_xlat0;
    let x_882 : vec3<f32> = u_xlat8;
    u_xlat21 = (vec2<f32>(x_880.x, x_880.z) + -(vec2<f32>(x_882.z, x_882.x)));
    let x_886 : vec3<f32> = u_xlat8;
    let x_888 : vec2<f32> = u_xlat21;
    u_xlat21 = (vec2<f32>(x_886.y, x_886.y) * x_888);
    let x_890 : vec3<f32> = u_xlat10;
    let x_892 : vec3<f32> = u_xlat19;
    let x_895 : vec2<f32> = u_xlat21;
    let x_896 : vec2<f32> = ((vec2<f32>(x_890.x, x_890.z) * vec2<f32>(x_892.x, x_892.x)) + x_895);
    let x_897 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_896.x, x_897.y, x_896.y);
    let x_900 : vec3<f32> = u_xlat19;
    let x_902 : vec3<f32> = u_xlat19;
    u_xlat44 = dot(vec2<f32>(x_900.x, x_900.z), vec2<f32>(x_902.x, x_902.z));
    let x_905 : f32 = u_xlat44;
    u_xlat44 = inverseSqrt(x_905);
    let x_907 : vec3<f32> = u_xlat19;
    let x_909 : f32 = u_xlat44;
    let x_911 : vec2<f32> = (vec2<f32>(x_907.x, x_907.z) * vec2<f32>(x_909, x_909));
    let x_912 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_911.x, x_912.y, x_911.y);
    let x_914 : vec3<f32> = u_xlat8;
    let x_917 : vec3<f32> = u_xlat8;
    let x_920 : vec4<f32> = u_xlat0;
    let x_922 : vec2<f32> = ((-(vec2<f32>(x_914.z, x_914.x)) * vec2<f32>(x_917.y, x_917.y)) + vec2<f32>(x_920.x, x_920.z));
    let x_923 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_922.x, x_922.y, x_923.z);
    let x_925 : vec3<f32> = u_xlat19;
    let x_927 : vec3<f32> = u_xlat8;
    u_xlat8.x = dot(vec2<f32>(x_925.x, x_925.z), vec2<f32>(x_927.x, x_927.y));
    let x_931 : f32 = u_xlat41;
    let x_933 : f32 = x_73.x_Time.y;
    u_xlat41 = (x_931 * -(x_933));
    let x_937 : f32 = u_xlat8.x;
    let x_938 : f32 = u_xlat40;
    let x_940 : f32 = u_xlat41;
    u_xlat40 = ((x_937 * x_938) + x_940);
    let x_942 : f32 = u_xlat40;
    u_xlat8.x = sin(x_942);
    let x_945 : f32 = u_xlat40;
    u_xlat10.x = cos(x_945);
    let x_949 : f32 = u_xlat7.x;
    let x_950 : f32 = u_xlat31;
    u_xlat40 = (x_949 * x_950);
    let x_953 : vec3<f32> = u_xlat19;
    let x_955 : f32 = u_xlat40;
    u_xlat20 = (vec2<f32>(x_953.x, x_953.z) * vec2<f32>(x_955, x_955));
    let x_958 : vec3<f32> = u_xlat10;
    let x_960 : vec2<f32> = u_xlat20;
    let x_961 : vec2<f32> = (vec2<f32>(x_958.x, x_958.x) * x_960);
    let x_962 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_961.x, x_962.y, x_961.y);
    let x_965 : f32 = u_xlat7.x;
    let x_967 : f32 = u_xlat8.x;
    u_xlat40 = (x_965 * x_967);
    let x_969 : f32 = u_xlat38;
    let x_970 : f32 = u_xlat40;
    u_xlat11.y = (x_969 * x_970);
    let x_973 : f32 = u_xlat42;
    let x_975 : vec3<f32> = u_xlat19;
    let x_977 : vec2<f32> = (vec2<f32>(x_973, x_973) * vec2<f32>(x_975.x, x_975.z));
    let x_978 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_977.x, x_977.y, x_978.z, x_978.w);
    let x_980 : vec3<f32> = u_xlat10;
    let x_982 : vec4<f32> = u_xlat7;
    let x_984 : vec2<f32> = (vec2<f32>(x_980.x, x_980.x) * vec2<f32>(x_982.x, x_982.y));
    let x_985 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_984.x, x_984.y, x_985.z, x_985.w);
    let x_987 : vec4<f32> = u_xlat7;
    let x_989 : vec2<f32> = -(vec2<f32>(x_987.x, x_987.y));
    let x_990 : vec3<f32> = u_xlat10;
    u_xlat10 = vec3<f32>(x_989.x, x_990.y, x_989.y);
    let x_992 : f32 = u_xlat42;
    let x_993 : f32 = u_xlat31;
    u_xlat40 = (x_992 * x_993);
    let x_995 : f32 = u_xlat40;
    let x_998 : f32 = u_xlat8.x;
    u_xlat10.y = ((-(x_995) * x_998) + 1.0f);
    let x_1003 : f32 = u_xlat9.x;
    u_xlat9.x = x_1003;
    let x_1006 : f32 = u_xlat9.x;
    u_xlat9.x = clamp(x_1006, 0.0f, 1.0f);
    let x_1009 : vec3<f32> = u_xlat11;
    let x_1010 : vec2<f32> = u_xlat9;
    let x_1013 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_1009 * vec3<f32>(x_1010.x, x_1010.x, x_1010.x)) + x_1013);
    let x_1015 : vec3<f32> = u_xlat10;
    let x_1016 : f32 = u_xlat38;
    let x_1019 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1015 * vec3<f32>(x_1016, x_1016, x_1016)) + x_1019);

    continuing {
      let x_1021 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1021 + bitcast<u32>(1i));
    }
  }
  let x_1023 : vec4<f32> = u_xlat4;
  let x_1025 : vec3<f32> = u_xlat5;
  let x_1026 : vec3<f32> = (vec3<f32>(x_1023.x, x_1023.y, x_1023.z) * x_1025);
  let x_1027 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1027.w);
  u_xlat2.y = 1.0f;
  let x_1030 : vec4<f32> = u_xlat2;
  let x_1032 : vec3<f32> = u_xlat6;
  u_xlat8 = (vec3<f32>(x_1030.x, x_1030.y, x_1030.z) * x_1032);
  let x_1034 : vec3<f32> = u_xlat5;
  let x_1035 : vec4<f32> = u_xlat4;
  let x_1038 : vec4<f32> = u_xlat0;
  let x_1040 : vec3<f32> = ((x_1034 * vec3<f32>(x_1035.x, x_1035.y, x_1035.z)) + vec3<f32>(x_1038.x, x_1038.w, x_1038.z));
  let x_1041 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1041.w);
  let x_1048 : vec3<f32> = u_xlat13;
  let x_1050 : vec4<f32> = textureSampleLevel(x_WaterFXMap, sampler_ScreenTextures_linear_clamp, vec2<f32>(x_1048.x, x_1048.y), 0.0f);
  u_xlat38 = x_1050.w;
  let x_1052 : f32 = u_xlat38;
  u_xlat38 = ((x_1052 * 2.0f) + -1.0f);
  let x_1056 : f32 = u_xlat0.y;
  let x_1057 : f32 = u_xlat38;
  u_xlat0.w = (x_1056 + x_1057);
  let x_1060 : vec4<f32> = u_xlat0;
  let x_1063 : vec4<f32> = x_73.unity_MatrixVP[1i];
  u_xlat4 = (vec4<f32>(x_1060.w, x_1060.w, x_1060.w, x_1060.w) * x_1063);
  let x_1066 : vec4<f32> = x_73.unity_MatrixVP[0i];
  let x_1067 : vec4<f32> = u_xlat0;
  let x_1070 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_1066 * vec4<f32>(x_1067.x, x_1067.x, x_1067.x, x_1067.x)) + x_1070);
  let x_1073 : vec4<f32> = x_73.unity_MatrixVP[2i];
  let x_1074 : vec4<f32> = u_xlat0;
  let x_1077 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_1073 * vec4<f32>(x_1074.z, x_1074.z, x_1074.z, x_1074.z)) + x_1077);
  let x_1079 : vec4<f32> = u_xlat4;
  let x_1081 : vec4<f32> = x_73.unity_MatrixVP[3i];
  u_xlat4 = (x_1079 + x_1081);
  let x_1083 : vec4<f32> = u_xlat3;
  let x_1085 : vec4<f32> = u_xlat4;
  let x_1087 : vec3<f32> = (vec3<f32>(x_1083.x, x_1083.y, x_1083.z) * vec3<f32>(x_1085.x, x_1085.y, x_1085.w));
  let x_1088 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1088.w);
  let x_1091 : f32 = u_xlat3.y;
  u_xlat3.w = (x_1091 * 0.5f);
  let x_1095 : vec4<f32> = u_xlat3;
  let x_1097 : vec4<f32> = u_xlat3;
  let x_1099 : vec2<f32> = (vec2<f32>(x_1095.z, x_1095.z) + vec2<f32>(x_1097.x, x_1097.w));
  let x_1100 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_1099.x, x_1099.y, x_1100.z, x_1100.w);
  let x_1102 : vec4<f32> = u_xlat0;
  let x_1107 : vec3<f32> = x_73.x_WorldSpaceCameraPos;
  let x_1108 : vec3<f32> = (-(vec3<f32>(x_1102.x, x_1102.w, x_1102.z)) + x_1107);
  let x_1109 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
  let x_1111 : vec4<f32> = u_xlat3;
  let x_1113 : vec4<f32> = u_xlat3;
  u_xlat12 = dot(vec3<f32>(x_1111.x, x_1111.y, x_1111.z), vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
  let x_1116 : f32 = u_xlat12;
  u_xlat38 = max(x_1116, 1.17549435e-37f);
  let x_1119 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_1119);
  let x_1123 : f32 = u_xlat38;
  let x_1125 : vec4<f32> = u_xlat3;
  vs_TEXCOORD2 = (vec3<f32>(x_1123, x_1123, x_1123) * vec3<f32>(x_1125.x, x_1125.y, x_1125.z));
  let x_1128 : vec4<f32> = u_xlat0;
  let x_1131 : vec4<f32> = x_73.unity_MatrixV[1i];
  u_xlat5 = (vec3<f32>(x_1128.w, x_1128.w, x_1128.w) * vec3<f32>(x_1131.x, x_1131.y, x_1131.z));
  let x_1135 : vec4<f32> = x_73.unity_MatrixV[0i];
  let x_1137 : vec4<f32> = u_xlat0;
  let x_1140 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_1135.x, x_1135.y, x_1135.z) * vec3<f32>(x_1137.x, x_1137.x, x_1137.x)) + x_1140);
  let x_1143 : vec4<f32> = x_73.unity_MatrixV[2i];
  let x_1145 : vec4<f32> = u_xlat0;
  let x_1148 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_1143.x, x_1143.y, x_1143.z) * vec3<f32>(x_1145.z, x_1145.z, x_1145.z)) + x_1148);
  let x_1150 : vec3<f32> = u_xlat5;
  let x_1152 : vec4<f32> = x_73.unity_MatrixV[3i];
  u_xlat5 = (x_1150 + vec3<f32>(x_1152.x, x_1152.y, x_1152.z));
  let x_1155 : vec3<f32> = u_xlat5;
  let x_1156 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_1155 / vec3<f32>(x_1156.z, x_1156.z, x_1156.z));
  let x_1159 : vec3<f32> = u_xlat5;
  let x_1160 : vec3<f32> = u_xlat5;
  u_xlat38 = dot(x_1159, x_1160);
  let x_1163 : f32 = u_xlat38;
  vs_TEXCOORD5.x = sqrt(x_1163);
  let x_1167 : f32 = u_xlat12;
  vs_TEXCOORD5.y = sqrt(x_1167);
  let x_1171 : f32 = u_xlat7.y;
  let x_1174 : f32 = x_73.x_MaxWaveHeight;
  u_xlat12 = (x_1171 / x_1174);
  let x_1176 : f32 = u_xlat12;
  vs_TEXCOORD5.z = ((x_1176 * 0.5f) + 0.5f);
  let x_1181 : f32 = u_xlat7.z;
  let x_1183 : f32 = u_xlat7.x;
  vs_TEXCOORD5.w = (x_1181 + x_1183);
  let x_1186 : vec4<f32> = u_xlat3;
  let x_1190 : vec2<f32> = (vec2<f32>(x_1186.x, x_1186.z) * vec2<f32>(0.005f, 0.005f));
  let x_1191 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1190.x, x_1190.y, x_1191.z, x_1191.w);
  let x_1193 : vec4<f32> = u_xlat3;
  let x_1195 : vec4<f32> = u_xlat3;
  u_xlat12 = dot(vec2<f32>(x_1193.x, x_1193.y), vec2<f32>(x_1195.x, x_1195.y));
  let x_1198 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_1198);
  let x_1200 : f32 = u_xlat12;
  u_xlat12 = (x_1200 + -0.25f);
  let x_1203 : f32 = u_xlat12;
  u_xlat12 = clamp(x_1203, 0.0f, 1.0f);
  let x_1205 : vec3<f32> = u_xlat6;
  let x_1207 : vec4<f32> = u_xlat2;
  let x_1211 : vec3<f32> = ((-(x_1205) * vec3<f32>(x_1207.x, x_1207.y, x_1207.z)) + vec3<f32>(0.0f, 1.0f, 0.0f));
  let x_1212 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1211.x, x_1211.y, x_1211.z, x_1212.w);
  let x_1215 : f32 = u_xlat12;
  let x_1217 : vec4<f32> = u_xlat2;
  let x_1220 : vec3<f32> = u_xlat8;
  vs_NORMAL0 = ((vec3<f32>(x_1215, x_1215, x_1215) * vec3<f32>(x_1217.x, x_1217.y, x_1217.z)) + x_1220);
  let x_1222 : vec4<f32> = u_xlat4;
  let x_1223 : vec2<f32> = vec2<f32>(x_1222.z, x_1222.w);
  let x_1224 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_1224.x, x_1224.y, x_1223.x, x_1223.y);
  let x_1230 : vec4<f32> = u_xlat4;
  gl_Position = x_1230;
  let x_1233 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = vec3<f32>(x_1233.x, x_1233.w, x_1233.z);
  let x_1236 : vec3<f32> = u_xlat13;
  vs_TEXCOORD3 = x_1236;
  vs_TEXCOORD4.x = 0.0f;
  let x_1242 : f32 = u_xlat1.x;
  vs_TEXCOORD4.y = x_1242;
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(6)
  vs_TEXCOORD6_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(5)
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
  return main_out(vs_TEXCOORD0, vs_TEXCOORD6, vs_TEXCOORD2, vs_TEXCOORD5, vs_NORMAL0, gl_Position, vs_TEXCOORD1, vs_TEXCOORD3);
}

