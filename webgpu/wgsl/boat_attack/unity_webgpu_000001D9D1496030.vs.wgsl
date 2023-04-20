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

alias Arr_1 = array<vec4<f32>, 20u>;

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(16) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(32) */
  unity_FogParams : vec4<f32>,
  /* @offset(48) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(112) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(176) */
  x_MaxDepth : f32,
  /* @offset(180) */
  x_MaxWaveHeight : f32,
  /* @offset(192) */
  x_VeraslWater_DepthCamParams : vec4<f32>,
  /* @offset(208) */
  x_WaveCount : u32,
  /* @offset(224) */
  waveData : Arr_1,
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

@group(1) @binding(5) var<uniform> x_592 : VGlobals;

@group(0) @binding(4) var x_WaterDepthMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_WaterDepthMap_linear_clamp : sampler;

var<private> u_xlat13 : f32;

var<private> u_xlat11 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlatb37 : bool;

var<private> u_xlatu7 : vec2<u32>;

var<private> u_xlat37 : f32;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat10 : vec3<f32>;

@group(0) @binding(1) var x_WaterFXMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenTextures_linear_clamp : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec2<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
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
  let x_595 : vec4<f32> = x_592.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_586.y, x_586.y, x_586.y, x_586.y) * x_595);
  let x_598 : vec4<f32> = x_592.unity_MatrixVP[0i];
  let x_599 : vec4<f32> = u_xlat0;
  let x_602 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_598 * vec4<f32>(x_599.x, x_599.x, x_599.x, x_599.x)) + x_602);
  let x_605 : vec4<f32> = x_592.unity_MatrixVP[2i];
  let x_606 : vec4<f32> = u_xlat0;
  let x_609 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_605 * vec4<f32>(x_606.z, x_606.z, x_606.z, x_606.z)) + x_609);
  let x_611 : vec4<f32> = u_xlat2;
  let x_613 : vec4<f32> = x_592.unity_MatrixVP[3i];
  u_xlat2 = (x_611 + x_613);
  u_xlat3.x = 0.5f;
  u_xlat3.z = 0.5f;
  let x_619 : f32 = x_592.x_ProjectionParams.x;
  u_xlat3.y = x_619;
  let x_621 : vec4<f32> = u_xlat2;
  let x_623 : vec4<f32> = u_xlat3;
  let x_625 : vec3<f32> = (vec3<f32>(x_621.x, x_621.y, x_621.w) * vec3<f32>(x_623.z, x_623.y, x_623.z));
  let x_626 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  let x_629 : f32 = u_xlat4.y;
  u_xlat4.w = (x_629 * 0.5f);
  let x_633 : vec4<f32> = u_xlat4;
  let x_635 : vec4<f32> = u_xlat4;
  let x_637 : vec2<f32> = (vec2<f32>(x_633.z, x_633.z) + vec2<f32>(x_635.x, x_635.w));
  let x_638 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_637.x, x_637.y, x_638.z, x_638.w);
  let x_640 : vec4<f32> = u_xlat2;
  let x_642 : vec4<f32> = u_xlat2;
  u_xlat12 = (vec3<f32>(x_640.x, x_640.y, x_640.z) / vec3<f32>(x_642.w, x_642.w, x_642.w));
  let x_645 : vec4<f32> = u_xlat0;
  let x_650 : vec2<f32> = ((vec2<f32>(x_645.x, x_645.z) * vec2<f32>(0.00200000009499490261f, 0.00200000009499490261f)) + vec2<f32>(0.5f, 0.5f));
  let x_651 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_650.x, x_650.y, x_651.z, x_651.w);
  let x_663 : vec4<f32> = u_xlat2;
  let x_665 : vec4<f32> = textureSampleLevel(x_WaterDepthMap, sampler_WaterDepthMap_linear_clamp, vec2<f32>(x_663.x, x_663.y), 1.0f);
  u_xlat2.x = x_665.x;
  let x_669 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_669) + 1.0f);
  let x_676 : f32 = x_592.x_MaxDepth;
  let x_679 : f32 = x_592.x_VeraslWater_DepthCamParams.x;
  u_xlat13 = (x_676 + x_679);
  let x_682 : f32 = u_xlat2.x;
  let x_683 : f32 = u_xlat13;
  let x_686 : f32 = x_592.x_VeraslWater_DepthCamParams.x;
  u_xlat2.x = ((x_682 * x_683) + -(x_686));
  let x_691 : f32 = u_xlat2.x;
  u_xlat13 = (-(x_691) + 1.5f);
  let x_695 : f32 = u_xlat13;
  u_xlat13 = (x_695 * 0.40000000596046447754f);
  let x_697 : f32 = u_xlat13;
  u_xlat13 = clamp(x_697, 0.0f, 1.0f);
  let x_699 : f32 = u_xlat13;
  let x_700 : f32 = u_xlat13;
  let x_703 : f32 = u_xlat0.y;
  u_xlat0.w = ((x_699 * x_700) + x_703);
  let x_708 : f32 = u_xlat2.x;
  u_xlat11 = ((x_708 * 0.10000000149011611938f) + 0.05000000074505805969f);
  let x_712 : f32 = u_xlat11;
  let x_713 : vec2<f32> = vec2<f32>(x_712, x_712);
  let x_714 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_713.x, x_714.y, x_713.y, x_714.w);
  let x_716 : vec4<f32> = u_xlat2;
  let x_720 : vec2<f32> = clamp(vec2<f32>(x_716.x, x_716.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_721 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_720.x, x_721.y, x_720.y, x_721.w);
  let x_726 : u32 = x_592.x_WaveCount;
  u_xlat11 = f32(x_726);
  let x_728 : f32 = u_xlat11;
  u_xlat35 = (1.0f / x_728);
  let x_730 : vec4<f32> = u_xlat2;
  let x_733 : vec3<f32> = (vec3<f32>(x_730.z, x_730.z, x_730.z) * vec3<f32>(3.0f, 3.0f, 1.0f));
  let x_734 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_733.x, x_733.y, x_733.z, x_734.w);
  let x_736 : vec4<f32> = u_xlat4;
  let x_739 : vec3<f32> = min(vec3<f32>(x_736.x, x_736.y, x_736.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_740 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
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
    let x_761 : u32 = u_xlatu36;
    let x_763 : u32 = x_592.x_WaveCount;
    u_xlatb37 = (x_761 >= x_763);
    let x_765 : bool = u_xlatb37;
    if (x_765) {
      break;
    }
    let x_772 : u32 = u_xlatu36;
    u_xlatu7 = (vec2<u32>(x_772, x_772) + vec2<u32>(10u, 1u));
    let x_780 : u32 = u_xlatu36;
    let x_783 : f32 = x_592.waveData[bitcast<i32>(x_780)].z;
    u_xlat37 = (6.28318023681640625f / x_783);
    let x_786 : f32 = u_xlat37;
    let x_787 : u32 = u_xlatu36;
    let x_790 : f32 = x_592.waveData[bitcast<i32>(x_787)].x;
    u_xlat38 = (x_786 * x_790);
    let x_793 : f32 = u_xlat11;
    let x_794 : f32 = u_xlat38;
    u_xlat39 = (x_793 * x_794);
    let x_796 : f32 = u_xlat39;
    u_xlat39 = (1.5f / x_796);
    let x_802 : u32 = u_xlatu36;
    let x_805 : vec4<f32> = x_592.waveData[bitcast<i32>(x_802)];
    u_xlat29 = (vec2<f32>(10000.0f, 0.01745329238474369049f) * vec2<f32>(x_805.x, x_805.y));
    let x_810 : f32 = u_xlat29.y;
    u_xlat8.x = sin(x_810);
    let x_815 : f32 = u_xlat29.y;
    u_xlat9 = cos(x_815);
    let x_818 : u32 = u_xlatu36;
    let x_821 : f32 = x_592.waveData[bitcast<i32>(x_818)].w;
    u_xlat40 = (1.0f + -(x_821));
    let x_824 : f32 = u_xlat9;
    u_xlat8.z = x_824;
    let x_827 : vec4<f32> = u_xlat0;
    let x_830 : u32 = u_xlatu7.x;
    let x_833 : vec4<f32> = x_592.waveData[bitcast<i32>(x_830)];
    let x_836 : vec2<f32> = (vec2<f32>(x_827.x, x_827.z) + -(vec2<f32>(x_833.x, x_833.y)));
    let x_837 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_836.x, x_837.y, x_836.y);
    let x_839 : vec3<f32> = u_xlat19;
    let x_841 : u32 = u_xlatu36;
    let x_844 : vec4<f32> = x_592.waveData[bitcast<i32>(x_841)];
    let x_846 : vec2<f32> = (vec2<f32>(x_839.x, x_839.z) * vec2<f32>(x_844.w, x_844.w));
    let x_847 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_846.x, x_847.y, x_846.y);
    let x_849 : vec3<f32> = u_xlat8;
    let x_851 : f32 = u_xlat40;
    let x_854 : vec3<f32> = u_xlat19;
    let x_856 : vec2<f32> = ((vec2<f32>(x_849.x, x_849.z) * vec2<f32>(x_851, x_851)) + vec2<f32>(x_854.x, x_854.z));
    let x_857 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_856.x, x_856.y, x_857.z);
    let x_859 : vec3<f32> = u_xlat8;
    let x_861 : vec3<f32> = u_xlat8;
    u_xlat40 = dot(vec2<f32>(x_859.x, x_859.y), vec2<f32>(x_861.x, x_861.y));
    let x_864 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_864);
    let x_866 : f32 = u_xlat40;
    let x_868 : vec3<f32> = u_xlat8;
    let x_870 : vec2<f32> = (vec2<f32>(x_866, x_866) * vec2<f32>(x_868.x, x_868.y));
    let x_871 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_870.x, x_870.y, x_871.z);
    let x_875 : u32 = u_xlatu7.x;
    let x_878 : vec4<f32> = x_592.waveData[bitcast<i32>(x_875)];
    let x_881 : u32 = u_xlatu36;
    let x_884 : vec4<f32> = x_592.waveData[bitcast<i32>(x_881)];
    let x_887 : vec4<f32> = u_xlat0;
    let x_889 : vec2<f32> = ((-(vec2<f32>(x_878.x, x_878.y)) * vec2<f32>(x_884.w, x_884.w)) + vec2<f32>(x_887.x, x_887.z));
    let x_890 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_889.x, x_890.y, x_890.z, x_889.y);
    let x_892 : vec3<f32> = u_xlat8;
    let x_894 : vec4<f32> = u_xlat7;
    u_xlat7.x = dot(vec2<f32>(x_892.x, x_892.y), vec2<f32>(x_894.x, x_894.w));
    let x_898 : f32 = u_xlat37;
    let x_900 : f32 = u_xlat7.x;
    u_xlat37 = (x_898 * x_900);
    let x_902 : f32 = u_xlat37;
    u_xlat7.x = sin(x_902);
    let x_905 : f32 = u_xlat37;
    u_xlat9 = cos(x_905);
    let x_907 : f32 = u_xlat39;
    let x_908 : u32 = u_xlatu36;
    let x_911 : f32 = x_592.waveData[bitcast<i32>(x_908)].x;
    u_xlat37 = (x_907 * x_911);
    let x_914 : vec3<f32> = u_xlat8;
    let x_916 : f32 = u_xlat37;
    u_xlat30 = (vec2<f32>(x_914.x, x_914.y) * vec2<f32>(x_916, x_916));
    let x_920 : f32 = u_xlat9;
    let x_922 : vec2<f32> = u_xlat30;
    let x_923 : vec2<f32> = (vec2<f32>(x_920, x_920) * x_922);
    let x_924 : vec3<f32> = u_xlat10;
    u_xlat10 = vec3<f32>(x_923.x, x_924.y, x_923.y);
    let x_927 : f32 = u_xlat7.x;
    let x_928 : u32 = u_xlatu36;
    let x_931 : f32 = x_592.waveData[bitcast<i32>(x_928)].x;
    u_xlat37 = (x_927 * x_931);
    let x_933 : f32 = u_xlat35;
    let x_934 : f32 = u_xlat37;
    u_xlat10.y = (x_933 * x_934);
    let x_937 : f32 = u_xlat38;
    let x_939 : vec3<f32> = u_xlat8;
    let x_941 : vec2<f32> = (vec2<f32>(x_937, x_937) * vec2<f32>(x_939.x, x_939.y));
    let x_942 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_941.x, x_941.y, x_942.z);
    let x_944 : f32 = u_xlat9;
    let x_946 : vec3<f32> = u_xlat8;
    let x_948 : vec2<f32> = (vec2<f32>(x_944, x_944) * vec2<f32>(x_946.x, x_946.y));
    let x_949 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_948.x, x_948.y, x_949.z);
    let x_951 : vec3<f32> = u_xlat8;
    let x_953 : vec2<f32> = -(vec2<f32>(x_951.x, x_951.y));
    let x_954 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_953.x, x_954.y, x_953.y);
    let x_956 : f32 = u_xlat38;
    let x_957 : f32 = u_xlat39;
    u_xlat37 = (x_956 * x_957);
    let x_959 : f32 = u_xlat37;
    let x_962 : f32 = u_xlat7.x;
    u_xlat8.y = ((-(x_959) * x_962) + 1.0f);
    let x_967 : f32 = u_xlat29.x;
    u_xlat29.x = x_967;
    let x_970 : f32 = u_xlat29.x;
    u_xlat29.x = clamp(x_970, 0.0f, 1.0f);
    let x_973 : vec3<f32> = u_xlat10;
    let x_974 : vec2<f32> = u_xlat29;
    let x_977 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_973 * vec3<f32>(x_974.x, x_974.x, x_974.x)) + x_977);
    let x_979 : vec3<f32> = u_xlat8;
    let x_980 : f32 = u_xlat35;
    let x_983 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_979 * vec3<f32>(x_980, x_980, x_980)) + x_983);
    let x_986 : u32 = u_xlatu7.y;
    u_xlatu36 = x_986;
  }
  let x_987 : vec4<f32> = u_xlat4;
  let x_989 : vec3<f32> = u_xlat5;
  let x_990 : vec3<f32> = (vec3<f32>(x_987.x, x_987.y, x_987.z) * x_989);
  let x_991 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_990.x, x_990.y, x_990.z, x_991.w);
  u_xlat2.y = 1.0f;
  let x_994 : vec4<f32> = u_xlat2;
  let x_996 : vec3<f32> = u_xlat6;
  u_xlat8 = (vec3<f32>(x_994.x, x_994.y, x_994.z) * x_996);
  let x_998 : vec3<f32> = u_xlat5;
  let x_999 : vec4<f32> = u_xlat4;
  let x_1002 : vec4<f32> = u_xlat0;
  let x_1004 : vec3<f32> = ((x_998 * vec3<f32>(x_999.x, x_999.y, x_999.z)) + vec3<f32>(x_1002.x, x_1002.w, x_1002.z));
  let x_1005 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1004.x, x_1004.y, x_1004.z, x_1005.w);
  let x_1012 : vec3<f32> = u_xlat12;
  let x_1014 : vec4<f32> = textureSampleLevel(x_WaterFXMap, sampler_ScreenTextures_linear_clamp, vec2<f32>(x_1012.x, x_1012.y), 0.0f);
  u_xlat35 = x_1014.w;
  let x_1016 : f32 = u_xlat35;
  u_xlat35 = ((x_1016 * 2.0f) + -1.0f);
  let x_1020 : f32 = u_xlat0.y;
  let x_1021 : f32 = u_xlat35;
  u_xlat0.w = (x_1020 + x_1021);
  let x_1024 : vec4<f32> = u_xlat0;
  let x_1027 : vec4<f32> = x_592.unity_MatrixVP[1i];
  u_xlat4 = (vec4<f32>(x_1024.w, x_1024.w, x_1024.w, x_1024.w) * x_1027);
  let x_1030 : vec4<f32> = x_592.unity_MatrixVP[0i];
  let x_1031 : vec4<f32> = u_xlat0;
  let x_1034 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_1030 * vec4<f32>(x_1031.x, x_1031.x, x_1031.x, x_1031.x)) + x_1034);
  let x_1037 : vec4<f32> = x_592.unity_MatrixVP[2i];
  let x_1038 : vec4<f32> = u_xlat0;
  let x_1041 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_1037 * vec4<f32>(x_1038.z, x_1038.z, x_1038.z, x_1038.z)) + x_1041);
  let x_1043 : vec4<f32> = u_xlat4;
  let x_1045 : vec4<f32> = x_592.unity_MatrixVP[3i];
  u_xlat4 = (x_1043 + x_1045);
  let x_1047 : vec4<f32> = u_xlat3;
  let x_1049 : vec4<f32> = u_xlat4;
  let x_1051 : vec3<f32> = (vec3<f32>(x_1047.x, x_1047.y, x_1047.z) * vec3<f32>(x_1049.x, x_1049.y, x_1049.w));
  let x_1052 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
  let x_1055 : f32 = u_xlat3.y;
  u_xlat3.w = (x_1055 * 0.5f);
  let x_1059 : vec4<f32> = u_xlat3;
  let x_1061 : vec4<f32> = u_xlat3;
  let x_1063 : vec2<f32> = (vec2<f32>(x_1059.z, x_1059.z) + vec2<f32>(x_1061.x, x_1061.w));
  let x_1064 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_1063.x, x_1063.y, x_1064.z, x_1064.w);
  let x_1066 : vec4<f32> = u_xlat0;
  let x_1071 : vec3<f32> = x_592.x_WorldSpaceCameraPos;
  let x_1072 : vec3<f32> = (-(vec3<f32>(x_1066.x, x_1066.w, x_1066.z)) + x_1071);
  let x_1073 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1073.w);
  let x_1075 : vec4<f32> = u_xlat3;
  let x_1077 : vec4<f32> = u_xlat3;
  u_xlat11 = dot(vec3<f32>(x_1075.x, x_1075.y, x_1075.z), vec3<f32>(x_1077.x, x_1077.y, x_1077.z));
  let x_1080 : f32 = u_xlat11;
  u_xlat35 = max(x_1080, 1.17549435e-38f);
  let x_1083 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_1083);
  let x_1087 : f32 = u_xlat35;
  let x_1089 : vec4<f32> = u_xlat3;
  vs_TEXCOORD2 = (vec3<f32>(x_1087, x_1087, x_1087) * vec3<f32>(x_1089.x, x_1089.y, x_1089.z));
  let x_1093 : f32 = u_xlat4.z;
  let x_1095 : f32 = x_592.x_ProjectionParams.y;
  u_xlat35 = (x_1093 / x_1095);
  let x_1097 : f32 = u_xlat35;
  u_xlat35 = (-(x_1097) + 1.0f);
  let x_1100 : f32 = u_xlat35;
  let x_1102 : f32 = x_592.x_ProjectionParams.z;
  u_xlat35 = (x_1100 * x_1102);
  let x_1104 : f32 = u_xlat35;
  u_xlat35 = max(x_1104, 0.0f);
  let x_1108 : f32 = u_xlat35;
  let x_1110 : f32 = x_592.unity_FogParams.x;
  vs_TEXCOORD4.x = (x_1108 * x_1110);
  let x_1114 : vec4<f32> = u_xlat0;
  let x_1117 : vec4<f32> = x_592.unity_MatrixV[1i];
  u_xlat5 = (vec3<f32>(x_1114.w, x_1114.w, x_1114.w) * vec3<f32>(x_1117.x, x_1117.y, x_1117.z));
  let x_1121 : vec4<f32> = x_592.unity_MatrixV[0i];
  let x_1123 : vec4<f32> = u_xlat0;
  let x_1126 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_1121.x, x_1121.y, x_1121.z) * vec3<f32>(x_1123.x, x_1123.x, x_1123.x)) + x_1126);
  let x_1129 : vec4<f32> = x_592.unity_MatrixV[2i];
  let x_1131 : vec4<f32> = u_xlat0;
  let x_1134 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_1129.x, x_1129.y, x_1129.z) * vec3<f32>(x_1131.z, x_1131.z, x_1131.z)) + x_1134);
  let x_1136 : vec3<f32> = u_xlat5;
  let x_1138 : vec4<f32> = x_592.unity_MatrixV[3i];
  u_xlat5 = (x_1136 + vec3<f32>(x_1138.x, x_1138.y, x_1138.z));
  let x_1141 : vec3<f32> = u_xlat5;
  let x_1142 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_1141 / vec3<f32>(x_1142.z, x_1142.z, x_1142.z));
  let x_1145 : vec3<f32> = u_xlat5;
  let x_1146 : vec3<f32> = u_xlat5;
  u_xlat35 = dot(x_1145, x_1146);
  let x_1149 : f32 = u_xlat35;
  vs_TEXCOORD5.x = sqrt(x_1149);
  let x_1152 : f32 = u_xlat11;
  vs_TEXCOORD5.y = sqrt(x_1152);
  let x_1156 : f32 = u_xlat7.y;
  let x_1159 : f32 = x_592.x_MaxWaveHeight;
  u_xlat11 = (x_1156 / x_1159);
  let x_1161 : f32 = u_xlat11;
  vs_TEXCOORD5.z = ((x_1161 * 0.5f) + 0.5f);
  let x_1166 : f32 = u_xlat7.z;
  let x_1168 : f32 = u_xlat7.x;
  vs_TEXCOORD5.w = (x_1166 + x_1168);
  let x_1171 : vec4<f32> = u_xlat3;
  let x_1175 : vec2<f32> = (vec2<f32>(x_1171.x, x_1171.z) * vec2<f32>(0.00499999988824129105f, 0.00499999988824129105f));
  let x_1176 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1175.x, x_1175.y, x_1176.z, x_1176.w);
  let x_1178 : vec4<f32> = u_xlat3;
  let x_1180 : vec4<f32> = u_xlat3;
  u_xlat11 = dot(vec2<f32>(x_1178.x, x_1178.y), vec2<f32>(x_1180.x, x_1180.y));
  let x_1183 : f32 = u_xlat11;
  u_xlat11 = sqrt(x_1183);
  let x_1185 : f32 = u_xlat11;
  u_xlat11 = (x_1185 + -0.25f);
  let x_1188 : f32 = u_xlat11;
  u_xlat11 = clamp(x_1188, 0.0f, 1.0f);
  let x_1190 : vec3<f32> = u_xlat6;
  let x_1192 : vec4<f32> = u_xlat2;
  let x_1196 : vec3<f32> = ((-(x_1190) * vec3<f32>(x_1192.x, x_1192.y, x_1192.z)) + vec3<f32>(0.0f, 1.0f, 0.0f));
  let x_1197 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1196.x, x_1196.y, x_1196.z, x_1197.w);
  let x_1200 : f32 = u_xlat11;
  let x_1202 : vec4<f32> = u_xlat2;
  let x_1205 : vec3<f32> = u_xlat8;
  vs_NORMAL0 = ((vec3<f32>(x_1200, x_1200, x_1200) * vec3<f32>(x_1202.x, x_1202.y, x_1202.z)) + x_1205);
  let x_1207 : vec4<f32> = u_xlat4;
  let x_1208 : vec2<f32> = vec2<f32>(x_1207.z, x_1207.w);
  let x_1209 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_1209.x, x_1209.y, x_1208.x, x_1208.y);
  let x_1215 : vec4<f32> = u_xlat4;
  gl_Position = x_1215;
  let x_1218 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = vec3<f32>(x_1218.x, x_1218.w, x_1218.z);
  let x_1221 : vec3<f32> = u_xlat12;
  vs_TEXCOORD3 = x_1221;
  let x_1223 : f32 = u_xlat1.x;
  vs_TEXCOORD4.y = x_1223;
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


