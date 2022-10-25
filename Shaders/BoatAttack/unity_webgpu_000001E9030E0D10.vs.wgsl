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

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(5) var<uniform> x_592 : VGlobals;

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
  var u_xlat29 : vec2<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlat40 : f32;
  var u_xlat19 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat30 : vec2<f32>;
  var u_xlat10 : vec3<f32>;
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
  let x_70 : vec2<f32> = (vec2<f32>(x_66.x, x_66.z) * vec2<f32>(0.5f, 0.5f));
  let x_71 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_70.x, x_70.y, x_71.z, x_71.w);
  let x_73 : vec4<f32> = u_xlat1;
  let x_75 : vec2<f32> = floor(vec2<f32>(x_73.x, x_73.y));
  let x_76 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_76.x, x_76.y, x_75.x, x_75.y);
  let x_78 : vec4<f32> = u_xlat1;
  let x_80 : vec2<f32> = fract(vec2<f32>(x_78.x, x_78.y));
  let x_81 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_80.x, x_80.y, x_81.z, x_81.w);
  let x_84 : vec4<f32> = u_xlat1;
  let x_86 : vec4<f32> = u_xlat1;
  let x_88 : vec2<f32> = (vec2<f32>(x_84.x, x_84.y) * vec2<f32>(x_86.x, x_86.y));
  let x_89 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_88.x, x_88.y, x_89.z, x_89.w);
  let x_93 : vec4<f32> = u_xlat1;
  u_xlat24 = ((-(vec2<f32>(x_93.x, x_93.y)) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(3.0f, 3.0f));
  let x_102 : vec2<f32> = u_xlat24;
  let x_103 : vec4<f32> = u_xlat2;
  let x_105 : vec2<f32> = (x_102 * vec2<f32>(x_103.x, x_103.y));
  let x_106 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_105.x, x_105.y, x_106.z, x_106.w);
  let x_108 : vec4<f32> = u_xlat1;
  u_xlat24.x = dot(vec2<f32>(x_108.z, x_108.w), vec2<f32>(127.099998474f, 311.700012207f));
  let x_117 : vec4<f32> = u_xlat1;
  u_xlat24.y = dot(vec2<f32>(x_117.z, x_117.w), vec2<f32>(269.5f, 183.300003052f));
  let x_126 : vec2<f32> = u_xlat24;
  let x_127 : vec2<f32> = sin(x_126);
  let x_128 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_127.x, x_127.y, x_128.z, x_128.w);
  let x_130 : vec4<f32> = u_xlat3;
  u_xlat24 = (vec2<f32>(x_130.x, x_130.y) * vec2<f32>(43758.546875f, 43758.546875f));
  let x_135 : vec2<f32> = u_xlat24;
  u_xlat24 = fract(x_135);
  let x_137 : vec2<f32> = u_xlat24;
  u_xlat24 = ((x_137 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_142 : vec2<f32> = u_xlat24;
  let x_143 : vec4<f32> = u_xlat1;
  u_xlat24.x = dot(x_142, vec2<f32>(x_143.x, x_143.y));
  let x_147 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_147.z, x_147.w, x_147.z, x_147.w) + vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f));
  let x_154 : vec4<f32> = u_xlat3;
  u_xlat35 = dot(vec2<f32>(x_154.x, x_154.y), vec2<f32>(127.099998474f, 311.700012207f));
  let x_157 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec2<f32>(x_157.x, x_157.y), vec2<f32>(269.5f, 183.300003052f));
  let x_162 : f32 = u_xlat35;
  u_xlat4.x = sin(x_162);
  let x_166 : f32 = u_xlat3.x;
  u_xlat4.y = sin(x_166);
  let x_169 : vec4<f32> = u_xlat4;
  let x_171 : vec2<f32> = (vec2<f32>(x_169.x, x_169.y) * vec2<f32>(43758.546875f, 43758.546875f));
  let x_172 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_171.x, x_171.y, x_172.z, x_172.w);
  let x_174 : vec4<f32> = u_xlat3;
  let x_176 : vec2<f32> = fract(vec2<f32>(x_174.x, x_174.y));
  let x_177 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_176.x, x_176.y, x_177.z, x_177.w);
  let x_179 : vec4<f32> = u_xlat3;
  let x_182 : vec2<f32> = ((vec2<f32>(x_179.x, x_179.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_183 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_182.x, x_182.y, x_183.z, x_183.w);
  let x_185 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_185.x, x_185.y, x_185.x, x_185.y) + vec4<f32>(-1.0f, -0.0f, -0.0f, -1.0f));
  let x_190 : vec4<f32> = u_xlat3;
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat35 = dot(vec2<f32>(x_190.x, x_190.y), vec2<f32>(x_192.x, x_192.y));
  let x_196 : f32 = u_xlat24.x;
  let x_198 : f32 = u_xlat35;
  u_xlat35 = (-(x_196) + x_198);
  let x_201 : f32 = u_xlat2.x;
  let x_202 : f32 = u_xlat35;
  let x_205 : f32 = u_xlat24.x;
  u_xlat24.x = ((x_201 * x_202) + x_205);
  let x_208 : vec4<f32> = u_xlat3;
  u_xlat35 = dot(vec2<f32>(x_208.z, x_208.w), vec2<f32>(127.099998474f, 311.700012207f));
  let x_211 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec2<f32>(x_211.z, x_211.w), vec2<f32>(269.5f, 183.300003052f));
  let x_215 : f32 = u_xlat35;
  u_xlat4.x = sin(x_215);
  let x_219 : f32 = u_xlat3.x;
  u_xlat4.y = sin(x_219);
  let x_222 : vec4<f32> = u_xlat4;
  let x_224 : vec2<f32> = (vec2<f32>(x_222.x, x_222.y) * vec2<f32>(43758.546875f, 43758.546875f));
  let x_225 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_224.x, x_224.y, x_225.z, x_225.w);
  let x_227 : vec4<f32> = u_xlat3;
  let x_229 : vec2<f32> = fract(vec2<f32>(x_227.x, x_227.y));
  let x_230 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_229.x, x_229.y, x_230.z, x_230.w);
  let x_232 : vec4<f32> = u_xlat3;
  let x_235 : vec2<f32> = ((vec2<f32>(x_232.x, x_232.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_236 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_235.x, x_235.y, x_236.z, x_236.w);
  let x_238 : vec4<f32> = u_xlat3;
  let x_240 : vec4<f32> = u_xlat4;
  u_xlat35 = dot(vec2<f32>(x_238.x, x_238.y), vec2<f32>(x_240.z, x_240.w));
  let x_243 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_243 + vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_246 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(vec2<f32>(x_246.z, x_246.w), vec2<f32>(127.099998474f, 311.700012207f));
  let x_251 : vec4<f32> = u_xlat1;
  u_xlat23.x = dot(vec2<f32>(x_251.z, x_251.w), vec2<f32>(269.5f, 183.300003052f));
  let x_256 : f32 = u_xlat3.x;
  u_xlat3.x = sin(x_256);
  let x_260 : f32 = u_xlat23.x;
  u_xlat3.y = sin(x_260);
  let x_263 : vec4<f32> = u_xlat3;
  u_xlat23 = (vec2<f32>(x_263.x, x_263.y) * vec2<f32>(43758.546875f, 43758.546875f));
  let x_266 : vec2<f32> = u_xlat23;
  u_xlat23 = fract(x_266);
  let x_268 : vec2<f32> = u_xlat23;
  u_xlat23 = ((x_268 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_271 : vec2<f32> = u_xlat23;
  let x_272 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(x_271, vec2<f32>(x_272.x, x_272.y));
  let x_276 : f32 = u_xlat35;
  let x_279 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_276) + x_279);
  let x_283 : f32 = u_xlat2.x;
  let x_285 : f32 = u_xlat1.x;
  let x_287 : f32 = u_xlat35;
  u_xlat1.x = ((x_283 * x_285) + x_287);
  let x_291 : f32 = u_xlat24.x;
  let x_294 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_291) + x_294);
  let x_298 : f32 = u_xlat2.y;
  let x_300 : f32 = u_xlat1.x;
  let x_303 : f32 = u_xlat24.x;
  u_xlat1.x = ((x_298 * x_300) + x_303);
  let x_308 : vec4<f32> = u_xlat0;
  let x_310 : vec2<f32> = floor(vec2<f32>(x_308.x, x_308.z));
  let x_311 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_310.x, x_310.y, x_311.z);
  let x_313 : vec4<f32> = u_xlat0;
  let x_315 : vec2<f32> = fract(vec2<f32>(x_313.x, x_313.z));
  let x_316 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_315.x, x_315.y, x_316.z, x_316.w);
  let x_318 : vec4<f32> = u_xlat2;
  let x_320 : vec4<f32> = u_xlat2;
  u_xlat24 = (vec2<f32>(x_318.x, x_318.y) * vec2<f32>(x_320.x, x_320.y));
  let x_323 : vec4<f32> = u_xlat2;
  let x_327 : vec2<f32> = ((-(vec2<f32>(x_323.x, x_323.y)) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(3.0f, 3.0f));
  let x_328 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_327.x, x_327.y, x_328.z, x_328.w);
  let x_330 : vec2<f32> = u_xlat24;
  let x_331 : vec4<f32> = u_xlat3;
  u_xlat24 = (x_330 * vec2<f32>(x_331.x, x_331.y));
  let x_335 : vec3<f32> = u_xlat12;
  u_xlat34 = dot(vec2<f32>(x_335.x, x_335.y), vec2<f32>(127.099998474f, 311.700012207f));
  let x_338 : vec3<f32> = u_xlat12;
  u_xlat3.x = dot(vec2<f32>(x_338.x, x_338.y), vec2<f32>(269.5f, 183.300003052f));
  let x_342 : f32 = u_xlat34;
  u_xlat4.x = sin(x_342);
  let x_346 : f32 = u_xlat3.x;
  u_xlat4.y = sin(x_346);
  let x_349 : vec4<f32> = u_xlat4;
  let x_351 : vec2<f32> = (vec2<f32>(x_349.x, x_349.y) * vec2<f32>(43758.546875f, 43758.546875f));
  let x_352 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_351.x, x_351.y, x_352.z, x_352.w);
  let x_354 : vec4<f32> = u_xlat3;
  let x_356 : vec2<f32> = fract(vec2<f32>(x_354.x, x_354.y));
  let x_357 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_356.x, x_356.y, x_357.z, x_357.w);
  let x_359 : vec4<f32> = u_xlat3;
  let x_362 : vec2<f32> = ((vec2<f32>(x_359.x, x_359.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_363 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_362.x, x_362.y, x_363.z, x_363.w);
  let x_365 : vec4<f32> = u_xlat3;
  let x_367 : vec4<f32> = u_xlat2;
  u_xlat34 = dot(vec2<f32>(x_365.x, x_365.y), vec2<f32>(x_367.x, x_367.y));
  let x_370 : vec3<f32> = u_xlat12;
  u_xlat3 = (vec4<f32>(x_370.x, x_370.y, x_370.x, x_370.y) + vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f));
  let x_373 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(vec2<f32>(x_373.x, x_373.y), vec2<f32>(127.099998474f, 311.700012207f));
  let x_377 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec2<f32>(x_377.x, x_377.y), vec2<f32>(269.5f, 183.300003052f));
  let x_382 : f32 = u_xlat4.x;
  u_xlat4.x = sin(x_382);
  let x_386 : f32 = u_xlat3.x;
  u_xlat4.y = sin(x_386);
  let x_389 : vec4<f32> = u_xlat4;
  let x_391 : vec2<f32> = (vec2<f32>(x_389.x, x_389.y) * vec2<f32>(43758.546875f, 43758.546875f));
  let x_392 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_391.x, x_391.y, x_392.z, x_392.w);
  let x_394 : vec4<f32> = u_xlat3;
  let x_396 : vec2<f32> = fract(vec2<f32>(x_394.x, x_394.y));
  let x_397 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_396.x, x_396.y, x_397.z, x_397.w);
  let x_399 : vec4<f32> = u_xlat3;
  let x_402 : vec2<f32> = ((vec2<f32>(x_399.x, x_399.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_403 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_402.x, x_402.y, x_403.z, x_403.w);
  let x_405 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_405.x, x_405.y, x_405.x, x_405.y) + vec4<f32>(-1.0f, -0.0f, -0.0f, -1.0f));
  let x_408 : vec4<f32> = u_xlat3;
  let x_410 : vec4<f32> = u_xlat4;
  u_xlat3.x = dot(vec2<f32>(x_408.x, x_408.y), vec2<f32>(x_410.x, x_410.y));
  let x_414 : f32 = u_xlat34;
  let x_417 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_414) + x_417);
  let x_421 : f32 = u_xlat24.x;
  let x_423 : f32 = u_xlat3.x;
  let x_425 : f32 = u_xlat34;
  u_xlat34 = ((x_421 * x_423) + x_425);
  let x_427 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec2<f32>(x_427.z, x_427.w), vec2<f32>(127.099998474f, 311.700012207f));
  let x_431 : vec4<f32> = u_xlat3;
  u_xlat3.y = dot(vec2<f32>(x_431.z, x_431.w), vec2<f32>(269.5f, 183.300003052f));
  let x_435 : vec4<f32> = u_xlat3;
  let x_437 : vec2<f32> = sin(vec2<f32>(x_435.x, x_435.y));
  let x_438 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_437.x, x_437.y, x_438.z, x_438.w);
  let x_440 : vec4<f32> = u_xlat4;
  let x_442 : vec2<f32> = (vec2<f32>(x_440.x, x_440.y) * vec2<f32>(43758.546875f, 43758.546875f));
  let x_443 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_442.x, x_442.y, x_443.z, x_443.w);
  let x_445 : vec4<f32> = u_xlat3;
  let x_447 : vec2<f32> = fract(vec2<f32>(x_445.x, x_445.y));
  let x_448 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_447.x, x_447.y, x_448.z, x_448.w);
  let x_450 : vec4<f32> = u_xlat3;
  let x_453 : vec2<f32> = ((vec2<f32>(x_450.x, x_450.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_454 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_453.x, x_453.y, x_454.z, x_454.w);
  let x_456 : vec4<f32> = u_xlat3;
  let x_458 : vec4<f32> = u_xlat4;
  u_xlat3.x = dot(vec2<f32>(x_456.x, x_456.y), vec2<f32>(x_458.z, x_458.w));
  let x_462 : vec3<f32> = u_xlat12;
  let x_465 : vec2<f32> = (vec2<f32>(x_462.x, x_462.y) + vec2<f32>(1.0f, 1.0f));
  let x_466 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_465.x, x_465.y, x_466.z);
  let x_469 : vec3<f32> = u_xlat12;
  u_xlat14 = dot(vec2<f32>(x_469.x, x_469.y), vec2<f32>(127.099998474f, 311.700012207f));
  let x_472 : vec3<f32> = u_xlat12;
  u_xlat12.x = dot(vec2<f32>(x_472.x, x_472.y), vec2<f32>(269.5f, 183.300003052f));
  let x_476 : f32 = u_xlat14;
  u_xlat4.x = sin(x_476);
  let x_480 : f32 = u_xlat12.x;
  u_xlat4.y = sin(x_480);
  let x_483 : vec4<f32> = u_xlat4;
  let x_485 : vec2<f32> = (vec2<f32>(x_483.x, x_483.y) * vec2<f32>(43758.546875f, 43758.546875f));
  let x_486 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_485.x, x_485.y, x_486.z);
  let x_488 : vec3<f32> = u_xlat12;
  let x_490 : vec2<f32> = fract(vec2<f32>(x_488.x, x_488.y));
  let x_491 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_490.x, x_490.y, x_491.z);
  let x_493 : vec3<f32> = u_xlat12;
  let x_496 : vec2<f32> = ((vec2<f32>(x_493.x, x_493.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_497 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_496.x, x_496.y, x_497.z);
  let x_499 : vec4<f32> = u_xlat2;
  let x_501 : vec2<f32> = (vec2<f32>(x_499.x, x_499.y) + vec2<f32>(-1.0f, -1.0f));
  let x_502 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_501.x, x_501.y, x_502.z, x_502.w);
  let x_504 : vec3<f32> = u_xlat12;
  let x_506 : vec4<f32> = u_xlat2;
  u_xlat12.x = dot(vec2<f32>(x_504.x, x_504.y), vec2<f32>(x_506.x, x_506.y));
  let x_511 : f32 = u_xlat3.x;
  let x_514 : f32 = u_xlat12.x;
  u_xlat12.x = (-(x_511) + x_514);
  let x_518 : f32 = u_xlat24.x;
  let x_520 : f32 = u_xlat12.x;
  let x_523 : f32 = u_xlat3.x;
  u_xlat12.x = ((x_518 * x_520) + x_523);
  let x_526 : f32 = u_xlat34;
  let x_529 : f32 = u_xlat12.x;
  u_xlat12.x = (-(x_526) + x_529);
  let x_533 : f32 = u_xlat24.y;
  let x_535 : f32 = u_xlat12.x;
  let x_537 : f32 = u_xlat34;
  u_xlat12.x = ((x_533 * x_535) + x_537);
  let x_541 : f32 = u_xlat12.x;
  let x_543 : f32 = u_xlat1.x;
  u_xlat1.x = (x_541 + x_543);
  let x_547 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_547 * 0.25f) + -0.5f);
  let x_554 : f32 = u_xlat1.x;
  u_xlat1.x = (x_554 + 1.0f);
  let x_557 : vec4<f32> = u_xlat1;
  let x_562 : vec2<f32> = (vec2<f32>(x_557.x, x_557.x) * vec2<f32>(0.100000001f, 0.200000003f));
  let x_563 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_562.x, x_562.y, x_563.z);
  let x_567 : vec4<f32> = u_xlat0;
  let x_571 : vec3<f32> = u_xlat12;
  let x_573 : vec2<f32> = ((vec2<f32>(x_567.x, x_567.z) * vec2<f32>(0.100000001f, 0.100000001f)) + vec2<f32>(x_571.x, x_571.x));
  let x_574 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_574.x, x_574.y, x_573.x, x_573.y);
  let x_576 : vec4<f32> = u_xlat0;
  let x_581 : vec3<f32> = u_xlat12;
  let x_583 : vec2<f32> = ((vec2<f32>(x_576.x, x_576.z) * vec2<f32>(0.400000006f, 0.400000006f)) + vec2<f32>(x_581.y, x_581.y));
  let x_584 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);
  let x_586 : vec4<f32> = u_xlat0;
  let x_594 : vec4<f32> = x_592.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_586.y, x_586.y, x_586.y, x_586.y) * x_594);
  let x_597 : vec4<f32> = x_592.unity_MatrixVP[0i];
  let x_598 : vec4<f32> = u_xlat0;
  let x_601 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_597 * vec4<f32>(x_598.x, x_598.x, x_598.x, x_598.x)) + x_601);
  let x_604 : vec4<f32> = x_592.unity_MatrixVP[2i];
  let x_605 : vec4<f32> = u_xlat0;
  let x_608 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_604 * vec4<f32>(x_605.z, x_605.z, x_605.z, x_605.z)) + x_608);
  let x_610 : vec4<f32> = u_xlat2;
  let x_612 : vec4<f32> = x_592.unity_MatrixVP[3i];
  u_xlat2 = (x_610 + x_612);
  u_xlat3.x = 0.5f;
  u_xlat3.z = 0.5f;
  let x_618 : f32 = x_592.x_ProjectionParams.x;
  u_xlat3.y = x_618;
  let x_620 : vec4<f32> = u_xlat2;
  let x_622 : vec4<f32> = u_xlat3;
  let x_624 : vec3<f32> = (vec3<f32>(x_620.x, x_620.y, x_620.w) * vec3<f32>(x_622.z, x_622.y, x_622.z));
  let x_625 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_628 : f32 = u_xlat4.y;
  u_xlat4.w = (x_628 * 0.5f);
  let x_632 : vec4<f32> = u_xlat4;
  let x_634 : vec4<f32> = u_xlat4;
  let x_636 : vec2<f32> = (vec2<f32>(x_632.z, x_632.z) + vec2<f32>(x_634.x, x_634.w));
  let x_637 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_636.x, x_636.y, x_637.z, x_637.w);
  let x_639 : vec4<f32> = u_xlat2;
  let x_641 : vec4<f32> = u_xlat2;
  u_xlat12 = (vec3<f32>(x_639.x, x_639.y, x_639.z) / vec3<f32>(x_641.w, x_641.w, x_641.w));
  let x_644 : vec4<f32> = u_xlat0;
  let x_649 : vec2<f32> = ((vec2<f32>(x_644.x, x_644.z) * vec2<f32>(0.002f, 0.002f)) + vec2<f32>(0.5f, 0.5f));
  let x_650 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_649.x, x_649.y, x_650.z, x_650.w);
  let x_662 : vec4<f32> = u_xlat2;
  let x_664 : vec4<f32> = textureSampleLevel(x_WaterDepthMap, sampler_WaterDepthMap_linear_clamp, vec2<f32>(x_662.x, x_662.y), 1.0f);
  u_xlat2.x = x_664.x;
  let x_668 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_668) + 1.0f);
  let x_675 : f32 = x_592.x_MaxDepth;
  let x_678 : f32 = x_592.x_VeraslWater_DepthCamParams.x;
  u_xlat13 = (x_675 + x_678);
  let x_681 : f32 = u_xlat2.x;
  let x_682 : f32 = u_xlat13;
  let x_685 : f32 = x_592.x_VeraslWater_DepthCamParams.x;
  u_xlat2.x = ((x_681 * x_682) + -(x_685));
  let x_690 : f32 = u_xlat2.x;
  u_xlat13 = (-(x_690) + 1.5f);
  let x_694 : f32 = u_xlat13;
  u_xlat13 = (x_694 * 0.400000006f);
  let x_696 : f32 = u_xlat13;
  u_xlat13 = clamp(x_696, 0.0f, 1.0f);
  let x_698 : f32 = u_xlat13;
  let x_699 : f32 = u_xlat13;
  let x_702 : f32 = u_xlat0.y;
  u_xlat0.w = ((x_698 * x_699) + x_702);
  let x_707 : f32 = u_xlat2.x;
  u_xlat11 = ((x_707 * 0.100000001f) + 0.050000001f);
  let x_711 : f32 = u_xlat11;
  let x_712 : vec2<f32> = vec2<f32>(x_711, x_711);
  let x_713 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_712.x, x_713.y, x_712.y, x_713.w);
  let x_715 : vec4<f32> = u_xlat2;
  let x_719 : vec2<f32> = clamp(vec2<f32>(x_715.x, x_715.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_720 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_719.x, x_720.y, x_719.y, x_720.w);
  let x_725 : u32 = x_592.x_WaveCount;
  u_xlat11 = f32(x_725);
  let x_727 : f32 = u_xlat11;
  u_xlat35 = (1.0f / x_727);
  let x_729 : vec4<f32> = u_xlat2;
  let x_732 : vec3<f32> = (vec3<f32>(x_729.z, x_729.z, x_729.z) * vec3<f32>(3.0f, 3.0f, 1.0f));
  let x_733 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
  let x_735 : vec4<f32> = u_xlat4;
  let x_738 : vec3<f32> = min(vec3<f32>(x_735.x, x_735.y, x_735.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_739 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
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
    let x_760 : u32 = u_xlatu36;
    let x_762 : u32 = x_592.x_WaveCount;
    u_xlatb37 = (x_760 >= x_762);
    let x_764 : bool = u_xlatb37;
    if (x_764) {
      break;
    }
    let x_771 : u32 = u_xlatu36;
    u_xlatu7 = (vec2<u32>(x_771, x_771) + vec2<u32>(10u, 1u));
    let x_779 : u32 = u_xlatu36;
    let x_782 : f32 = x_592.waveData[bitcast<i32>(x_779)].z;
    u_xlat37 = (6.283180237f / x_782);
    let x_785 : f32 = u_xlat37;
    let x_786 : u32 = u_xlatu36;
    let x_789 : f32 = x_592.waveData[bitcast<i32>(x_786)].x;
    u_xlat38 = (x_785 * x_789);
    let x_792 : f32 = u_xlat11;
    let x_793 : f32 = u_xlat38;
    u_xlat39 = (x_792 * x_793);
    let x_795 : f32 = u_xlat39;
    u_xlat39 = (1.5f / x_795);
    let x_801 : u32 = u_xlatu36;
    let x_804 : vec4<f32> = x_592.waveData[bitcast<i32>(x_801)];
    u_xlat29 = (vec2<f32>(10000.0f, 0.017453292f) * vec2<f32>(x_804.x, x_804.y));
    let x_809 : f32 = u_xlat29.y;
    u_xlat8.x = sin(x_809);
    let x_814 : f32 = u_xlat29.y;
    u_xlat9 = cos(x_814);
    let x_817 : u32 = u_xlatu36;
    let x_820 : f32 = x_592.waveData[bitcast<i32>(x_817)].w;
    u_xlat40 = (1.0f + -(x_820));
    let x_823 : f32 = u_xlat9;
    u_xlat8.z = x_823;
    let x_826 : vec4<f32> = u_xlat0;
    let x_829 : u32 = u_xlatu7.x;
    let x_832 : vec4<f32> = x_592.waveData[bitcast<i32>(x_829)];
    let x_835 : vec2<f32> = (vec2<f32>(x_826.x, x_826.z) + -(vec2<f32>(x_832.x, x_832.y)));
    let x_836 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_835.x, x_836.y, x_835.y);
    let x_838 : vec3<f32> = u_xlat19;
    let x_840 : u32 = u_xlatu36;
    let x_843 : vec4<f32> = x_592.waveData[bitcast<i32>(x_840)];
    let x_845 : vec2<f32> = (vec2<f32>(x_838.x, x_838.z) * vec2<f32>(x_843.w, x_843.w));
    let x_846 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_845.x, x_846.y, x_845.y);
    let x_848 : vec3<f32> = u_xlat8;
    let x_850 : f32 = u_xlat40;
    let x_853 : vec3<f32> = u_xlat19;
    let x_855 : vec2<f32> = ((vec2<f32>(x_848.x, x_848.z) * vec2<f32>(x_850, x_850)) + vec2<f32>(x_853.x, x_853.z));
    let x_856 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_855.x, x_855.y, x_856.z);
    let x_858 : vec3<f32> = u_xlat8;
    let x_860 : vec3<f32> = u_xlat8;
    u_xlat40 = dot(vec2<f32>(x_858.x, x_858.y), vec2<f32>(x_860.x, x_860.y));
    let x_863 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_863);
    let x_865 : f32 = u_xlat40;
    let x_867 : vec3<f32> = u_xlat8;
    let x_869 : vec2<f32> = (vec2<f32>(x_865, x_865) * vec2<f32>(x_867.x, x_867.y));
    let x_870 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_869.x, x_869.y, x_870.z);
    let x_874 : u32 = u_xlatu7.x;
    let x_877 : vec4<f32> = x_592.waveData[bitcast<i32>(x_874)];
    let x_880 : u32 = u_xlatu36;
    let x_883 : vec4<f32> = x_592.waveData[bitcast<i32>(x_880)];
    let x_886 : vec4<f32> = u_xlat0;
    let x_888 : vec2<f32> = ((-(vec2<f32>(x_877.x, x_877.y)) * vec2<f32>(x_883.w, x_883.w)) + vec2<f32>(x_886.x, x_886.z));
    let x_889 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_888.x, x_889.y, x_889.z, x_888.y);
    let x_891 : vec3<f32> = u_xlat8;
    let x_893 : vec4<f32> = u_xlat7;
    u_xlat7.x = dot(vec2<f32>(x_891.x, x_891.y), vec2<f32>(x_893.x, x_893.w));
    let x_897 : f32 = u_xlat37;
    let x_899 : f32 = u_xlat7.x;
    u_xlat37 = (x_897 * x_899);
    let x_901 : f32 = u_xlat37;
    u_xlat7.x = sin(x_901);
    let x_904 : f32 = u_xlat37;
    u_xlat9 = cos(x_904);
    let x_906 : f32 = u_xlat39;
    let x_907 : u32 = u_xlatu36;
    let x_910 : f32 = x_592.waveData[bitcast<i32>(x_907)].x;
    u_xlat37 = (x_906 * x_910);
    let x_913 : vec3<f32> = u_xlat8;
    let x_915 : f32 = u_xlat37;
    u_xlat30 = (vec2<f32>(x_913.x, x_913.y) * vec2<f32>(x_915, x_915));
    let x_919 : f32 = u_xlat9;
    let x_921 : vec2<f32> = u_xlat30;
    let x_922 : vec2<f32> = (vec2<f32>(x_919, x_919) * x_921);
    let x_923 : vec3<f32> = u_xlat10;
    u_xlat10 = vec3<f32>(x_922.x, x_923.y, x_922.y);
    let x_926 : f32 = u_xlat7.x;
    let x_927 : u32 = u_xlatu36;
    let x_930 : f32 = x_592.waveData[bitcast<i32>(x_927)].x;
    u_xlat37 = (x_926 * x_930);
    let x_932 : f32 = u_xlat35;
    let x_933 : f32 = u_xlat37;
    u_xlat10.y = (x_932 * x_933);
    let x_936 : f32 = u_xlat38;
    let x_938 : vec3<f32> = u_xlat8;
    let x_940 : vec2<f32> = (vec2<f32>(x_936, x_936) * vec2<f32>(x_938.x, x_938.y));
    let x_941 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_940.x, x_940.y, x_941.z);
    let x_943 : f32 = u_xlat9;
    let x_945 : vec3<f32> = u_xlat8;
    let x_947 : vec2<f32> = (vec2<f32>(x_943, x_943) * vec2<f32>(x_945.x, x_945.y));
    let x_948 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_947.x, x_947.y, x_948.z);
    let x_950 : vec3<f32> = u_xlat8;
    let x_952 : vec2<f32> = -(vec2<f32>(x_950.x, x_950.y));
    let x_953 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_952.x, x_953.y, x_952.y);
    let x_955 : f32 = u_xlat38;
    let x_956 : f32 = u_xlat39;
    u_xlat37 = (x_955 * x_956);
    let x_958 : f32 = u_xlat37;
    let x_961 : f32 = u_xlat7.x;
    u_xlat8.y = ((-(x_958) * x_961) + 1.0f);
    let x_966 : f32 = u_xlat29.x;
    u_xlat29.x = x_966;
    let x_969 : f32 = u_xlat29.x;
    u_xlat29.x = clamp(x_969, 0.0f, 1.0f);
    let x_972 : vec3<f32> = u_xlat10;
    let x_973 : vec2<f32> = u_xlat29;
    let x_976 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_972 * vec3<f32>(x_973.x, x_973.x, x_973.x)) + x_976);
    let x_978 : vec3<f32> = u_xlat8;
    let x_979 : f32 = u_xlat35;
    let x_982 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_978 * vec3<f32>(x_979, x_979, x_979)) + x_982);
    let x_985 : u32 = u_xlatu7.y;
    u_xlatu36 = x_985;
  }
  let x_986 : vec4<f32> = u_xlat4;
  let x_988 : vec3<f32> = u_xlat5;
  let x_989 : vec3<f32> = (vec3<f32>(x_986.x, x_986.y, x_986.z) * x_988);
  let x_990 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_989.x, x_989.y, x_989.z, x_990.w);
  u_xlat2.y = 1.0f;
  let x_993 : vec4<f32> = u_xlat2;
  let x_995 : vec3<f32> = u_xlat6;
  u_xlat8 = (vec3<f32>(x_993.x, x_993.y, x_993.z) * x_995);
  let x_997 : vec3<f32> = u_xlat5;
  let x_998 : vec4<f32> = u_xlat4;
  let x_1001 : vec4<f32> = u_xlat0;
  let x_1003 : vec3<f32> = ((x_997 * vec3<f32>(x_998.x, x_998.y, x_998.z)) + vec3<f32>(x_1001.x, x_1001.w, x_1001.z));
  let x_1004 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
  let x_1011 : vec3<f32> = u_xlat12;
  let x_1013 : vec4<f32> = textureSampleLevel(x_WaterFXMap, sampler_ScreenTextures_linear_clamp, vec2<f32>(x_1011.x, x_1011.y), 0.0f);
  u_xlat35 = x_1013.w;
  let x_1015 : f32 = u_xlat35;
  u_xlat35 = ((x_1015 * 2.0f) + -1.0f);
  let x_1019 : f32 = u_xlat0.y;
  let x_1020 : f32 = u_xlat35;
  u_xlat0.w = (x_1019 + x_1020);
  let x_1023 : vec4<f32> = u_xlat0;
  let x_1026 : vec4<f32> = x_592.unity_MatrixVP[1i];
  u_xlat4 = (vec4<f32>(x_1023.w, x_1023.w, x_1023.w, x_1023.w) * x_1026);
  let x_1029 : vec4<f32> = x_592.unity_MatrixVP[0i];
  let x_1030 : vec4<f32> = u_xlat0;
  let x_1033 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_1029 * vec4<f32>(x_1030.x, x_1030.x, x_1030.x, x_1030.x)) + x_1033);
  let x_1036 : vec4<f32> = x_592.unity_MatrixVP[2i];
  let x_1037 : vec4<f32> = u_xlat0;
  let x_1040 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_1036 * vec4<f32>(x_1037.z, x_1037.z, x_1037.z, x_1037.z)) + x_1040);
  let x_1042 : vec4<f32> = u_xlat4;
  let x_1044 : vec4<f32> = x_592.unity_MatrixVP[3i];
  u_xlat4 = (x_1042 + x_1044);
  let x_1046 : vec4<f32> = u_xlat3;
  let x_1048 : vec4<f32> = u_xlat4;
  let x_1050 : vec3<f32> = (vec3<f32>(x_1046.x, x_1046.y, x_1046.z) * vec3<f32>(x_1048.x, x_1048.y, x_1048.w));
  let x_1051 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1050.x, x_1050.y, x_1050.z, x_1051.w);
  let x_1054 : f32 = u_xlat3.y;
  u_xlat3.w = (x_1054 * 0.5f);
  let x_1058 : vec4<f32> = u_xlat3;
  let x_1060 : vec4<f32> = u_xlat3;
  let x_1062 : vec2<f32> = (vec2<f32>(x_1058.z, x_1058.z) + vec2<f32>(x_1060.x, x_1060.w));
  let x_1063 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_1062.x, x_1062.y, x_1063.z, x_1063.w);
  let x_1065 : vec4<f32> = u_xlat0;
  let x_1070 : vec3<f32> = x_592.x_WorldSpaceCameraPos;
  let x_1071 : vec3<f32> = (-(vec3<f32>(x_1065.x, x_1065.w, x_1065.z)) + x_1070);
  let x_1072 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
  let x_1074 : vec4<f32> = u_xlat3;
  let x_1076 : vec4<f32> = u_xlat3;
  u_xlat11 = dot(vec3<f32>(x_1074.x, x_1074.y, x_1074.z), vec3<f32>(x_1076.x, x_1076.y, x_1076.z));
  let x_1079 : f32 = u_xlat11;
  u_xlat35 = max(x_1079, 1.17549435e-37f);
  let x_1082 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_1082);
  let x_1086 : f32 = u_xlat35;
  let x_1088 : vec4<f32> = u_xlat3;
  vs_TEXCOORD2 = (vec3<f32>(x_1086, x_1086, x_1086) * vec3<f32>(x_1088.x, x_1088.y, x_1088.z));
  let x_1091 : vec4<f32> = u_xlat0;
  let x_1094 : vec4<f32> = x_592.unity_MatrixV[1i];
  u_xlat5 = (vec3<f32>(x_1091.w, x_1091.w, x_1091.w) * vec3<f32>(x_1094.x, x_1094.y, x_1094.z));
  let x_1098 : vec4<f32> = x_592.unity_MatrixV[0i];
  let x_1100 : vec4<f32> = u_xlat0;
  let x_1103 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_1098.x, x_1098.y, x_1098.z) * vec3<f32>(x_1100.x, x_1100.x, x_1100.x)) + x_1103);
  let x_1106 : vec4<f32> = x_592.unity_MatrixV[2i];
  let x_1108 : vec4<f32> = u_xlat0;
  let x_1111 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_1106.x, x_1106.y, x_1106.z) * vec3<f32>(x_1108.z, x_1108.z, x_1108.z)) + x_1111);
  let x_1113 : vec3<f32> = u_xlat5;
  let x_1115 : vec4<f32> = x_592.unity_MatrixV[3i];
  u_xlat5 = (x_1113 + vec3<f32>(x_1115.x, x_1115.y, x_1115.z));
  let x_1118 : vec3<f32> = u_xlat5;
  let x_1119 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_1118 / vec3<f32>(x_1119.z, x_1119.z, x_1119.z));
  let x_1122 : vec3<f32> = u_xlat5;
  let x_1123 : vec3<f32> = u_xlat5;
  u_xlat35 = dot(x_1122, x_1123);
  let x_1126 : f32 = u_xlat35;
  vs_TEXCOORD5.x = sqrt(x_1126);
  let x_1130 : f32 = u_xlat11;
  vs_TEXCOORD5.y = sqrt(x_1130);
  let x_1134 : f32 = u_xlat7.y;
  let x_1137 : f32 = x_592.x_MaxWaveHeight;
  u_xlat11 = (x_1134 / x_1137);
  let x_1139 : f32 = u_xlat11;
  vs_TEXCOORD5.z = ((x_1139 * 0.5f) + 0.5f);
  let x_1144 : f32 = u_xlat7.z;
  let x_1146 : f32 = u_xlat7.x;
  vs_TEXCOORD5.w = (x_1144 + x_1146);
  let x_1149 : vec4<f32> = u_xlat3;
  let x_1153 : vec2<f32> = (vec2<f32>(x_1149.x, x_1149.z) * vec2<f32>(0.005f, 0.005f));
  let x_1154 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1153.x, x_1153.y, x_1154.z, x_1154.w);
  let x_1156 : vec4<f32> = u_xlat3;
  let x_1158 : vec4<f32> = u_xlat3;
  u_xlat11 = dot(vec2<f32>(x_1156.x, x_1156.y), vec2<f32>(x_1158.x, x_1158.y));
  let x_1161 : f32 = u_xlat11;
  u_xlat11 = sqrt(x_1161);
  let x_1163 : f32 = u_xlat11;
  u_xlat11 = (x_1163 + -0.25f);
  let x_1166 : f32 = u_xlat11;
  u_xlat11 = clamp(x_1166, 0.0f, 1.0f);
  let x_1168 : vec3<f32> = u_xlat6;
  let x_1170 : vec4<f32> = u_xlat2;
  let x_1174 : vec3<f32> = ((-(x_1168) * vec3<f32>(x_1170.x, x_1170.y, x_1170.z)) + vec3<f32>(0.0f, 1.0f, 0.0f));
  let x_1175 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1174.x, x_1174.y, x_1174.z, x_1175.w);
  let x_1178 : f32 = u_xlat11;
  let x_1180 : vec4<f32> = u_xlat2;
  let x_1183 : vec3<f32> = u_xlat8;
  vs_NORMAL0 = ((vec3<f32>(x_1178, x_1178, x_1178) * vec3<f32>(x_1180.x, x_1180.y, x_1180.z)) + x_1183);
  let x_1185 : vec4<f32> = u_xlat4;
  let x_1186 : vec2<f32> = vec2<f32>(x_1185.z, x_1185.w);
  let x_1187 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_1187.x, x_1187.y, x_1186.x, x_1186.y);
  let x_1193 : vec4<f32> = u_xlat4;
  gl_Position = x_1193;
  let x_1196 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = vec3<f32>(x_1196.x, x_1196.w, x_1196.z);
  let x_1199 : vec3<f32> = u_xlat12;
  vs_TEXCOORD3 = x_1199;
  vs_TEXCOORD4.x = 0.0f;
  let x_1205 : f32 = u_xlat1.x;
  vs_TEXCOORD4.y = x_1205;
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

