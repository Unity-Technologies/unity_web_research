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

@group(1) @binding(7) var<uniform> x_40 : TerrainGrass;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat10 : f32;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(6) var<uniform> x_264 : VGlobals;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
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
  u_xlat0 = (vec4<f32>(x_43.y, x_43.y, x_43.y, x_43.y) * vec4<f32>(0.00600000005215406418f, 0.01999999955296516418f, 0.01999999955296516418f, 0.05000000074505805969f));
  let x_50 : vec4<f32> = u_xlat0;
  let x_53 : vec4<f32> = in_POSITION0;
  u_xlat0 = (x_50 * vec4<f32>(x_53.z, x_53.z, x_53.z, x_53.z));
  let x_58 : vec4<f32> = x_40.x_WaveAndDistance;
  u_xlat1 = (vec4<f32>(x_58.y, x_58.y, x_58.y, x_58.y) * vec4<f32>(0.01200000010430812836f, 0.01999999955296516418f, 0.05999999865889549255f, 0.02400000020861625671f));
  let x_65 : vec4<f32> = in_POSITION0;
  let x_67 : vec4<f32> = u_xlat1;
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_65.x, x_65.x, x_65.x, x_65.x) * x_67) + x_69);
  let x_72 : vec4<f32> = x_40.x_WaveAndDistance;
  let x_80 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_72.x, x_72.x, x_72.x, x_72.x) * vec4<f32>(1.20000004768371582031f, 2.0f, 1.60000002384185791016f, 4.80000019073486328125f)) + x_80);
  let x_82 : vec4<f32> = u_xlat0;
  u_xlat0 = fract(x_82);
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_84 * vec4<f32>(6.40884876251220703125f, 6.40884876251220703125f, 6.40884876251220703125f, 6.40884876251220703125f)) + vec4<f32>(-3.14159274101257324219f, -3.14159274101257324219f, -3.14159274101257324219f, -3.14159274101257324219f));
  let x_91 : vec4<f32> = u_xlat0;
  let x_92 : vec4<f32> = u_xlat0;
  u_xlat1 = (x_91 * x_92);
  let x_95 : vec4<f32> = u_xlat0;
  let x_96 : vec4<f32> = u_xlat1;
  u_xlat2 = (x_95 * x_96);
  let x_98 : vec4<f32> = u_xlat2;
  let x_102 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_98 * vec4<f32>(-0.16161616146564483643f, -0.16161616146564483643f, -0.16161616146564483643f, -0.16161616146564483643f)) + x_102);
  let x_104 : vec4<f32> = u_xlat1;
  let x_105 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_104 * x_105);
  let x_107 : vec4<f32> = u_xlat1;
  let x_108 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_107 * x_108);
  let x_110 : vec4<f32> = u_xlat2;
  let x_114 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_110 * vec4<f32>(0.00833330024033784866f, 0.00833330024033784866f, 0.00833330024033784866f, 0.00833330024033784866f)) + x_114);
  let x_116 : vec4<f32> = u_xlat1;
  let x_120 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_116 * vec4<f32>(-0.00019840999448206276f, -0.00019840999448206276f, -0.00019840999448206276f, -0.00019840999448206276f)) + x_120);
  let x_122 : vec4<f32> = u_xlat0;
  let x_123 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_122 * x_123);
  let x_125 : vec4<f32> = u_xlat0;
  let x_126 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_125 * x_126);
  let x_132 : f32 = in_COLOR0.w;
  let x_135 : f32 = x_40.x_WaveAndDistance.z;
  u_xlat1.x = (x_132 * x_135);
  let x_140 : vec4<f32> = u_xlat0;
  let x_141 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_140 * vec4<f32>(x_141.x, x_141.x, x_141.x, x_141.x));
  let x_144 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_144, vec4<f32>(0.67419987916946411133f, 0.67419987916946411133f, 0.26967993378639221191f, 0.13483996689319610596f));
  let x_152 : f32 = u_xlat0.x;
  u_xlat0.x = (x_152 * 0.69999998807907104492f);
  let x_156 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_156, vec4<f32>(0.02400000020861625671f, 0.03999999910593032837f, -0.11999999731779098511f, 0.09600000083446502686f));
  let x_163 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_163, vec4<f32>(0.00600000005215406418f, 0.01999999955296516418f, -0.01999999955296516418f, 0.10000000149011611938f));
  let x_169 : vec4<f32> = u_xlat2;
  let x_173 : vec4<f32> = x_40.x_WaveAndDistance;
  let x_176 : vec4<f32> = in_POSITION0;
  let x_178 : vec2<f32> = ((-(vec2<f32>(x_169.x, x_169.z)) * vec2<f32>(x_173.z, x_173.z)) + vec2<f32>(x_176.x, x_176.z));
  let x_179 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_178.x, x_179.y, x_178.y, x_179.w);
  let x_183 : vec4<f32> = in_POSITION0;
  let x_187 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_183.y, x_183.y, x_183.y) * vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_191 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_193 : vec4<f32> = u_xlat1;
  let x_196 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_191.x, x_191.y, x_191.z) * vec3<f32>(x_193.x, x_193.x, x_193.x)) + x_196);
  let x_200 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_202 : vec4<f32> = u_xlat1;
  let x_205 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_200.x, x_200.y, x_200.z) * vec3<f32>(x_202.z, x_202.z, x_202.z)) + x_205);
  let x_207 : vec3<f32> = u_xlat3;
  let x_210 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  u_xlat3 = (x_207 + vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_215 : vec3<f32> = u_xlat3;
  let x_216 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
  vs_TEXCOORD2.w = 32.0f;
  let x_223 : vec3<f32> = in_NORMAL0;
  let x_225 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_223, vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_229 : vec3<f32> = in_NORMAL0;
  let x_231 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_229, vec3<f32>(x_231.x, x_231.y, x_231.z));
  let x_236 : vec3<f32> = in_NORMAL0;
  let x_238 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_236, vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_243 : vec4<f32> = u_xlat2;
  let x_245 : vec4<f32> = u_xlat2;
  u_xlat10 = dot(vec3<f32>(x_243.x, x_243.y, x_243.z), vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : f32 = u_xlat10;
  u_xlat10 = max(x_248, 1.17549435e-38f);
  let x_251 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_251);
  let x_255 : f32 = u_xlat10;
  let x_257 : vec4<f32> = u_xlat2;
  vs_TEXCOORD3 = (vec3<f32>(x_255, x_255, x_255) * vec3<f32>(x_257.x, x_257.y, x_257.z));
  let x_260 : vec3<f32> = u_xlat3;
  let x_267 : vec3<f32> = x_264.x_WorldSpaceCameraPos;
  let x_268 : vec3<f32> = (-(x_260) + x_267);
  let x_269 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_271 : vec4<f32> = u_xlat2;
  let x_273 : vec4<f32> = u_xlat2;
  u_xlat10 = dot(vec3<f32>(x_271.x, x_271.y, x_271.z), vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : f32 = u_xlat10;
  u_xlat10 = max(x_276, 0.00006103515625f);
  let x_279 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_279);
  let x_282 : f32 = u_xlat10;
  let x_284 : vec4<f32> = u_xlat2;
  vs_TEXCOORD4 = (vec3<f32>(x_282, x_282, x_282) * vec3<f32>(x_284.x, x_284.y, x_284.z));
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_291 : f32 = in_POSITION0.y;
  u_xlat1.y = x_291;
  let x_293 : vec4<f32> = u_xlat1;
  let x_296 : vec4<f32> = x_40.x_CameraPosition;
  let x_299 : vec3<f32> = (vec3<f32>(x_293.x, x_293.y, x_293.z) + -(vec3<f32>(x_296.x, x_296.y, x_296.z)));
  let x_300 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : vec4<f32> = u_xlat1;
  let x_304 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_302.x, x_302.y, x_302.z), vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_309 : f32 = u_xlat1.x;
  let x_312 : f32 = x_40.x_WaveAndDistance.w;
  u_xlat1.x = (-(x_309) + x_312);
  let x_316 : f32 = u_xlat1.x;
  let x_318 : f32 = u_xlat1.x;
  u_xlat1.x = (x_316 + x_318);
  let x_323 : f32 = u_xlat1.x;
  let x_325 : f32 = x_40.x_CameraPosition.w;
  vs_TEXCOORD7.w = (x_323 * x_325);
  let x_329 : f32 = vs_TEXCOORD7.w;
  vs_TEXCOORD7.w = clamp(x_329, 0.0f, 1.0f);
  let x_334 : vec4<f32> = x_40.x_WavingTint;
  let x_338 : vec3<f32> = (vec3<f32>(x_334.x, x_334.y, x_334.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_339 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_341 : vec4<f32> = u_xlat0;
  let x_343 : vec4<f32> = u_xlat1;
  let x_348 : vec3<f32> = ((vec3<f32>(x_341.x, x_341.x, x_341.x) * vec3<f32>(x_343.x, x_343.y, x_343.z)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_349 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_351 : vec4<f32> = u_xlat1;
  let x_353 : vec4<f32> = in_COLOR0;
  let x_355 : vec3<f32> = (vec3<f32>(x_351.x, x_351.y, x_351.z) * vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : vec4<f32> = u_xlat1;
  let x_360 : vec4<f32> = u_xlat1;
  let x_362 : vec3<f32> = (vec3<f32>(x_358.x, x_358.y, x_358.z) + vec3<f32>(x_360.x, x_360.y, x_360.z));
  let x_363 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_365 : vec3<f32> = u_xlat3;
  let x_368 : vec4<f32> = x_264.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_365.y, x_365.y, x_365.y, x_365.y) * x_368);
  let x_371 : vec4<f32> = x_264.unity_MatrixVP[0i];
  let x_372 : vec3<f32> = u_xlat3;
  let x_375 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_371 * vec4<f32>(x_372.x, x_372.x, x_372.x, x_372.x)) + x_375);
  let x_378 : vec4<f32> = x_264.unity_MatrixVP[2i];
  let x_379 : vec3<f32> = u_xlat3;
  let x_382 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_378 * vec4<f32>(x_379.z, x_379.z, x_379.z, x_379.z)) + x_382);
  let x_388 : vec4<f32> = u_xlat0;
  let x_390 : vec4<f32> = x_264.unity_MatrixVP[3i];
  gl_Position = (x_388 + x_390);
  return;
}

struct main_out {
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD7_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(4) in_TEXCOORD1_param : vec2<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD7, gl_Position);
}


