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
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(16) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(32) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(96) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(160) */
  x_MaxDepth : f32,
  /* @offset(164) */
  x_MaxWaveHeight : f32,
  /* @offset(176) */
  x_VeraslWater_DepthCamParams : vec4<f32>,
  /* @offset(192) */
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

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat24 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat35 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat23 : vec2<f32>;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat14 : f32;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(5) var<uniform> x_590 : VGlobals;

@group(0) @binding(4) var x_WaterDepthMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_WaterDepthMap_linear_clamp : sampler;

var<private> u_xlat13 : f32;

var<private> u_xlat11 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(19) var<storage, read> x_766 : x_WaveDataBuffer;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat37 : f32;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat18 : vec2<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat41 : f32;

var<private> u_xlat19 : vec2<f32>;

@group(0) @binding(1) var x_WaterFXMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenTextures_linear_clamp : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec2<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlatb37 : bool;

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
  u_xlat24.x = dot(vec2<f32>(x_108.z, x_108.w), vec2<f32>(127.09999847412109375f, 311.70001220703125f));
  let x_117 : vec4<f32> = u_xlat1;
  u_xlat24.y = dot(vec2<f32>(x_117.z, x_117.w), vec2<f32>(269.5f, 183.3000030517578125f));
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
  u_xlat35 = dot(vec2<f32>(x_154.x, x_154.y), vec2<f32>(127.09999847412109375f, 311.70001220703125f));
  let x_157 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec2<f32>(x_157.x, x_157.y), vec2<f32>(269.5f, 183.3000030517578125f));
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
  u_xlat35 = dot(vec2<f32>(x_208.z, x_208.w), vec2<f32>(127.09999847412109375f, 311.70001220703125f));
  let x_211 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec2<f32>(x_211.z, x_211.w), vec2<f32>(269.5f, 183.3000030517578125f));
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
  u_xlat3.x = dot(vec2<f32>(x_246.z, x_246.w), vec2<f32>(127.09999847412109375f, 311.70001220703125f));
  let x_251 : vec4<f32> = u_xlat1;
  u_xlat23.x = dot(vec2<f32>(x_251.z, x_251.w), vec2<f32>(269.5f, 183.3000030517578125f));
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
  u_xlat34 = dot(vec2<f32>(x_335.x, x_335.y), vec2<f32>(127.09999847412109375f, 311.70001220703125f));
  let x_338 : vec3<f32> = u_xlat12;
  u_xlat3.x = dot(vec2<f32>(x_338.x, x_338.y), vec2<f32>(269.5f, 183.3000030517578125f));
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
  u_xlat4.x = dot(vec2<f32>(x_373.x, x_373.y), vec2<f32>(127.09999847412109375f, 311.70001220703125f));
  let x_377 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec2<f32>(x_377.x, x_377.y), vec2<f32>(269.5f, 183.3000030517578125f));
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
  u_xlat3.x = dot(vec2<f32>(x_427.z, x_427.w), vec2<f32>(127.09999847412109375f, 311.70001220703125f));
  let x_431 : vec4<f32> = u_xlat3;
  u_xlat3.y = dot(vec2<f32>(x_431.z, x_431.w), vec2<f32>(269.5f, 183.3000030517578125f));
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
  u_xlat14 = dot(vec2<f32>(x_469.x, x_469.y), vec2<f32>(127.09999847412109375f, 311.70001220703125f));
  let x_472 : vec3<f32> = u_xlat12;
  u_xlat12.x = dot(vec2<f32>(x_472.x, x_472.y), vec2<f32>(269.5f, 183.3000030517578125f));
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
  let x_562 : vec2<f32> = (vec2<f32>(x_557.x, x_557.x) * vec2<f32>(0.10000000149011611938f, 0.20000000298023223877f));
  let x_563 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_562.x, x_562.y, x_563.z);
  let x_567 : vec4<f32> = u_xlat0;
  let x_571 : vec3<f32> = u_xlat12;
  let x_573 : vec2<f32> = ((vec2<f32>(x_567.x, x_567.z) * vec2<f32>(0.10000000149011611938f, 0.10000000149011611938f)) + vec2<f32>(x_571.x, x_571.x));
  let x_574 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_574.x, x_574.y, x_573.x, x_573.y);
  let x_576 : vec4<f32> = u_xlat0;
  let x_581 : vec3<f32> = u_xlat12;
  let x_583 : vec2<f32> = ((vec2<f32>(x_576.x, x_576.z) * vec2<f32>(0.40000000596046447754f, 0.40000000596046447754f)) + vec2<f32>(x_581.y, x_581.y));
  let x_584 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);
  let x_586 : vec4<f32> = u_xlat0;
  let x_592 : vec4<f32> = x_590.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_586.y, x_586.y, x_586.y, x_586.y) * x_592);
  let x_595 : vec4<f32> = x_590.unity_MatrixVP[0i];
  let x_596 : vec4<f32> = u_xlat0;
  let x_599 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_595 * vec4<f32>(x_596.x, x_596.x, x_596.x, x_596.x)) + x_599);
  let x_602 : vec4<f32> = x_590.unity_MatrixVP[2i];
  let x_603 : vec4<f32> = u_xlat0;
  let x_606 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_602 * vec4<f32>(x_603.z, x_603.z, x_603.z, x_603.z)) + x_606);
  let x_608 : vec4<f32> = u_xlat2;
  let x_610 : vec4<f32> = x_590.unity_MatrixVP[3i];
  u_xlat2 = (x_608 + x_610);
  u_xlat3.x = 0.5f;
  u_xlat3.z = 0.5f;
  let x_616 : f32 = x_590.x_ProjectionParams.x;
  u_xlat3.y = x_616;
  let x_618 : vec4<f32> = u_xlat2;
  let x_620 : vec4<f32> = u_xlat3;
  let x_622 : vec3<f32> = (vec3<f32>(x_618.x, x_618.y, x_618.w) * vec3<f32>(x_620.z, x_620.y, x_620.z));
  let x_623 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
  let x_626 : f32 = u_xlat4.y;
  u_xlat4.w = (x_626 * 0.5f);
  let x_630 : vec4<f32> = u_xlat4;
  let x_632 : vec4<f32> = u_xlat4;
  let x_634 : vec2<f32> = (vec2<f32>(x_630.z, x_630.z) + vec2<f32>(x_632.x, x_632.w));
  let x_635 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_634.x, x_634.y, x_635.z, x_635.w);
  let x_637 : vec4<f32> = u_xlat2;
  let x_639 : vec4<f32> = u_xlat2;
  u_xlat12 = (vec3<f32>(x_637.x, x_637.y, x_637.z) / vec3<f32>(x_639.w, x_639.w, x_639.w));
  let x_642 : vec4<f32> = u_xlat0;
  let x_647 : vec2<f32> = ((vec2<f32>(x_642.x, x_642.z) * vec2<f32>(0.00200000009499490261f, 0.00200000009499490261f)) + vec2<f32>(0.5f, 0.5f));
  let x_648 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_647.x, x_647.y, x_648.z, x_648.w);
  let x_660 : vec4<f32> = u_xlat2;
  let x_662 : vec4<f32> = textureSampleLevel(x_WaterDepthMap, sampler_WaterDepthMap_linear_clamp, vec2<f32>(x_660.x, x_660.y), 1.0f);
  u_xlat2.x = x_662.x;
  let x_666 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_666) + 1.0f);
  let x_673 : f32 = x_590.x_MaxDepth;
  let x_676 : f32 = x_590.x_VeraslWater_DepthCamParams.x;
  u_xlat13 = (x_673 + x_676);
  let x_679 : f32 = u_xlat2.x;
  let x_680 : f32 = u_xlat13;
  let x_683 : f32 = x_590.x_VeraslWater_DepthCamParams.x;
  u_xlat2.x = ((x_679 * x_680) + -(x_683));
  let x_688 : f32 = u_xlat2.x;
  u_xlat13 = (-(x_688) + 1.5f);
  let x_692 : f32 = u_xlat13;
  u_xlat13 = (x_692 * 0.40000000596046447754f);
  let x_694 : f32 = u_xlat13;
  u_xlat13 = clamp(x_694, 0.0f, 1.0f);
  let x_696 : f32 = u_xlat13;
  let x_697 : f32 = u_xlat13;
  let x_700 : f32 = u_xlat0.y;
  u_xlat0.w = ((x_696 * x_697) + x_700);
  let x_705 : f32 = u_xlat2.x;
  u_xlat11 = ((x_705 * 0.10000000149011611938f) + 0.05000000074505805969f);
  let x_709 : f32 = u_xlat11;
  let x_710 : vec2<f32> = vec2<f32>(x_709, x_709);
  let x_711 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_710.x, x_711.y, x_710.y, x_711.w);
  let x_713 : vec4<f32> = u_xlat2;
  let x_717 : vec2<f32> = clamp(vec2<f32>(x_713.x, x_713.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_718 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_717.x, x_718.y, x_717.y, x_718.w);
  let x_723 : u32 = x_590.x_WaveCount;
  u_xlat11 = f32(x_723);
  let x_725 : f32 = u_xlat11;
  u_xlat35 = (1.0f / x_725);
  let x_727 : vec4<f32> = u_xlat2;
  let x_730 : vec3<f32> = (vec3<f32>(x_727.z, x_727.z, x_727.z) * vec3<f32>(3.0f, 3.0f, 1.0f));
  let x_731 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
  let x_733 : vec4<f32> = u_xlat4;
  let x_736 : vec3<f32> = min(vec3<f32>(x_733.x, x_733.y, x_733.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_737 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_754 : u32 = u_xlatu_loop_1;
    let x_756 : u32 = x_590.x_WaveCount;
    if ((x_754 < x_756)) {
    } else {
      break;
    }
    let x_767 : u32 = u_xlatu_loop_1;
    let x_769 : u32 = x_766.x_WaveDataBuffer_buf[x_767].value[0i];
    let x_771 : u32 = u_xlatu_loop_1;
    let x_773 : u32 = x_766.x_WaveDataBuffer_buf[x_771].value[1i];
    let x_775 : u32 = u_xlatu_loop_1;
    let x_777 : u32 = x_766.x_WaveDataBuffer_buf[x_775].value[2i];
    let x_779 : u32 = u_xlatu_loop_1;
    let x_781 : u32 = x_766.x_WaveDataBuffer_buf[x_779].value[3i];
    u_xlat7 = vec4<f32>(bitcast<f32>(x_769), bitcast<f32>(x_773), bitcast<f32>(x_777), bitcast<f32>(x_781));
    let x_785 : u32 = u_xlatu_loop_1;
    let x_787 : u32 = x_766.x_WaveDataBuffer_buf[x_785].value[4i];
    let x_789 : u32 = u_xlatu_loop_1;
    let x_792 : u32 = x_766.x_WaveDataBuffer_buf[x_789].value[5i];
    let x_794 : vec2<f32> = vec2<f32>(bitcast<f32>(x_787), bitcast<f32>(x_792));
    let x_795 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_794.x, x_794.y, x_795.z);
    let x_800 : f32 = u_xlat7.z;
    u_xlat37 = (6.28318023681640625f / x_800);
    let x_803 : f32 = u_xlat37;
    let x_805 : f32 = u_xlat7.x;
    u_xlat38 = (x_803 * x_805);
    let x_808 : f32 = u_xlat11;
    let x_809 : f32 = u_xlat38;
    u_xlat39 = (x_808 * x_809);
    let x_811 : f32 = u_xlat39;
    u_xlat39 = (1.5f / x_811);
    let x_814 : vec4<f32> = u_xlat7;
    u_xlat18 = (vec2<f32>(x_814.x, x_814.y) * vec2<f32>(10000.0f, 0.01745329238474369049f));
    let x_822 : f32 = u_xlat18.y;
    u_xlat9.x = sin(x_822);
    let x_827 : f32 = u_xlat18.y;
    u_xlat10.x = cos(x_827);
    let x_832 : f32 = u_xlat8.y;
    u_xlat29.x = (-(x_832) + 1.0f);
    let x_837 : f32 = u_xlat10.x;
    u_xlat9.z = x_837;
    let x_840 : f32 = u_xlat7.w;
    u_xlat8.z = x_840;
    let x_843 : vec4<f32> = u_xlat0;
    let x_845 : vec3<f32> = u_xlat8;
    let x_848 : vec2<f32> = (vec2<f32>(x_843.x, x_843.z) + -(vec2<f32>(x_845.z, x_845.x)));
    let x_849 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_848.x, x_849.y, x_848.y);
    let x_851 : vec3<f32> = u_xlat8;
    let x_853 : vec3<f32> = u_xlat20;
    let x_855 : vec2<f32> = (vec2<f32>(x_851.y, x_851.y) * vec2<f32>(x_853.x, x_853.z));
    let x_856 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_855.x, x_856.y, x_855.y);
    let x_858 : vec3<f32> = u_xlat9;
    let x_860 : vec2<f32> = u_xlat29;
    let x_863 : vec3<f32> = u_xlat20;
    u_xlat29 = ((vec2<f32>(x_858.x, x_858.z) * vec2<f32>(x_860.x, x_860.x)) + vec2<f32>(x_863.x, x_863.z));
    let x_867 : vec2<f32> = u_xlat29;
    let x_868 : vec2<f32> = u_xlat29;
    u_xlat41 = dot(x_867, x_868);
    let x_870 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_870);
    let x_872 : vec2<f32> = u_xlat29;
    let x_873 : f32 = u_xlat41;
    u_xlat29 = (x_872 * vec2<f32>(x_873, x_873));
    let x_876 : vec3<f32> = u_xlat8;
    let x_879 : vec3<f32> = u_xlat8;
    let x_882 : vec4<f32> = u_xlat0;
    let x_884 : vec2<f32> = ((-(vec2<f32>(x_876.z, x_876.x)) * vec2<f32>(x_879.y, x_879.y)) + vec2<f32>(x_882.x, x_882.z));
    let x_885 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_884.x, x_884.y, x_885.z);
    let x_887 : vec2<f32> = u_xlat29;
    let x_888 : vec3<f32> = u_xlat8;
    u_xlat8.x = dot(x_887, vec2<f32>(x_888.x, x_888.y));
    let x_892 : f32 = u_xlat37;
    let x_894 : f32 = u_xlat8.x;
    u_xlat37 = (x_892 * x_894);
    let x_896 : f32 = u_xlat37;
    u_xlat8.x = sin(x_896);
    let x_899 : f32 = u_xlat37;
    u_xlat9.x = cos(x_899);
    let x_903 : f32 = u_xlat7.x;
    let x_904 : f32 = u_xlat39;
    u_xlat37 = (x_903 * x_904);
    let x_907 : vec2<f32> = u_xlat29;
    let x_908 : f32 = u_xlat37;
    u_xlat19 = (x_907 * vec2<f32>(x_908, x_908));
    let x_911 : vec3<f32> = u_xlat9;
    let x_913 : vec2<f32> = u_xlat19;
    let x_914 : vec2<f32> = (vec2<f32>(x_911.x, x_911.x) * x_913);
    let x_915 : vec3<f32> = u_xlat10;
    u_xlat10 = vec3<f32>(x_914.x, x_915.y, x_914.y);
    let x_918 : f32 = u_xlat7.x;
    let x_920 : f32 = u_xlat8.x;
    u_xlat37 = (x_918 * x_920);
    let x_922 : f32 = u_xlat35;
    let x_923 : f32 = u_xlat37;
    u_xlat10.y = (x_922 * x_923);
    let x_926 : f32 = u_xlat38;
    let x_928 : vec2<f32> = u_xlat29;
    let x_929 : vec2<f32> = (vec2<f32>(x_926, x_926) * x_928);
    let x_930 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_929.x, x_930.y, x_929.y, x_930.w);
    let x_932 : vec3<f32> = u_xlat9;
    let x_934 : vec4<f32> = u_xlat7;
    let x_936 : vec2<f32> = (vec2<f32>(x_932.x, x_932.x) * vec2<f32>(x_934.x, x_934.z));
    let x_937 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_936.x, x_937.y, x_936.y, x_937.w);
    let x_939 : vec4<f32> = u_xlat7;
    let x_941 : vec2<f32> = -(vec2<f32>(x_939.x, x_939.z));
    let x_942 : vec3<f32> = u_xlat9;
    u_xlat9 = vec3<f32>(x_941.x, x_942.y, x_941.y);
    let x_944 : f32 = u_xlat38;
    let x_945 : f32 = u_xlat39;
    u_xlat37 = (x_944 * x_945);
    let x_947 : f32 = u_xlat37;
    let x_950 : f32 = u_xlat8.x;
    u_xlat9.y = ((-(x_947) * x_950) + 1.0f);
    let x_955 : f32 = u_xlat18.x;
    u_xlat18.x = x_955;
    let x_958 : f32 = u_xlat18.x;
    u_xlat18.x = clamp(x_958, 0.0f, 1.0f);
    let x_961 : vec3<f32> = u_xlat10;
    let x_962 : vec2<f32> = u_xlat18;
    let x_965 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_961 * vec3<f32>(x_962.x, x_962.x, x_962.x)) + x_965);
    let x_967 : vec3<f32> = u_xlat9;
    let x_968 : f32 = u_xlat35;
    let x_971 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_967 * vec3<f32>(x_968, x_968, x_968)) + x_971);

    continuing {
      let x_973 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_973 + bitcast<u32>(1i));
    }
  }
  let x_975 : vec4<f32> = u_xlat4;
  let x_977 : vec3<f32> = u_xlat5;
  let x_978 : vec3<f32> = (vec3<f32>(x_975.x, x_975.y, x_975.z) * x_977);
  let x_979 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_978.x, x_978.y, x_978.z, x_979.w);
  u_xlat2.y = 1.0f;
  let x_982 : vec4<f32> = u_xlat2;
  let x_984 : vec3<f32> = u_xlat6;
  u_xlat8 = (vec3<f32>(x_982.x, x_982.y, x_982.z) * x_984);
  let x_986 : vec3<f32> = u_xlat5;
  let x_987 : vec4<f32> = u_xlat4;
  let x_990 : vec4<f32> = u_xlat0;
  let x_992 : vec3<f32> = ((x_986 * vec3<f32>(x_987.x, x_987.y, x_987.z)) + vec3<f32>(x_990.x, x_990.w, x_990.z));
  let x_993 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_992.x, x_992.y, x_992.z, x_993.w);
  let x_1000 : vec3<f32> = u_xlat12;
  let x_1002 : vec4<f32> = textureSampleLevel(x_WaterFXMap, sampler_ScreenTextures_linear_clamp, vec2<f32>(x_1000.x, x_1000.y), 0.0f);
  u_xlat35 = x_1002.w;
  let x_1004 : f32 = u_xlat35;
  u_xlat35 = ((x_1004 * 2.0f) + -1.0f);
  let x_1008 : f32 = u_xlat0.y;
  let x_1009 : f32 = u_xlat35;
  u_xlat0.w = (x_1008 + x_1009);
  let x_1012 : vec4<f32> = u_xlat0;
  let x_1015 : vec4<f32> = x_590.unity_MatrixVP[1i];
  u_xlat4 = (vec4<f32>(x_1012.w, x_1012.w, x_1012.w, x_1012.w) * x_1015);
  let x_1018 : vec4<f32> = x_590.unity_MatrixVP[0i];
  let x_1019 : vec4<f32> = u_xlat0;
  let x_1022 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_1018 * vec4<f32>(x_1019.x, x_1019.x, x_1019.x, x_1019.x)) + x_1022);
  let x_1025 : vec4<f32> = x_590.unity_MatrixVP[2i];
  let x_1026 : vec4<f32> = u_xlat0;
  let x_1029 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_1025 * vec4<f32>(x_1026.z, x_1026.z, x_1026.z, x_1026.z)) + x_1029);
  let x_1031 : vec4<f32> = u_xlat4;
  let x_1033 : vec4<f32> = x_590.unity_MatrixVP[3i];
  u_xlat4 = (x_1031 + x_1033);
  let x_1035 : vec4<f32> = u_xlat3;
  let x_1037 : vec4<f32> = u_xlat4;
  let x_1039 : vec3<f32> = (vec3<f32>(x_1035.x, x_1035.y, x_1035.z) * vec3<f32>(x_1037.x, x_1037.y, x_1037.w));
  let x_1040 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
  let x_1043 : f32 = u_xlat3.y;
  u_xlat3.w = (x_1043 * 0.5f);
  let x_1047 : vec4<f32> = u_xlat3;
  let x_1049 : vec4<f32> = u_xlat3;
  let x_1051 : vec2<f32> = (vec2<f32>(x_1047.z, x_1047.z) + vec2<f32>(x_1049.x, x_1049.w));
  let x_1052 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_1051.x, x_1051.y, x_1052.z, x_1052.w);
  let x_1054 : vec4<f32> = u_xlat0;
  let x_1059 : vec3<f32> = x_590.x_WorldSpaceCameraPos;
  let x_1060 : vec3<f32> = (-(vec3<f32>(x_1054.x, x_1054.w, x_1054.z)) + x_1059);
  let x_1061 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1061.w);
  let x_1063 : vec4<f32> = u_xlat3;
  let x_1065 : vec4<f32> = u_xlat3;
  u_xlat11 = dot(vec3<f32>(x_1063.x, x_1063.y, x_1063.z), vec3<f32>(x_1065.x, x_1065.y, x_1065.z));
  let x_1068 : f32 = u_xlat11;
  u_xlat35 = max(x_1068, 1.17549435e-38f);
  let x_1071 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_1071);
  let x_1075 : f32 = u_xlat35;
  let x_1077 : vec4<f32> = u_xlat3;
  vs_TEXCOORD2 = (vec3<f32>(x_1075, x_1075, x_1075) * vec3<f32>(x_1077.x, x_1077.y, x_1077.z));
  let x_1080 : vec4<f32> = u_xlat0;
  let x_1083 : vec4<f32> = x_590.unity_MatrixV[1i];
  u_xlat5 = (vec3<f32>(x_1080.w, x_1080.w, x_1080.w) * vec3<f32>(x_1083.x, x_1083.y, x_1083.z));
  let x_1087 : vec4<f32> = x_590.unity_MatrixV[0i];
  let x_1089 : vec4<f32> = u_xlat0;
  let x_1092 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_1087.x, x_1087.y, x_1087.z) * vec3<f32>(x_1089.x, x_1089.x, x_1089.x)) + x_1092);
  let x_1095 : vec4<f32> = x_590.unity_MatrixV[2i];
  let x_1097 : vec4<f32> = u_xlat0;
  let x_1100 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_1095.x, x_1095.y, x_1095.z) * vec3<f32>(x_1097.z, x_1097.z, x_1097.z)) + x_1100);
  let x_1102 : vec3<f32> = u_xlat5;
  let x_1104 : vec4<f32> = x_590.unity_MatrixV[3i];
  u_xlat5 = (x_1102 + vec3<f32>(x_1104.x, x_1104.y, x_1104.z));
  let x_1107 : vec3<f32> = u_xlat5;
  let x_1108 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_1107 / vec3<f32>(x_1108.z, x_1108.z, x_1108.z));
  let x_1111 : vec3<f32> = u_xlat5;
  let x_1112 : vec3<f32> = u_xlat5;
  u_xlat35 = dot(x_1111, x_1112);
  let x_1115 : f32 = u_xlat35;
  vs_TEXCOORD5.x = sqrt(x_1115);
  let x_1119 : f32 = u_xlat11;
  vs_TEXCOORD5.y = sqrt(x_1119);
  let x_1123 : f32 = u_xlat7.y;
  let x_1125 : f32 = x_590.x_MaxWaveHeight;
  u_xlat11 = (x_1123 / x_1125);
  let x_1127 : f32 = u_xlat11;
  vs_TEXCOORD5.z = ((x_1127 * 0.5f) + 0.5f);
  let x_1132 : f32 = u_xlat7.z;
  let x_1134 : f32 = u_xlat7.x;
  vs_TEXCOORD5.w = (x_1132 + x_1134);
  let x_1137 : vec4<f32> = u_xlat3;
  let x_1141 : vec2<f32> = (vec2<f32>(x_1137.x, x_1137.z) * vec2<f32>(0.00499999988824129105f, 0.00499999988824129105f));
  let x_1142 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1141.x, x_1141.y, x_1142.z, x_1142.w);
  let x_1144 : vec4<f32> = u_xlat3;
  let x_1146 : vec4<f32> = u_xlat3;
  u_xlat11 = dot(vec2<f32>(x_1144.x, x_1144.y), vec2<f32>(x_1146.x, x_1146.y));
  let x_1149 : f32 = u_xlat11;
  u_xlat11 = sqrt(x_1149);
  let x_1151 : f32 = u_xlat11;
  u_xlat11 = (x_1151 + -0.25f);
  let x_1154 : f32 = u_xlat11;
  u_xlat11 = clamp(x_1154, 0.0f, 1.0f);
  let x_1156 : vec3<f32> = u_xlat6;
  let x_1158 : vec4<f32> = u_xlat2;
  let x_1162 : vec3<f32> = ((-(x_1156) * vec3<f32>(x_1158.x, x_1158.y, x_1158.z)) + vec3<f32>(0.0f, 1.0f, 0.0f));
  let x_1163 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1162.x, x_1162.y, x_1162.z, x_1163.w);
  let x_1166 : f32 = u_xlat11;
  let x_1168 : vec4<f32> = u_xlat2;
  let x_1171 : vec3<f32> = u_xlat8;
  vs_NORMAL0 = ((vec3<f32>(x_1166, x_1166, x_1166) * vec3<f32>(x_1168.x, x_1168.y, x_1168.z)) + x_1171);
  let x_1173 : vec4<f32> = u_xlat4;
  let x_1174 : vec2<f32> = vec2<f32>(x_1173.z, x_1173.w);
  let x_1175 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_1175.x, x_1175.y, x_1174.x, x_1174.y);
  let x_1181 : vec4<f32> = u_xlat4;
  gl_Position = x_1181;
  let x_1184 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = vec3<f32>(x_1184.x, x_1184.w, x_1184.z);
  let x_1187 : vec3<f32> = u_xlat12;
  vs_TEXCOORD3 = x_1187;
  vs_TEXCOORD4.x = 0.0f;
  let x_1191 : f32 = u_xlat1.x;
  vs_TEXCOORD4.y = x_1191;
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


