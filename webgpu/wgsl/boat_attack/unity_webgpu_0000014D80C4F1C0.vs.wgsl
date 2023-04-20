diagnostic(off, derivative_uniformity);

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
  unity_MatrixVP : mat4x4<f32>,
}

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_2,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_3,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(6) var<uniform> x_23 : TerrainGrass;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlatb2 : bool;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_225 : UnityPerDraw;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat16 : f32;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_341 : VGlobals;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_374 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_78 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = x_12;
  vs_TEXCOORD1 = vec3<f32>(0.0f, 0.0f, 0.0f);
  let x_28 : vec4<f32> = x_23.x_WaveAndDistance;
  u_xlat0 = (vec4<f32>(x_28.y, x_28.y, x_28.y, x_28.y) * vec4<f32>(0.01200000010430812836f, 0.01999999955296516418f, 0.05999999865889549255f, 0.02400000020861625671f));
  let x_38 : vec4<f32> = x_23.x_WaveAndDistance;
  u_xlat1 = (vec4<f32>(x_38.y, x_38.y, x_38.y, x_38.y) * vec4<f32>(0.00600000005215406418f, 0.01999999955296516418f, 0.01999999955296516418f, 0.05000000074505805969f));
  let x_47 : vec4<f32> = in_POSITION0;
  let x_51 : vec4<f32> = x_23.x_CameraPosition;
  let x_54 : vec3<f32> = (vec3<f32>(x_47.x, x_47.y, x_47.z) + -(vec3<f32>(x_51.x, x_51.y, x_51.z)));
  let x_55 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_54.x, x_54.y, x_54.z, x_55.w);
  let x_57 : vec4<f32> = u_xlat2;
  let x_59 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_57.x, x_57.y, x_57.z), vec3<f32>(x_59.x, x_59.y, x_59.z));
  let x_72 : f32 = x_23.x_WaveAndDistance.w;
  let x_74 : f32 = u_xlat2.x;
  u_xlatb2 = (x_72 < x_74);
  let x_76 : bool = u_xlatb2;
  if (x_76) {
    x_78 = vec2<f32>(0.0f, 0.0f);
  } else {
    let x_84 : vec4<f32> = in_TANGENT0;
    x_78 = vec2<f32>(x_84.x, x_84.y);
  }
  let x_86 : vec2<f32> = x_78;
  let x_87 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_86.x, x_86.y, x_87.z, x_87.w);
  let x_89 : vec4<f32> = u_xlat2;
  let x_94 : vec3<f32> = x_23.x_CameraRight;
  let x_96 : vec4<f32> = in_POSITION0;
  let x_98 : vec3<f32> = ((vec3<f32>(x_89.x, x_89.x, x_89.x) * x_94) + vec3<f32>(x_96.x, x_96.y, x_96.z));
  let x_99 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_98.x, x_99.y, x_98.y, x_98.z);
  let x_104 : f32 = u_xlat2.y;
  let x_107 : f32 = u_xlat2.z;
  u_xlat3.y = (x_104 + x_107);
  let x_110 : vec4<f32> = u_xlat1;
  let x_111 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_110 * vec4<f32>(x_111.w, x_111.w, x_111.w, x_111.w));
  let x_114 : vec4<f32> = u_xlat2;
  let x_116 : vec4<f32> = u_xlat0;
  let x_118 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec4<f32>(x_114.x, x_114.x, x_114.x, x_114.x) * x_116) + x_118);
  let x_121 : vec4<f32> = x_23.x_WaveAndDistance;
  let x_129 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_121.x, x_121.x, x_121.x, x_121.x) * vec4<f32>(1.20000004768371582031f, 2.0f, 1.60000002384185791016f, 4.80000019073486328125f)) + x_129);
  let x_131 : vec4<f32> = u_xlat0;
  u_xlat0 = fract(x_131);
  let x_133 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_133 * vec4<f32>(6.40884876251220703125f, 6.40884876251220703125f, 6.40884876251220703125f, 6.40884876251220703125f)) + vec4<f32>(-3.14159274101257324219f, -3.14159274101257324219f, -3.14159274101257324219f, -3.14159274101257324219f));
  let x_140 : vec4<f32> = u_xlat0;
  let x_141 : vec4<f32> = u_xlat0;
  u_xlat1 = (x_140 * x_141);
  let x_144 : vec4<f32> = u_xlat0;
  let x_145 : vec4<f32> = u_xlat1;
  u_xlat4 = (x_144 * x_145);
  let x_147 : vec4<f32> = u_xlat4;
  let x_151 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_147 * vec4<f32>(-0.16161616146564483643f, -0.16161616146564483643f, -0.16161616146564483643f, -0.16161616146564483643f)) + x_151);
  let x_153 : vec4<f32> = u_xlat1;
  let x_154 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_153 * x_154);
  let x_156 : vec4<f32> = u_xlat1;
  let x_157 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_156 * x_157);
  let x_159 : vec4<f32> = u_xlat4;
  let x_163 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_159 * vec4<f32>(0.00833330024033784866f, 0.00833330024033784866f, 0.00833330024033784866f, 0.00833330024033784866f)) + x_163);
  let x_165 : vec4<f32> = u_xlat1;
  let x_169 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_165 * vec4<f32>(-0.00019840999448206276f, -0.00019840999448206276f, -0.00019840999448206276f, -0.00019840999448206276f)) + x_169);
  let x_171 : vec4<f32> = u_xlat0;
  let x_172 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_171 * x_172);
  let x_174 : vec4<f32> = u_xlat0;
  let x_175 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_174 * x_175);
  let x_177 : vec4<f32> = u_xlat0;
  let x_178 : vec4<f32> = in_TANGENT0;
  u_xlat1 = (x_177 * vec4<f32>(x_178.y, x_178.y, x_178.y, x_178.y));
  let x_181 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_181, vec4<f32>(0.67419987916946411133f, 0.67419987916946411133f, 0.26967993378639221191f, 0.13483996689319610596f));
  let x_189 : f32 = u_xlat0.x;
  u_xlat0.x = (x_189 * 0.69999998807907104492f);
  let x_193 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_193, vec4<f32>(0.02400000020861625671f, 0.03999999910593032837f, -0.11999999731779098511f, 0.09600000083446502686f));
  let x_200 : vec4<f32> = u_xlat1;
  u_xlat4.z = dot(x_200, vec4<f32>(0.00600000005215406418f, 0.01999999955296516418f, -0.01999999955296516418f, 0.10000000149011611938f));
  let x_206 : vec4<f32> = u_xlat4;
  let x_210 : vec4<f32> = x_23.x_WaveAndDistance;
  let x_213 : vec4<f32> = u_xlat2;
  let x_215 : vec2<f32> = ((-(vec2<f32>(x_206.x, x_206.z)) * vec2<f32>(x_210.z, x_210.z)) + vec2<f32>(x_213.x, x_213.w));
  let x_216 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_215.x, x_216.y, x_215.y);
  let x_219 : vec3<f32> = u_xlat3;
  let x_228 : vec4<f32> = x_225.unity_ObjectToWorld[1i];
  u_xlat5 = (vec3<f32>(x_219.y, x_219.y, x_219.y) * vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_231 : vec3<f32> = u_xlat3;
  let x_233 : vec4<f32> = x_23.x_CameraPosition;
  let x_236 : vec3<f32> = (x_231 + -(vec3<f32>(x_233.x, x_233.y, x_233.z)));
  let x_237 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_239 : vec4<f32> = u_xlat1;
  let x_241 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_239.x, x_239.y, x_239.z), vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_246 : f32 = u_xlat1.x;
  let x_249 : f32 = x_23.x_WaveAndDistance.w;
  u_xlat1.x = (-(x_246) + x_249);
  let x_253 : f32 = u_xlat1.x;
  let x_255 : f32 = u_xlat1.x;
  u_xlat1.x = (x_253 + x_255);
  let x_261 : f32 = u_xlat1.x;
  let x_263 : f32 = x_23.x_CameraPosition.w;
  vs_TEXCOORD7.w = (x_261 * x_263);
  let x_268 : f32 = vs_TEXCOORD7.w;
  vs_TEXCOORD7.w = clamp(x_268, 0.0f, 1.0f);
  let x_273 : vec4<f32> = x_225.unity_ObjectToWorld[0i];
  let x_275 : vec3<f32> = u_xlat3;
  let x_278 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_273.x, x_273.y, x_273.z) * vec3<f32>(x_275.x, x_275.x, x_275.x)) + x_278);
  let x_281 : vec4<f32> = x_225.unity_ObjectToWorld[2i];
  let x_283 : vec3<f32> = u_xlat3;
  let x_286 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_281.x, x_281.y, x_281.z) * vec3<f32>(x_283.z, x_283.z, x_283.z)) + x_286);
  let x_288 : vec3<f32> = u_xlat5;
  let x_290 : vec4<f32> = x_225.unity_ObjectToWorld[3i];
  u_xlat5 = (x_288 + vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_294 : vec3<f32> = u_xlat5;
  let x_295 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  vs_TEXCOORD2.w = 32.0f;
  let x_301 : vec3<f32> = in_NORMAL0;
  let x_303 : vec4<f32> = x_225.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_301, vec3<f32>(x_303.x, x_303.y, x_303.z));
  let x_307 : vec3<f32> = in_NORMAL0;
  let x_309 : vec4<f32> = x_225.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_307, vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_313 : vec3<f32> = in_NORMAL0;
  let x_315 : vec4<f32> = x_225.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_313, vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_320 : vec4<f32> = u_xlat1;
  let x_322 : vec4<f32> = u_xlat1;
  u_xlat16 = dot(vec3<f32>(x_320.x, x_320.y, x_320.z), vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : f32 = u_xlat16;
  u_xlat16 = max(x_325, 1.17549435e-38f);
  let x_328 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_328);
  let x_332 : f32 = u_xlat16;
  let x_334 : vec4<f32> = u_xlat1;
  vs_TEXCOORD3 = (vec3<f32>(x_332, x_332, x_332) * vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : vec3<f32> = u_xlat5;
  let x_343 : vec3<f32> = x_341.x_WorldSpaceCameraPos;
  let x_344 : vec3<f32> = (-(x_337) + x_343);
  let x_345 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec4<f32> = u_xlat1;
  let x_349 : vec4<f32> = u_xlat1;
  u_xlat16 = dot(vec3<f32>(x_347.x, x_347.y, x_347.z), vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : f32 = u_xlat16;
  u_xlat16 = max(x_352, 0.00006103515625f);
  let x_355 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_355);
  let x_358 : f32 = u_xlat16;
  let x_360 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_358, x_358, x_358) * vec3<f32>(x_360.x, x_360.y, x_360.z));
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_365 : vec3<f32> = u_xlat5;
  let x_376 : vec4<f32> = x_374.x_MainLightWorldToShadow[0i][1i];
  let x_378 : vec3<f32> = (vec3<f32>(x_365.y, x_365.y, x_365.y) * vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_379 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_382 : vec4<f32> = x_374.x_MainLightWorldToShadow[0i][0i];
  let x_384 : vec3<f32> = u_xlat5;
  let x_387 : vec4<f32> = u_xlat1;
  let x_389 : vec3<f32> = ((vec3<f32>(x_382.x, x_382.y, x_382.z) * vec3<f32>(x_384.x, x_384.x, x_384.x)) + vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_390 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_393 : vec4<f32> = x_374.x_MainLightWorldToShadow[0i][2i];
  let x_395 : vec3<f32> = u_xlat5;
  let x_398 : vec4<f32> = u_xlat1;
  let x_400 : vec3<f32> = ((vec3<f32>(x_393.x, x_393.y, x_393.z) * vec3<f32>(x_395.z, x_395.z, x_395.z)) + vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_401 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_404 : vec4<f32> = u_xlat1;
  let x_407 : vec4<f32> = x_374.x_MainLightWorldToShadow[0i][3i];
  let x_409 : vec3<f32> = (vec3<f32>(x_404.x, x_404.y, x_404.z) + vec3<f32>(x_407.x, x_407.y, x_407.z));
  let x_410 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_409.x, x_409.y, x_409.z, x_410.w);
  vs_TEXCOORD6.w = 0.0f;
  let x_414 : vec4<f32> = x_23.x_WavingTint;
  let x_418 : vec3<f32> = (vec3<f32>(x_414.x, x_414.y, x_414.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_419 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : vec4<f32> = u_xlat0;
  let x_423 : vec4<f32> = u_xlat1;
  let x_428 : vec3<f32> = ((vec3<f32>(x_421.x, x_421.x, x_421.x) * vec3<f32>(x_423.x, x_423.y, x_423.z)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_429 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_431 : vec4<f32> = u_xlat1;
  let x_434 : vec4<f32> = in_COLOR0;
  let x_436 : vec3<f32> = (vec3<f32>(x_431.x, x_431.y, x_431.z) * vec3<f32>(x_434.x, x_434.y, x_434.z));
  let x_437 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_439 : vec4<f32> = u_xlat1;
  let x_441 : vec4<f32> = u_xlat1;
  let x_443 : vec3<f32> = (vec3<f32>(x_439.x, x_439.y, x_439.z) + vec3<f32>(x_441.x, x_441.y, x_441.z));
  let x_444 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_446 : vec3<f32> = u_xlat5;
  let x_449 : vec4<f32> = x_341.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_446.y, x_446.y, x_446.y, x_446.y) * x_449);
  let x_452 : vec4<f32> = x_341.unity_MatrixVP[0i];
  let x_453 : vec3<f32> = u_xlat5;
  let x_456 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_452 * vec4<f32>(x_453.x, x_453.x, x_453.x, x_453.x)) + x_456);
  let x_459 : vec4<f32> = x_341.unity_MatrixVP[2i];
  let x_460 : vec3<f32> = u_xlat5;
  let x_463 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_459 * vec4<f32>(x_460.z, x_460.z, x_460.z, x_460.z)) + x_463);
  let x_469 : vec4<f32> = u_xlat0;
  let x_471 : vec4<f32> = x_341.unity_MatrixVP[3i];
  gl_Position = (x_469 + x_471);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(4)
  vs_TEXCOORD7_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD6_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(4) in_TEXCOORD0_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(3) in_COLOR0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD7, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD6, gl_Position);
}


