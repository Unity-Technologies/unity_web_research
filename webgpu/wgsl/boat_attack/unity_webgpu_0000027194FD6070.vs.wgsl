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

struct TerrainGrass {
  /* @offset(0) */
  x_WavingTint : vec4<f32>,
  /* @offset(16) */
  x_WaveAndDistance : vec4<f32>,
  /* @offset(32) */
  x_CameraPosition : vec4<f32>,
  /* @offset(48) */
  x_CameraRight : vec3<f32>,
  /* @offset(64) */
  x_CameraUp : vec3<f32>,
}

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(16) */
  unity_MatrixVP : mat4x4<f32>,
}

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

@group(1) @binding(2) var<uniform> x_20 : UnityPerDraw;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(6) var<uniform> x_40 : TerrainGrass;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlatb2 : bool;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat16 : f32;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_351 : VGlobals;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_92 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = in_TEXCOORD1;
  let x_25 : vec4<f32> = x_20.unity_LightmapST;
  let x_29 : vec4<f32> = x_20.unity_LightmapST;
  vs_TEXCOORD1 = ((x_12 * vec2<f32>(x_25.x, x_25.y)) + vec2<f32>(x_29.z, x_29.w));
  let x_34 : vec2<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = x_34;
  let x_43 : vec4<f32> = x_40.x_WaveAndDistance;
  u_xlat0 = (vec4<f32>(x_43.y, x_43.y, x_43.y, x_43.y) * vec4<f32>(0.01200000010430812836f, 0.01999999955296516418f, 0.05999999865889549255f, 0.02400000020861625671f));
  let x_53 : vec4<f32> = x_40.x_WaveAndDistance;
  u_xlat1 = (vec4<f32>(x_53.y, x_53.y, x_53.y, x_53.y) * vec4<f32>(0.00600000005215406418f, 0.01999999955296516418f, 0.01999999955296516418f, 0.05000000074505805969f));
  let x_62 : vec4<f32> = in_POSITION0;
  let x_66 : vec4<f32> = x_40.x_CameraPosition;
  let x_69 : vec3<f32> = (vec3<f32>(x_62.x, x_62.y, x_62.z) + -(vec3<f32>(x_66.x, x_66.y, x_66.z)));
  let x_70 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_72 : vec4<f32> = u_xlat2;
  let x_74 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_72.x, x_72.y, x_72.z), vec3<f32>(x_74.x, x_74.y, x_74.z));
  let x_86 : f32 = x_40.x_WaveAndDistance.w;
  let x_88 : f32 = u_xlat2.x;
  u_xlatb2 = (x_86 < x_88);
  let x_90 : bool = u_xlatb2;
  if (x_90) {
    x_92 = vec2<f32>(0.0f, 0.0f);
  } else {
    let x_99 : vec4<f32> = in_TANGENT0;
    x_92 = vec2<f32>(x_99.x, x_99.y);
  }
  let x_101 : vec2<f32> = x_92;
  let x_102 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_101.x, x_101.y, x_102.z, x_102.w);
  let x_104 : vec4<f32> = u_xlat2;
  let x_109 : vec3<f32> = x_40.x_CameraRight;
  let x_111 : vec4<f32> = in_POSITION0;
  let x_113 : vec3<f32> = ((vec3<f32>(x_104.x, x_104.x, x_104.x) * x_109) + vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_113.x, x_114.y, x_113.y, x_113.z);
  let x_120 : f32 = u_xlat2.y;
  let x_122 : f32 = u_xlat2.z;
  u_xlat3.y = (x_120 + x_122);
  let x_125 : vec4<f32> = u_xlat1;
  let x_126 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_125 * vec4<f32>(x_126.w, x_126.w, x_126.w, x_126.w));
  let x_129 : vec4<f32> = u_xlat2;
  let x_131 : vec4<f32> = u_xlat0;
  let x_133 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec4<f32>(x_129.x, x_129.x, x_129.x, x_129.x) * x_131) + x_133);
  let x_136 : vec4<f32> = x_40.x_WaveAndDistance;
  let x_144 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_136.x, x_136.x, x_136.x, x_136.x) * vec4<f32>(1.20000004768371582031f, 2.0f, 1.60000002384185791016f, 4.80000019073486328125f)) + x_144);
  let x_146 : vec4<f32> = u_xlat0;
  u_xlat0 = fract(x_146);
  let x_148 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_148 * vec4<f32>(6.40884876251220703125f, 6.40884876251220703125f, 6.40884876251220703125f, 6.40884876251220703125f)) + vec4<f32>(-3.14159274101257324219f, -3.14159274101257324219f, -3.14159274101257324219f, -3.14159274101257324219f));
  let x_155 : vec4<f32> = u_xlat0;
  let x_156 : vec4<f32> = u_xlat0;
  u_xlat1 = (x_155 * x_156);
  let x_159 : vec4<f32> = u_xlat0;
  let x_160 : vec4<f32> = u_xlat1;
  u_xlat4 = (x_159 * x_160);
  let x_162 : vec4<f32> = u_xlat4;
  let x_166 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_162 * vec4<f32>(-0.16161616146564483643f, -0.16161616146564483643f, -0.16161616146564483643f, -0.16161616146564483643f)) + x_166);
  let x_168 : vec4<f32> = u_xlat1;
  let x_169 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_168 * x_169);
  let x_171 : vec4<f32> = u_xlat1;
  let x_172 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_171 * x_172);
  let x_174 : vec4<f32> = u_xlat4;
  let x_178 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_174 * vec4<f32>(0.00833330024033784866f, 0.00833330024033784866f, 0.00833330024033784866f, 0.00833330024033784866f)) + x_178);
  let x_180 : vec4<f32> = u_xlat1;
  let x_184 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_180 * vec4<f32>(-0.00019840999448206276f, -0.00019840999448206276f, -0.00019840999448206276f, -0.00019840999448206276f)) + x_184);
  let x_186 : vec4<f32> = u_xlat0;
  let x_187 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_186 * x_187);
  let x_189 : vec4<f32> = u_xlat0;
  let x_190 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_189 * x_190);
  let x_192 : vec4<f32> = u_xlat0;
  let x_193 : vec4<f32> = in_TANGENT0;
  u_xlat1 = (x_192 * vec4<f32>(x_193.y, x_193.y, x_193.y, x_193.y));
  let x_196 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_196, vec4<f32>(0.67419987916946411133f, 0.67419987916946411133f, 0.26967993378639221191f, 0.13483996689319610596f));
  let x_204 : f32 = u_xlat0.x;
  u_xlat0.x = (x_204 * 0.69999998807907104492f);
  let x_208 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_208, vec4<f32>(0.02400000020861625671f, 0.03999999910593032837f, -0.11999999731779098511f, 0.09600000083446502686f));
  let x_215 : vec4<f32> = u_xlat1;
  u_xlat4.z = dot(x_215, vec4<f32>(0.00600000005215406418f, 0.01999999955296516418f, -0.01999999955296516418f, 0.10000000149011611938f));
  let x_221 : vec4<f32> = u_xlat4;
  let x_225 : vec4<f32> = x_40.x_WaveAndDistance;
  let x_228 : vec4<f32> = u_xlat2;
  let x_230 : vec2<f32> = ((-(vec2<f32>(x_221.x, x_221.z)) * vec2<f32>(x_225.z, x_225.z)) + vec2<f32>(x_228.x, x_228.w));
  let x_231 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_230.x, x_231.y, x_230.y);
  let x_234 : vec3<f32> = u_xlat3;
  let x_238 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat5 = (vec3<f32>(x_234.y, x_234.y, x_234.y) * vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_241 : vec3<f32> = u_xlat3;
  let x_243 : vec4<f32> = x_40.x_CameraPosition;
  let x_246 : vec3<f32> = (x_241 + -(vec3<f32>(x_243.x, x_243.y, x_243.z)));
  let x_247 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_249 : vec4<f32> = u_xlat1;
  let x_251 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_249.x, x_249.y, x_249.z), vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_256 : f32 = u_xlat1.x;
  let x_259 : f32 = x_40.x_WaveAndDistance.w;
  u_xlat1.x = (-(x_256) + x_259);
  let x_263 : f32 = u_xlat1.x;
  let x_265 : f32 = u_xlat1.x;
  u_xlat1.x = (x_263 + x_265);
  let x_271 : f32 = u_xlat1.x;
  let x_273 : f32 = x_40.x_CameraPosition.w;
  vs_TEXCOORD7.w = (x_271 * x_273);
  let x_278 : f32 = vs_TEXCOORD7.w;
  vs_TEXCOORD7.w = clamp(x_278, 0.0f, 1.0f);
  let x_283 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_285 : vec3<f32> = u_xlat3;
  let x_288 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_283.x, x_283.y, x_283.z) * vec3<f32>(x_285.x, x_285.x, x_285.x)) + x_288);
  let x_291 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_293 : vec3<f32> = u_xlat3;
  let x_296 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_291.x, x_291.y, x_291.z) * vec3<f32>(x_293.z, x_293.z, x_293.z)) + x_296);
  let x_298 : vec3<f32> = u_xlat5;
  let x_300 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  u_xlat5 = (x_298 + vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_304 : vec3<f32> = u_xlat5;
  let x_305 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  vs_TEXCOORD2.w = 32.0f;
  let x_311 : vec3<f32> = in_NORMAL0;
  let x_313 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_311, vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_317 : vec3<f32> = in_NORMAL0;
  let x_319 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_317, vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_323 : vec3<f32> = in_NORMAL0;
  let x_325 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_323, vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_330 : vec4<f32> = u_xlat1;
  let x_332 : vec4<f32> = u_xlat1;
  u_xlat16 = dot(vec3<f32>(x_330.x, x_330.y, x_330.z), vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : f32 = u_xlat16;
  u_xlat16 = max(x_335, 1.17549435e-38f);
  let x_338 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_338);
  let x_342 : f32 = u_xlat16;
  let x_344 : vec4<f32> = u_xlat1;
  vs_TEXCOORD3 = (vec3<f32>(x_342, x_342, x_342) * vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec3<f32> = u_xlat5;
  let x_353 : vec3<f32> = x_351.x_WorldSpaceCameraPos;
  let x_354 : vec3<f32> = (-(x_347) + x_353);
  let x_355 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_357 : vec4<f32> = u_xlat1;
  let x_359 : vec4<f32> = u_xlat1;
  u_xlat16 = dot(vec3<f32>(x_357.x, x_357.y, x_357.z), vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_362 : f32 = u_xlat16;
  u_xlat16 = max(x_362, 0.00006103515625f);
  let x_365 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_365);
  let x_368 : f32 = u_xlat16;
  let x_370 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_368, x_368, x_368) * vec3<f32>(x_370.x, x_370.y, x_370.z));
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_376 : vec4<f32> = x_40.x_WavingTint;
  let x_380 : vec3<f32> = (vec3<f32>(x_376.x, x_376.y, x_376.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_381 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_383 : vec4<f32> = u_xlat0;
  let x_385 : vec4<f32> = u_xlat1;
  let x_390 : vec3<f32> = ((vec3<f32>(x_383.x, x_383.x, x_383.x) * vec3<f32>(x_385.x, x_385.y, x_385.z)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_391 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_393 : vec4<f32> = u_xlat1;
  let x_396 : vec4<f32> = in_COLOR0;
  let x_398 : vec3<f32> = (vec3<f32>(x_393.x, x_393.y, x_393.z) * vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_399 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_401 : vec4<f32> = u_xlat1;
  let x_403 : vec4<f32> = u_xlat1;
  let x_405 : vec3<f32> = (vec3<f32>(x_401.x, x_401.y, x_401.z) + vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_406 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_408 : vec3<f32> = u_xlat5;
  let x_411 : vec4<f32> = x_351.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_408.y, x_408.y, x_408.y, x_408.y) * x_411);
  let x_414 : vec4<f32> = x_351.unity_MatrixVP[0i];
  let x_415 : vec3<f32> = u_xlat5;
  let x_418 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_414 * vec4<f32>(x_415.x, x_415.x, x_415.x, x_415.x)) + x_418);
  let x_421 : vec4<f32> = x_351.unity_MatrixVP[2i];
  let x_422 : vec3<f32> = u_xlat5;
  let x_425 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_421 * vec4<f32>(x_422.z, x_422.z, x_422.z, x_422.z)) + x_425);
  let x_431 : vec4<f32> = u_xlat0;
  let x_433 : vec4<f32> = x_351.unity_MatrixVP[3i];
  gl_Position = (x_431 + x_433);
  return;
}

struct main_out {
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(4)
  vs_TEXCOORD7_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(5) in_TEXCOORD1_param : vec2<f32>, @location(4) in_TEXCOORD0_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(3) in_COLOR0_param : vec4<f32>) -> main_out {
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD7, vs_TEXCOORD2, vs_TEXCOORD3, gl_Position);
}


