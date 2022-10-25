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

type Arr_1 = array<vec4<f32>, 20u>;

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
  @size(12)
  padding_2 : u32,
  waveData : Arr_1,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_21 : UnityPerDraw;

@group(1) @binding(5) var<uniform> x_75 : VGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(4) var x_WaterDepthMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_WaterDepthMap_linear_clamp : sampler;

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
  var u_xlat24 : vec2<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat35 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat23 : vec2<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat14 : f32;
  var u_xlat13 : f32;
  var u_xlat11 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatu36 : u32;
  var u_xlatb37 : bool;
  var u_xlatu7 : vec2<u32>;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var u_xlat39 : f32;
  var u_xlat29 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat19 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
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
  let x_77 : vec4<f32> = x_75.x_Time;
  let x_79 : vec2<f32> = ((vec2<f32>(x_66.x, x_66.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_77.y, x_77.y));
  let x_80 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_79.x, x_79.y, x_80.z, x_80.w);
  let x_82 : vec4<f32> = u_xlat1;
  let x_84 : vec2<f32> = floor(vec2<f32>(x_82.x, x_82.y));
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_85.x, x_85.y, x_84.x, x_84.y);
  let x_87 : vec4<f32> = u_xlat1;
  let x_89 : vec2<f32> = fract(vec2<f32>(x_87.x, x_87.y));
  let x_90 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_89.x, x_89.y, x_90.z, x_90.w);
  let x_93 : vec4<f32> = u_xlat1;
  let x_95 : vec4<f32> = u_xlat1;
  let x_97 : vec2<f32> = (vec2<f32>(x_93.x, x_93.y) * vec2<f32>(x_95.x, x_95.y));
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_98.z, x_98.w);
  let x_102 : vec4<f32> = u_xlat1;
  u_xlat24 = ((-(vec2<f32>(x_102.x, x_102.y)) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(3.0f, 3.0f));
  let x_111 : vec2<f32> = u_xlat24;
  let x_112 : vec4<f32> = u_xlat2;
  let x_114 : vec2<f32> = (x_111 * vec2<f32>(x_112.x, x_112.y));
  let x_115 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_114.x, x_114.y, x_115.z, x_115.w);
  let x_117 : vec4<f32> = u_xlat1;
  u_xlat24.x = dot(vec2<f32>(x_117.z, x_117.w), vec2<f32>(127.099998474f, 311.700012207f));
  let x_126 : vec4<f32> = u_xlat1;
  u_xlat24.y = dot(vec2<f32>(x_126.z, x_126.w), vec2<f32>(269.5f, 183.300003052f));
  let x_135 : vec2<f32> = u_xlat24;
  let x_136 : vec2<f32> = sin(x_135);
  let x_137 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_136.x, x_136.y, x_137.z, x_137.w);
  let x_139 : vec4<f32> = u_xlat3;
  u_xlat24 = (vec2<f32>(x_139.x, x_139.y) * vec2<f32>(43758.546875f, 43758.546875f));
  let x_144 : vec2<f32> = u_xlat24;
  u_xlat24 = fract(x_144);
  let x_146 : vec2<f32> = u_xlat24;
  u_xlat24 = ((x_146 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_151 : vec2<f32> = u_xlat24;
  let x_152 : vec4<f32> = u_xlat1;
  u_xlat24.x = dot(x_151, vec2<f32>(x_152.x, x_152.y));
  let x_156 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_156.z, x_156.w, x_156.z, x_156.w) + vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f));
  let x_163 : vec4<f32> = u_xlat3;
  u_xlat35 = dot(vec2<f32>(x_163.x, x_163.y), vec2<f32>(127.099998474f, 311.700012207f));
  let x_166 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec2<f32>(x_166.x, x_166.y), vec2<f32>(269.5f, 183.300003052f));
  let x_171 : f32 = u_xlat35;
  u_xlat4.x = sin(x_171);
  let x_175 : f32 = u_xlat3.x;
  u_xlat4.y = sin(x_175);
  let x_178 : vec4<f32> = u_xlat4;
  let x_180 : vec2<f32> = (vec2<f32>(x_178.x, x_178.y) * vec2<f32>(43758.546875f, 43758.546875f));
  let x_181 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_180.x, x_180.y, x_181.z, x_181.w);
  let x_183 : vec4<f32> = u_xlat3;
  let x_185 : vec2<f32> = fract(vec2<f32>(x_183.x, x_183.y));
  let x_186 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_185.x, x_185.y, x_186.z, x_186.w);
  let x_188 : vec4<f32> = u_xlat3;
  let x_191 : vec2<f32> = ((vec2<f32>(x_188.x, x_188.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_192 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_191.x, x_191.y, x_192.z, x_192.w);
  let x_194 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_194.x, x_194.y, x_194.x, x_194.y) + vec4<f32>(-1.0f, -0.0f, -0.0f, -1.0f));
  let x_199 : vec4<f32> = u_xlat3;
  let x_201 : vec4<f32> = u_xlat4;
  u_xlat35 = dot(vec2<f32>(x_199.x, x_199.y), vec2<f32>(x_201.x, x_201.y));
  let x_205 : f32 = u_xlat24.x;
  let x_207 : f32 = u_xlat35;
  u_xlat35 = (-(x_205) + x_207);
  let x_210 : f32 = u_xlat2.x;
  let x_211 : f32 = u_xlat35;
  let x_214 : f32 = u_xlat24.x;
  u_xlat24.x = ((x_210 * x_211) + x_214);
  let x_217 : vec4<f32> = u_xlat3;
  u_xlat35 = dot(vec2<f32>(x_217.z, x_217.w), vec2<f32>(127.099998474f, 311.700012207f));
  let x_220 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec2<f32>(x_220.z, x_220.w), vec2<f32>(269.5f, 183.300003052f));
  let x_224 : f32 = u_xlat35;
  u_xlat4.x = sin(x_224);
  let x_228 : f32 = u_xlat3.x;
  u_xlat4.y = sin(x_228);
  let x_231 : vec4<f32> = u_xlat4;
  let x_233 : vec2<f32> = (vec2<f32>(x_231.x, x_231.y) * vec2<f32>(43758.546875f, 43758.546875f));
  let x_234 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_233.x, x_233.y, x_234.z, x_234.w);
  let x_236 : vec4<f32> = u_xlat3;
  let x_238 : vec2<f32> = fract(vec2<f32>(x_236.x, x_236.y));
  let x_239 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_238.x, x_238.y, x_239.z, x_239.w);
  let x_241 : vec4<f32> = u_xlat3;
  let x_244 : vec2<f32> = ((vec2<f32>(x_241.x, x_241.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_245 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_244.x, x_244.y, x_245.z, x_245.w);
  let x_247 : vec4<f32> = u_xlat3;
  let x_249 : vec4<f32> = u_xlat4;
  u_xlat35 = dot(vec2<f32>(x_247.x, x_247.y), vec2<f32>(x_249.z, x_249.w));
  let x_252 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_252 + vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_255 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(vec2<f32>(x_255.z, x_255.w), vec2<f32>(127.099998474f, 311.700012207f));
  let x_260 : vec4<f32> = u_xlat1;
  u_xlat23.x = dot(vec2<f32>(x_260.z, x_260.w), vec2<f32>(269.5f, 183.300003052f));
  let x_265 : f32 = u_xlat3.x;
  u_xlat3.x = sin(x_265);
  let x_269 : f32 = u_xlat23.x;
  u_xlat3.y = sin(x_269);
  let x_272 : vec4<f32> = u_xlat3;
  u_xlat23 = (vec2<f32>(x_272.x, x_272.y) * vec2<f32>(43758.546875f, 43758.546875f));
  let x_275 : vec2<f32> = u_xlat23;
  u_xlat23 = fract(x_275);
  let x_277 : vec2<f32> = u_xlat23;
  u_xlat23 = ((x_277 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_280 : vec2<f32> = u_xlat23;
  let x_281 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(x_280, vec2<f32>(x_281.x, x_281.y));
  let x_285 : f32 = u_xlat35;
  let x_288 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_285) + x_288);
  let x_292 : f32 = u_xlat2.x;
  let x_294 : f32 = u_xlat1.x;
  let x_296 : f32 = u_xlat35;
  u_xlat1.x = ((x_292 * x_294) + x_296);
  let x_300 : f32 = u_xlat24.x;
  let x_303 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_300) + x_303);
  let x_307 : f32 = u_xlat2.y;
  let x_309 : f32 = u_xlat1.x;
  let x_312 : f32 = u_xlat24.x;
  u_xlat1.x = ((x_307 * x_309) + x_312);
  let x_317 : vec4<f32> = u_xlat0;
  let x_320 : vec4<f32> = x_75.x_Time;
  let x_322 : vec2<f32> = (vec2<f32>(x_317.x, x_317.z) + vec2<f32>(x_320.y, x_320.y));
  let x_323 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_322.x, x_322.y, x_323.z);
  let x_325 : vec3<f32> = u_xlat12;
  let x_327 : vec2<f32> = floor(vec2<f32>(x_325.x, x_325.y));
  let x_328 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_327.x, x_327.y, x_328.z, x_328.w);
  let x_330 : vec3<f32> = u_xlat12;
  let x_332 : vec2<f32> = fract(vec2<f32>(x_330.x, x_330.y));
  let x_333 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_332.x, x_332.y, x_333.z);
  let x_335 : vec3<f32> = u_xlat12;
  let x_337 : vec3<f32> = u_xlat12;
  u_xlat24 = (vec2<f32>(x_335.x, x_335.y) * vec2<f32>(x_337.x, x_337.y));
  let x_340 : vec3<f32> = u_xlat12;
  let x_344 : vec2<f32> = ((-(vec2<f32>(x_340.x, x_340.y)) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(3.0f, 3.0f));
  let x_345 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_344.x, x_344.y, x_345.z, x_345.w);
  let x_347 : vec2<f32> = u_xlat24;
  let x_348 : vec4<f32> = u_xlat3;
  u_xlat24 = (x_347 * vec2<f32>(x_348.x, x_348.y));
  let x_352 : vec4<f32> = u_xlat2;
  u_xlat34 = dot(vec2<f32>(x_352.x, x_352.y), vec2<f32>(127.099998474f, 311.700012207f));
  let x_355 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(vec2<f32>(x_355.x, x_355.y), vec2<f32>(269.5f, 183.300003052f));
  let x_359 : f32 = u_xlat34;
  u_xlat4.x = sin(x_359);
  let x_363 : f32 = u_xlat3.x;
  u_xlat4.y = sin(x_363);
  let x_366 : vec4<f32> = u_xlat4;
  let x_368 : vec2<f32> = (vec2<f32>(x_366.x, x_366.y) * vec2<f32>(43758.546875f, 43758.546875f));
  let x_369 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_368.x, x_368.y, x_369.z, x_369.w);
  let x_371 : vec4<f32> = u_xlat3;
  let x_373 : vec2<f32> = fract(vec2<f32>(x_371.x, x_371.y));
  let x_374 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_373.x, x_373.y, x_374.z, x_374.w);
  let x_376 : vec4<f32> = u_xlat3;
  let x_379 : vec2<f32> = ((vec2<f32>(x_376.x, x_376.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_380 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_379.x, x_379.y, x_380.z, x_380.w);
  let x_382 : vec4<f32> = u_xlat3;
  let x_384 : vec3<f32> = u_xlat12;
  u_xlat34 = dot(vec2<f32>(x_382.x, x_382.y), vec2<f32>(x_384.x, x_384.y));
  let x_387 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec4<f32>(x_387.x, x_387.y, x_387.x, x_387.y) + vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f));
  let x_390 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(vec2<f32>(x_390.x, x_390.y), vec2<f32>(127.099998474f, 311.700012207f));
  let x_394 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec2<f32>(x_394.x, x_394.y), vec2<f32>(269.5f, 183.300003052f));
  let x_399 : f32 = u_xlat4.x;
  u_xlat4.x = sin(x_399);
  let x_403 : f32 = u_xlat3.x;
  u_xlat4.y = sin(x_403);
  let x_406 : vec4<f32> = u_xlat4;
  let x_408 : vec2<f32> = (vec2<f32>(x_406.x, x_406.y) * vec2<f32>(43758.546875f, 43758.546875f));
  let x_409 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_408.x, x_408.y, x_409.z, x_409.w);
  let x_411 : vec4<f32> = u_xlat3;
  let x_413 : vec2<f32> = fract(vec2<f32>(x_411.x, x_411.y));
  let x_414 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_413.x, x_413.y, x_414.z, x_414.w);
  let x_416 : vec4<f32> = u_xlat3;
  let x_419 : vec2<f32> = ((vec2<f32>(x_416.x, x_416.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_420 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_419.x, x_419.y, x_420.z, x_420.w);
  let x_422 : vec3<f32> = u_xlat12;
  u_xlat4 = (vec4<f32>(x_422.x, x_422.y, x_422.x, x_422.y) + vec4<f32>(-1.0f, -0.0f, -0.0f, -1.0f));
  let x_425 : vec4<f32> = u_xlat3;
  let x_427 : vec4<f32> = u_xlat4;
  u_xlat3.x = dot(vec2<f32>(x_425.x, x_425.y), vec2<f32>(x_427.x, x_427.y));
  let x_431 : f32 = u_xlat34;
  let x_434 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_431) + x_434);
  let x_438 : f32 = u_xlat24.x;
  let x_440 : f32 = u_xlat3.x;
  let x_442 : f32 = u_xlat34;
  u_xlat34 = ((x_438 * x_440) + x_442);
  let x_444 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec2<f32>(x_444.z, x_444.w), vec2<f32>(127.099998474f, 311.700012207f));
  let x_448 : vec4<f32> = u_xlat3;
  u_xlat3.y = dot(vec2<f32>(x_448.z, x_448.w), vec2<f32>(269.5f, 183.300003052f));
  let x_452 : vec4<f32> = u_xlat3;
  let x_454 : vec2<f32> = sin(vec2<f32>(x_452.x, x_452.y));
  let x_455 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_454.x, x_454.y, x_455.z, x_455.w);
  let x_457 : vec4<f32> = u_xlat4;
  let x_459 : vec2<f32> = (vec2<f32>(x_457.x, x_457.y) * vec2<f32>(43758.546875f, 43758.546875f));
  let x_460 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_459.x, x_459.y, x_460.z, x_460.w);
  let x_462 : vec4<f32> = u_xlat3;
  let x_464 : vec2<f32> = fract(vec2<f32>(x_462.x, x_462.y));
  let x_465 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_464.x, x_464.y, x_465.z, x_465.w);
  let x_467 : vec4<f32> = u_xlat3;
  let x_470 : vec2<f32> = ((vec2<f32>(x_467.x, x_467.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_471 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_470.x, x_470.y, x_471.z, x_471.w);
  let x_473 : vec4<f32> = u_xlat3;
  let x_475 : vec4<f32> = u_xlat4;
  u_xlat3.x = dot(vec2<f32>(x_473.x, x_473.y), vec2<f32>(x_475.z, x_475.w));
  let x_479 : vec4<f32> = u_xlat2;
  let x_482 : vec2<f32> = (vec2<f32>(x_479.x, x_479.y) + vec2<f32>(1.0f, 1.0f));
  let x_483 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_482.x, x_482.y, x_483.z, x_483.w);
  let x_486 : vec4<f32> = u_xlat2;
  u_xlat14 = dot(vec2<f32>(x_486.x, x_486.y), vec2<f32>(127.099998474f, 311.700012207f));
  let x_489 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec2<f32>(x_489.x, x_489.y), vec2<f32>(269.5f, 183.300003052f));
  let x_493 : f32 = u_xlat14;
  u_xlat4.x = sin(x_493);
  let x_497 : f32 = u_xlat2.x;
  u_xlat4.y = sin(x_497);
  let x_500 : vec4<f32> = u_xlat4;
  let x_502 : vec2<f32> = (vec2<f32>(x_500.x, x_500.y) * vec2<f32>(43758.546875f, 43758.546875f));
  let x_503 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_502.x, x_502.y, x_503.z, x_503.w);
  let x_505 : vec4<f32> = u_xlat2;
  let x_507 : vec2<f32> = fract(vec2<f32>(x_505.x, x_505.y));
  let x_508 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_507.x, x_507.y, x_508.z, x_508.w);
  let x_510 : vec4<f32> = u_xlat2;
  let x_513 : vec2<f32> = ((vec2<f32>(x_510.x, x_510.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_514 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_513.x, x_513.y, x_514.z, x_514.w);
  let x_516 : vec3<f32> = u_xlat12;
  let x_518 : vec2<f32> = (vec2<f32>(x_516.x, x_516.y) + vec2<f32>(-1.0f, -1.0f));
  let x_519 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_518.x, x_518.y, x_519.z);
  let x_521 : vec4<f32> = u_xlat2;
  let x_523 : vec3<f32> = u_xlat12;
  u_xlat12.x = dot(vec2<f32>(x_521.x, x_521.y), vec2<f32>(x_523.x, x_523.y));
  let x_528 : f32 = u_xlat3.x;
  let x_531 : f32 = u_xlat12.x;
  u_xlat12.x = (-(x_528) + x_531);
  let x_535 : f32 = u_xlat24.x;
  let x_537 : f32 = u_xlat12.x;
  let x_540 : f32 = u_xlat3.x;
  u_xlat12.x = ((x_535 * x_537) + x_540);
  let x_543 : f32 = u_xlat34;
  let x_546 : f32 = u_xlat12.x;
  u_xlat12.x = (-(x_543) + x_546);
  let x_550 : f32 = u_xlat24.y;
  let x_552 : f32 = u_xlat12.x;
  let x_554 : f32 = u_xlat34;
  u_xlat12.x = ((x_550 * x_552) + x_554);
  let x_558 : f32 = u_xlat12.x;
  let x_560 : f32 = u_xlat1.x;
  u_xlat1.x = (x_558 + x_560);
  let x_564 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_564 * 0.25f) + -0.5f);
  let x_571 : f32 = u_xlat1.x;
  u_xlat1.x = (x_571 + 1.0f);
  let x_575 : vec4<f32> = x_75.x_Time;
  let x_580 : vec2<f32> = (vec2<f32>(x_575.y, x_575.y) * vec2<f32>(0.050000001f, 0.100000001f));
  let x_581 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_580.x, x_580.y, x_581.z);
  let x_583 : vec4<f32> = u_xlat0;
  let x_587 : vec3<f32> = u_xlat12;
  let x_589 : vec2<f32> = ((vec2<f32>(x_583.x, x_583.z) * vec2<f32>(0.100000001f, 0.100000001f)) + vec2<f32>(x_587.x, x_587.x));
  let x_590 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_589.x, x_590.y, x_589.y);
  let x_594 : vec4<f32> = u_xlat1;
  let x_597 : vec3<f32> = u_xlat12;
  let x_599 : vec2<f32> = ((vec2<f32>(x_594.x, x_594.x) * vec2<f32>(0.100000001f, 0.100000001f)) + vec2<f32>(x_597.x, x_597.z));
  let x_600 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_600.x, x_600.y, x_599.x, x_599.y);
  let x_602 : vec4<f32> = u_xlat0;
  let x_607 : vec3<f32> = u_xlat12;
  let x_610 : vec2<f32> = ((vec2<f32>(x_602.x, x_602.z) * vec2<f32>(0.400000006f, 0.400000006f)) + -(vec2<f32>(x_607.y, x_607.y)));
  let x_611 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_610.x, x_610.y, x_611.z);
  let x_613 : vec4<f32> = u_xlat1;
  let x_618 : vec3<f32> = u_xlat12;
  let x_620 : vec2<f32> = ((vec2<f32>(x_613.x, x_613.x) * vec2<f32>(0.200000003f, 0.200000003f)) + vec2<f32>(x_618.x, x_618.y));
  let x_621 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_620.x, x_620.y, x_621.z, x_621.w);
  let x_623 : vec4<f32> = u_xlat0;
  let x_627 : vec4<f32> = x_75.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_623.y, x_623.y, x_623.y, x_623.y) * x_627);
  let x_630 : vec4<f32> = x_75.unity_MatrixVP[0i];
  let x_631 : vec4<f32> = u_xlat0;
  let x_634 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_630 * vec4<f32>(x_631.x, x_631.x, x_631.x, x_631.x)) + x_634);
  let x_637 : vec4<f32> = x_75.unity_MatrixVP[2i];
  let x_638 : vec4<f32> = u_xlat0;
  let x_641 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_637 * vec4<f32>(x_638.z, x_638.z, x_638.z, x_638.z)) + x_641);
  let x_643 : vec4<f32> = u_xlat2;
  let x_645 : vec4<f32> = x_75.unity_MatrixVP[3i];
  u_xlat2 = (x_643 + x_645);
  u_xlat3.x = 0.5f;
  u_xlat3.z = 0.5f;
  let x_651 : f32 = x_75.x_ProjectionParams.x;
  u_xlat3.y = x_651;
  let x_653 : vec4<f32> = u_xlat2;
  let x_655 : vec4<f32> = u_xlat3;
  let x_657 : vec3<f32> = (vec3<f32>(x_653.x, x_653.y, x_653.w) * vec3<f32>(x_655.z, x_655.y, x_655.z));
  let x_658 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
  let x_661 : f32 = u_xlat4.y;
  u_xlat4.w = (x_661 * 0.5f);
  let x_665 : vec4<f32> = u_xlat4;
  let x_667 : vec4<f32> = u_xlat4;
  let x_669 : vec2<f32> = (vec2<f32>(x_665.z, x_665.z) + vec2<f32>(x_667.x, x_667.w));
  let x_670 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_669.x, x_669.y, x_670.z, x_670.w);
  let x_672 : vec4<f32> = u_xlat2;
  let x_674 : vec4<f32> = u_xlat2;
  u_xlat12 = (vec3<f32>(x_672.x, x_672.y, x_672.z) / vec3<f32>(x_674.w, x_674.w, x_674.w));
  let x_677 : vec4<f32> = u_xlat0;
  let x_682 : vec2<f32> = ((vec2<f32>(x_677.x, x_677.z) * vec2<f32>(0.002f, 0.002f)) + vec2<f32>(0.5f, 0.5f));
  let x_683 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_682.x, x_682.y, x_683.z, x_683.w);
  let x_695 : vec4<f32> = u_xlat2;
  let x_697 : vec4<f32> = textureSampleLevel(x_WaterDepthMap, sampler_WaterDepthMap_linear_clamp, vec2<f32>(x_695.x, x_695.y), 1.0f);
  u_xlat2.x = x_697.x;
  let x_701 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_701) + 1.0f);
  let x_708 : f32 = x_75.x_MaxDepth;
  let x_711 : f32 = x_75.x_VeraslWater_DepthCamParams.x;
  u_xlat13 = (x_708 + x_711);
  let x_714 : f32 = u_xlat2.x;
  let x_715 : f32 = u_xlat13;
  let x_718 : f32 = x_75.x_VeraslWater_DepthCamParams.x;
  u_xlat2.x = ((x_714 * x_715) + -(x_718));
  let x_723 : f32 = u_xlat2.x;
  u_xlat13 = (-(x_723) + 1.5f);
  let x_727 : f32 = u_xlat13;
  u_xlat13 = (x_727 * 0.400000006f);
  let x_729 : f32 = u_xlat13;
  u_xlat13 = clamp(x_729, 0.0f, 1.0f);
  let x_731 : f32 = u_xlat13;
  let x_732 : f32 = u_xlat13;
  let x_735 : f32 = u_xlat0.y;
  u_xlat0.w = ((x_731 * x_732) + x_735);
  let x_740 : f32 = u_xlat2.x;
  u_xlat11 = ((x_740 * 0.100000001f) + 0.050000001f);
  let x_743 : f32 = u_xlat11;
  let x_744 : vec2<f32> = vec2<f32>(x_743, x_743);
  let x_745 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_744.x, x_745.y, x_744.y, x_745.w);
  let x_747 : vec4<f32> = u_xlat2;
  let x_751 : vec2<f32> = clamp(vec2<f32>(x_747.x, x_747.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_752 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_751.x, x_752.y, x_751.y, x_752.w);
  let x_757 : u32 = x_75.x_WaveCount;
  u_xlat11 = f32(x_757);
  let x_759 : f32 = u_xlat11;
  u_xlat35 = (1.0f / x_759);
  let x_761 : vec4<f32> = u_xlat2;
  let x_764 : vec3<f32> = (vec3<f32>(x_761.z, x_761.z, x_761.z) * vec3<f32>(3.0f, 3.0f, 1.0f));
  let x_765 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
  let x_767 : vec4<f32> = u_xlat4;
  let x_770 : vec3<f32> = min(vec3<f32>(x_767.x, x_767.y, x_767.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_771 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu36 = 0u;
  loop {
    if (true) {
    } else {
      break;
    }
    let x_792 : u32 = u_xlatu36;
    let x_794 : u32 = x_75.x_WaveCount;
    u_xlatb37 = (x_792 >= x_794);
    let x_796 : bool = u_xlatb37;
    if (x_796) {
      break;
    }
    let x_803 : u32 = u_xlatu36;
    u_xlatu7 = (vec2<u32>(x_803, x_803) + vec2<u32>(10u, 1u));
    let x_811 : u32 = u_xlatu36;
    let x_814 : f32 = x_75.waveData[bitcast<i32>(x_811)].z;
    u_xlat37 = (6.283180237f / x_814);
    let x_817 : f32 = u_xlat37;
    u_xlat38 = (x_817 * 9.800000191f);
    let x_820 : f32 = u_xlat38;
    u_xlat38 = sqrt(x_820);
    let x_823 : f32 = u_xlat37;
    let x_824 : u32 = u_xlatu36;
    let x_827 : f32 = x_75.waveData[bitcast<i32>(x_824)].x;
    u_xlat39 = (x_823 * x_827);
    let x_830 : f32 = u_xlat11;
    let x_831 : f32 = u_xlat39;
    u_xlat29 = (x_830 * x_831);
    let x_833 : f32 = u_xlat29;
    u_xlat29 = (1.5f / x_833);
    let x_839 : u32 = u_xlatu36;
    let x_842 : vec4<f32> = x_75.waveData[bitcast<i32>(x_839)];
    let x_844 : vec2<f32> = (vec2<f32>(10000.0f, 0.017453292f) * vec2<f32>(x_842.x, x_842.y));
    let x_845 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_844.x, x_844.y, x_845.z);
    let x_849 : f32 = u_xlat8.y;
    u_xlat9.x = sin(x_849);
    let x_854 : f32 = u_xlat8.y;
    u_xlat10.x = cos(x_854);
    let x_858 : u32 = u_xlatu36;
    let x_861 : f32 = x_75.waveData[bitcast<i32>(x_858)].w;
    u_xlat40 = (1.0f + -(x_861));
    let x_865 : f32 = u_xlat10.x;
    u_xlat9.z = x_865;
    let x_868 : vec4<f32> = u_xlat0;
    let x_871 : u32 = u_xlatu7.x;
    let x_874 : vec4<f32> = x_75.waveData[bitcast<i32>(x_871)];
    u_xlat19 = (vec2<f32>(x_868.x, x_868.z) + -(vec2<f32>(x_874.x, x_874.y)));
    let x_878 : vec2<f32> = u_xlat19;
    let x_879 : u32 = u_xlatu36;
    let x_882 : vec4<f32> = x_75.waveData[bitcast<i32>(x_879)];
    u_xlat19 = (x_878 * vec2<f32>(x_882.w, x_882.w));
    let x_885 : vec3<f32> = u_xlat9;
    let x_887 : f32 = u_xlat40;
    let x_890 : vec2<f32> = u_xlat19;
    u_xlat19 = ((vec2<f32>(x_885.x, x_885.z) * vec2<f32>(x_887, x_887)) + x_890);
    let x_892 : vec2<f32> = u_xlat19;
    let x_893 : vec2<f32> = u_xlat19;
    u_xlat40 = dot(x_892, x_893);
    let x_895 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_895);
    let x_897 : f32 = u_xlat40;
    let x_899 : vec2<f32> = u_xlat19;
    u_xlat19 = (vec2<f32>(x_897, x_897) * x_899);
    let x_903 : u32 = u_xlatu7.x;
    let x_906 : vec4<f32> = x_75.waveData[bitcast<i32>(x_903)];
    let x_909 : u32 = u_xlatu36;
    let x_912 : vec4<f32> = x_75.waveData[bitcast<i32>(x_909)];
    let x_915 : vec4<f32> = u_xlat0;
    let x_917 : vec2<f32> = ((-(vec2<f32>(x_906.x, x_906.y)) * vec2<f32>(x_912.w, x_912.w)) + vec2<f32>(x_915.x, x_915.z));
    let x_918 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_917.x, x_918.y, x_918.z, x_917.y);
    let x_920 : vec2<f32> = u_xlat19;
    let x_921 : vec4<f32> = u_xlat7;
    u_xlat7.x = dot(x_920, vec2<f32>(x_921.x, x_921.w));
    let x_925 : f32 = u_xlat38;
    let x_927 : f32 = x_75.x_Time.y;
    u_xlat38 = (x_925 * -(x_927));
    let x_931 : f32 = u_xlat7.x;
    let x_932 : f32 = u_xlat37;
    let x_934 : f32 = u_xlat38;
    u_xlat37 = ((x_931 * x_932) + x_934);
    let x_936 : f32 = u_xlat37;
    u_xlat7.x = sin(x_936);
    let x_939 : f32 = u_xlat37;
    u_xlat9.x = cos(x_939);
    let x_942 : f32 = u_xlat29;
    let x_943 : u32 = u_xlatu36;
    let x_946 : f32 = x_75.waveData[bitcast<i32>(x_943)].x;
    u_xlat37 = (x_942 * x_946);
    let x_949 : vec2<f32> = u_xlat19;
    let x_950 : f32 = u_xlat37;
    u_xlat20 = (x_949 * vec2<f32>(x_950, x_950));
    let x_953 : vec3<f32> = u_xlat9;
    let x_955 : vec2<f32> = u_xlat20;
    let x_956 : vec2<f32> = (vec2<f32>(x_953.x, x_953.x) * x_955);
    let x_957 : vec3<f32> = u_xlat10;
    u_xlat10 = vec3<f32>(x_956.x, x_957.y, x_956.y);
    let x_960 : f32 = u_xlat7.x;
    let x_961 : u32 = u_xlatu36;
    let x_964 : f32 = x_75.waveData[bitcast<i32>(x_961)].x;
    u_xlat37 = (x_960 * x_964);
    let x_966 : f32 = u_xlat35;
    let x_967 : f32 = u_xlat37;
    u_xlat10.y = (x_966 * x_967);
    let x_970 : f32 = u_xlat39;
    let x_972 : vec2<f32> = u_xlat19;
    u_xlat19 = (vec2<f32>(x_970, x_970) * x_972);
    let x_974 : vec3<f32> = u_xlat9;
    let x_976 : vec2<f32> = u_xlat19;
    u_xlat19 = (vec2<f32>(x_974.x, x_974.x) * x_976);
    let x_978 : vec2<f32> = u_xlat19;
    let x_979 : vec2<f32> = -(x_978);
    let x_980 : vec3<f32> = u_xlat9;
    u_xlat9 = vec3<f32>(x_979.x, x_980.y, x_979.y);
    let x_982 : f32 = u_xlat39;
    let x_983 : f32 = u_xlat29;
    u_xlat37 = (x_982 * x_983);
    let x_985 : f32 = u_xlat37;
    let x_988 : f32 = u_xlat7.x;
    u_xlat9.y = ((-(x_985) * x_988) + 1.0f);
    let x_993 : f32 = u_xlat8.x;
    u_xlat8.x = x_993;
    let x_996 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_996, 0.0f, 1.0f);
    let x_999 : vec3<f32> = u_xlat10;
    let x_1000 : vec3<f32> = u_xlat8;
    let x_1003 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_999 * vec3<f32>(x_1000.x, x_1000.x, x_1000.x)) + x_1003);
    let x_1005 : vec3<f32> = u_xlat9;
    let x_1006 : f32 = u_xlat35;
    let x_1009 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1005 * vec3<f32>(x_1006, x_1006, x_1006)) + x_1009);
    let x_1012 : u32 = u_xlatu7.y;
    u_xlatu36 = x_1012;
  }
  let x_1013 : vec4<f32> = u_xlat4;
  let x_1015 : vec3<f32> = u_xlat5;
  let x_1016 : vec3<f32> = (vec3<f32>(x_1013.x, x_1013.y, x_1013.z) * x_1015);
  let x_1017 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1016.x, x_1016.y, x_1016.z, x_1017.w);
  u_xlat2.y = 1.0f;
  let x_1020 : vec4<f32> = u_xlat2;
  let x_1022 : vec3<f32> = u_xlat6;
  u_xlat8 = (vec3<f32>(x_1020.x, x_1020.y, x_1020.z) * x_1022);
  let x_1024 : vec3<f32> = u_xlat5;
  let x_1025 : vec4<f32> = u_xlat4;
  let x_1028 : vec4<f32> = u_xlat0;
  let x_1030 : vec3<f32> = ((x_1024 * vec3<f32>(x_1025.x, x_1025.y, x_1025.z)) + vec3<f32>(x_1028.x, x_1028.w, x_1028.z));
  let x_1031 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1030.x, x_1030.y, x_1030.z, x_1031.w);
  let x_1038 : vec3<f32> = u_xlat12;
  let x_1040 : vec4<f32> = textureSampleLevel(x_WaterFXMap, sampler_ScreenTextures_linear_clamp, vec2<f32>(x_1038.x, x_1038.y), 0.0f);
  u_xlat35 = x_1040.w;
  let x_1042 : f32 = u_xlat35;
  u_xlat35 = ((x_1042 * 2.0f) + -1.0f);
  let x_1046 : f32 = u_xlat0.y;
  let x_1047 : f32 = u_xlat35;
  u_xlat0.w = (x_1046 + x_1047);
  let x_1050 : vec4<f32> = u_xlat0;
  let x_1053 : vec4<f32> = x_75.unity_MatrixVP[1i];
  u_xlat4 = (vec4<f32>(x_1050.w, x_1050.w, x_1050.w, x_1050.w) * x_1053);
  let x_1056 : vec4<f32> = x_75.unity_MatrixVP[0i];
  let x_1057 : vec4<f32> = u_xlat0;
  let x_1060 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_1056 * vec4<f32>(x_1057.x, x_1057.x, x_1057.x, x_1057.x)) + x_1060);
  let x_1063 : vec4<f32> = x_75.unity_MatrixVP[2i];
  let x_1064 : vec4<f32> = u_xlat0;
  let x_1067 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_1063 * vec4<f32>(x_1064.z, x_1064.z, x_1064.z, x_1064.z)) + x_1067);
  let x_1069 : vec4<f32> = u_xlat4;
  let x_1071 : vec4<f32> = x_75.unity_MatrixVP[3i];
  u_xlat4 = (x_1069 + x_1071);
  let x_1073 : vec4<f32> = u_xlat3;
  let x_1075 : vec4<f32> = u_xlat4;
  let x_1077 : vec3<f32> = (vec3<f32>(x_1073.x, x_1073.y, x_1073.z) * vec3<f32>(x_1075.x, x_1075.y, x_1075.w));
  let x_1078 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1077.x, x_1077.y, x_1077.z, x_1078.w);
  let x_1081 : f32 = u_xlat3.y;
  u_xlat3.w = (x_1081 * 0.5f);
  let x_1085 : vec4<f32> = u_xlat3;
  let x_1087 : vec4<f32> = u_xlat3;
  let x_1089 : vec2<f32> = (vec2<f32>(x_1085.z, x_1085.z) + vec2<f32>(x_1087.x, x_1087.w));
  let x_1090 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_1089.x, x_1089.y, x_1090.z, x_1090.w);
  let x_1092 : vec4<f32> = u_xlat0;
  let x_1097 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  let x_1098 : vec3<f32> = (-(vec3<f32>(x_1092.x, x_1092.w, x_1092.z)) + x_1097);
  let x_1099 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1098.x, x_1098.y, x_1098.z, x_1099.w);
  let x_1101 : vec4<f32> = u_xlat3;
  let x_1103 : vec4<f32> = u_xlat3;
  u_xlat11 = dot(vec3<f32>(x_1101.x, x_1101.y, x_1101.z), vec3<f32>(x_1103.x, x_1103.y, x_1103.z));
  let x_1106 : f32 = u_xlat11;
  u_xlat35 = max(x_1106, 1.17549435e-37f);
  let x_1109 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_1109);
  let x_1113 : f32 = u_xlat35;
  let x_1115 : vec4<f32> = u_xlat3;
  vs_TEXCOORD2 = (vec3<f32>(x_1113, x_1113, x_1113) * vec3<f32>(x_1115.x, x_1115.y, x_1115.z));
  let x_1118 : vec4<f32> = u_xlat0;
  let x_1121 : vec4<f32> = x_75.unity_MatrixV[1i];
  u_xlat5 = (vec3<f32>(x_1118.w, x_1118.w, x_1118.w) * vec3<f32>(x_1121.x, x_1121.y, x_1121.z));
  let x_1125 : vec4<f32> = x_75.unity_MatrixV[0i];
  let x_1127 : vec4<f32> = u_xlat0;
  let x_1130 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_1125.x, x_1125.y, x_1125.z) * vec3<f32>(x_1127.x, x_1127.x, x_1127.x)) + x_1130);
  let x_1133 : vec4<f32> = x_75.unity_MatrixV[2i];
  let x_1135 : vec4<f32> = u_xlat0;
  let x_1138 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_1133.x, x_1133.y, x_1133.z) * vec3<f32>(x_1135.z, x_1135.z, x_1135.z)) + x_1138);
  let x_1140 : vec3<f32> = u_xlat5;
  let x_1142 : vec4<f32> = x_75.unity_MatrixV[3i];
  u_xlat5 = (x_1140 + vec3<f32>(x_1142.x, x_1142.y, x_1142.z));
  let x_1145 : vec3<f32> = u_xlat5;
  let x_1146 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_1145 / vec3<f32>(x_1146.z, x_1146.z, x_1146.z));
  let x_1149 : vec3<f32> = u_xlat5;
  let x_1150 : vec3<f32> = u_xlat5;
  u_xlat35 = dot(x_1149, x_1150);
  let x_1153 : f32 = u_xlat35;
  vs_TEXCOORD5.x = sqrt(x_1153);
  let x_1157 : f32 = u_xlat11;
  vs_TEXCOORD5.y = sqrt(x_1157);
  let x_1161 : f32 = u_xlat7.y;
  let x_1164 : f32 = x_75.x_MaxWaveHeight;
  u_xlat11 = (x_1161 / x_1164);
  let x_1166 : f32 = u_xlat11;
  vs_TEXCOORD5.z = ((x_1166 * 0.5f) + 0.5f);
  let x_1171 : f32 = u_xlat7.z;
  let x_1173 : f32 = u_xlat7.x;
  vs_TEXCOORD5.w = (x_1171 + x_1173);
  let x_1176 : vec4<f32> = u_xlat3;
  let x_1180 : vec2<f32> = (vec2<f32>(x_1176.x, x_1176.z) * vec2<f32>(0.005f, 0.005f));
  let x_1181 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1180.x, x_1180.y, x_1181.z, x_1181.w);
  let x_1183 : vec4<f32> = u_xlat3;
  let x_1185 : vec4<f32> = u_xlat3;
  u_xlat11 = dot(vec2<f32>(x_1183.x, x_1183.y), vec2<f32>(x_1185.x, x_1185.y));
  let x_1188 : f32 = u_xlat11;
  u_xlat11 = sqrt(x_1188);
  let x_1190 : f32 = u_xlat11;
  u_xlat11 = (x_1190 + -0.25f);
  let x_1193 : f32 = u_xlat11;
  u_xlat11 = clamp(x_1193, 0.0f, 1.0f);
  let x_1195 : vec3<f32> = u_xlat6;
  let x_1197 : vec4<f32> = u_xlat2;
  let x_1201 : vec3<f32> = ((-(x_1195) * vec3<f32>(x_1197.x, x_1197.y, x_1197.z)) + vec3<f32>(0.0f, 1.0f, 0.0f));
  let x_1202 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1202.w);
  let x_1205 : f32 = u_xlat11;
  let x_1207 : vec4<f32> = u_xlat2;
  let x_1210 : vec3<f32> = u_xlat8;
  vs_NORMAL0 = ((vec3<f32>(x_1205, x_1205, x_1205) * vec3<f32>(x_1207.x, x_1207.y, x_1207.z)) + x_1210);
  let x_1212 : vec4<f32> = u_xlat4;
  let x_1213 : vec2<f32> = vec2<f32>(x_1212.z, x_1212.w);
  let x_1214 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_1214.x, x_1214.y, x_1213.x, x_1213.y);
  let x_1220 : vec4<f32> = u_xlat4;
  gl_Position = x_1220;
  let x_1223 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = vec3<f32>(x_1223.x, x_1223.w, x_1223.z);
  let x_1226 : vec3<f32> = u_xlat12;
  vs_TEXCOORD3 = x_1226;
  vs_TEXCOORD4.x = 0.0f;
  let x_1232 : f32 = u_xlat1.x;
  vs_TEXCOORD4.y = x_1232;
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

