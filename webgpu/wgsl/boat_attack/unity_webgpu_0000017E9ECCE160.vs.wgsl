diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(16) */
  x_MainLightColor : vec4<f32>,
  /* @offset(32) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(96) */
  x_MainTex_ST : vec4<f32>,
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

alias Arr_1 = array<mat4x4<f32>, 5u>;

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
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(3) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_49 : UnityPerDraw;

var<private> u_xlat9 : f32;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_171 : LightShadows;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlatb1 : vec4<bool>;

var<private> u_xlatu9 : u32;

var<private> u_xlati9 : i32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = in_TEXCOORD0;
  let x_22 : vec4<f32> = x_17.x_MainTex_ST;
  let x_26 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((x_12 * vec2<f32>(x_22.x, x_22.y)) + vec2<f32>(x_26.z, x_26.w));
  vs_TEXCOORD1 = vec3<f32>(0.0f, 0.0f, 0.0f);
  let x_38 : vec4<f32> = in_COLOR0;
  vs_TEXCOORD2 = x_38;
  let x_43 : vec3<f32> = in_NORMAL0;
  let x_53 : vec4<f32> = x_49.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_43, vec3<f32>(x_53.x, x_53.y, x_53.z));
  let x_59 : vec3<f32> = in_NORMAL0;
  let x_61 : vec4<f32> = x_49.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_59, vec3<f32>(x_61.x, x_61.y, x_61.z));
  let x_66 : vec3<f32> = in_NORMAL0;
  let x_69 : vec4<f32> = x_49.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_66, vec3<f32>(x_69.x, x_69.y, x_69.z));
  let x_74 : vec4<f32> = u_xlat0;
  let x_76 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_74.x, x_74.y, x_74.z), vec3<f32>(x_76.x, x_76.y, x_76.z));
  let x_79 : f32 = u_xlat9;
  u_xlat9 = max(x_79, 1.17549435e-38f);
  let x_82 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_82);
  let x_84 : f32 = u_xlat9;
  let x_86 : vec4<f32> = u_xlat0;
  let x_88 : vec3<f32> = (vec3<f32>(x_84, x_84, x_84) * vec3<f32>(x_86.x, x_86.y, x_86.z));
  let x_89 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_88.x, x_88.y, x_88.z, x_89.w);
  let x_91 : vec4<f32> = u_xlat0;
  let x_94 : vec4<f32> = x_17.x_MainLightPosition;
  u_xlat9 = dot(vec3<f32>(x_91.x, x_91.y, x_91.z), vec3<f32>(x_94.x, x_94.y, x_94.z));
  let x_97 : f32 = u_xlat9;
  u_xlat9 = clamp(x_97, 0.0f, 1.0f);
  let x_102 : vec4<f32> = u_xlat0;
  vs_TEXCOORD5 = vec3<f32>(x_102.x, x_102.y, x_102.z);
  let x_105 : vec4<f32> = x_17.x_MainLightColor;
  let x_109 : vec4<f32> = x_49.unity_LightData;
  let x_111 : vec3<f32> = (vec3<f32>(x_105.x, x_105.y, x_105.z) * vec3<f32>(x_109.z, x_109.z, x_109.z));
  let x_112 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_111.x, x_111.y, x_111.z, x_112.w);
  let x_115 : f32 = u_xlat9;
  let x_117 : vec4<f32> = u_xlat0;
  let x_119 : vec3<f32> = (vec3<f32>(x_115, x_115, x_115) * vec3<f32>(x_117.x, x_117.y, x_117.z));
  let x_120 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
  vs_TEXCOORD3.w = 0.0f;
  let x_126 : vec4<f32> = in_POSITION0;
  let x_129 : vec4<f32> = x_49.unity_ObjectToWorld[1i];
  let x_131 : vec3<f32> = (vec3<f32>(x_126.y, x_126.y, x_126.y) * vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_132 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_135 : vec4<f32> = x_49.unity_ObjectToWorld[0i];
  let x_137 : vec4<f32> = in_POSITION0;
  let x_140 : vec4<f32> = u_xlat0;
  let x_142 : vec3<f32> = ((vec3<f32>(x_135.x, x_135.y, x_135.z) * vec3<f32>(x_137.x, x_137.x, x_137.x)) + vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_143 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_146 : vec4<f32> = x_49.unity_ObjectToWorld[2i];
  let x_148 : vec4<f32> = in_POSITION0;
  let x_151 : vec4<f32> = u_xlat0;
  let x_153 : vec3<f32> = ((vec3<f32>(x_146.x, x_146.y, x_146.z) * vec3<f32>(x_148.z, x_148.z, x_148.z)) + vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_154 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_156 : vec4<f32> = u_xlat0;
  let x_159 : vec4<f32> = x_49.unity_ObjectToWorld[3i];
  let x_161 : vec3<f32> = (vec3<f32>(x_156.x, x_156.y, x_156.z) + vec3<f32>(x_159.x, x_159.y, x_159.z));
  let x_162 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_161.x, x_161.y, x_161.z, x_162.w);
  let x_165 : vec4<f32> = u_xlat0;
  let x_173 : vec4<f32> = x_171.x_CascadeShadowSplitSpheres0;
  let x_176 : vec3<f32> = (vec3<f32>(x_165.x, x_165.y, x_165.z) + -(vec3<f32>(x_173.x, x_173.y, x_173.z)));
  let x_177 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_179 : vec4<f32> = u_xlat1;
  let x_181 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_179.x, x_179.y, x_179.z), vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_186 : vec4<f32> = u_xlat0;
  let x_189 : vec4<f32> = x_171.x_CascadeShadowSplitSpheres1;
  u_xlat2 = (vec3<f32>(x_186.x, x_186.y, x_186.z) + -(vec3<f32>(x_189.x, x_189.y, x_189.z)));
  let x_193 : vec3<f32> = u_xlat2;
  let x_194 : vec3<f32> = u_xlat2;
  u_xlat1.y = dot(x_193, x_194);
  let x_197 : vec4<f32> = u_xlat0;
  let x_200 : vec4<f32> = x_171.x_CascadeShadowSplitSpheres2;
  u_xlat2 = (vec3<f32>(x_197.x, x_197.y, x_197.z) + -(vec3<f32>(x_200.x, x_200.y, x_200.z)));
  let x_204 : vec3<f32> = u_xlat2;
  let x_205 : vec3<f32> = u_xlat2;
  u_xlat1.z = dot(x_204, x_205);
  let x_208 : vec4<f32> = u_xlat0;
  let x_212 : vec4<f32> = x_171.x_CascadeShadowSplitSpheres3;
  u_xlat2 = (vec3<f32>(x_208.x, x_208.y, x_208.z) + -(vec3<f32>(x_212.x, x_212.y, x_212.z)));
  let x_216 : vec3<f32> = u_xlat2;
  let x_217 : vec3<f32> = u_xlat2;
  u_xlat1.w = dot(x_216, x_217);
  let x_224 : vec4<f32> = u_xlat1;
  let x_226 : vec4<f32> = x_171.x_CascadeShadowSplitSphereRadii;
  u_xlatb1 = (x_224 < x_226);
  let x_230 : bool = u_xlatb1.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_230);
  let x_236 : bool = u_xlatb1.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_236);
  let x_240 : bool = u_xlatb1.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_240);
  let x_244 : bool = u_xlatb1.x;
  u_xlat1.x = select(0.0f, 1.0f, x_244);
  let x_248 : bool = u_xlatb1.y;
  u_xlat1.y = select(0.0f, 1.0f, x_248);
  let x_252 : bool = u_xlatb1.z;
  u_xlat1.z = select(0.0f, 1.0f, x_252);
  let x_256 : bool = u_xlatb1.w;
  u_xlat1.w = select(0.0f, 1.0f, x_256);
  let x_259 : vec3<f32> = u_xlat2;
  let x_260 : vec4<f32> = u_xlat1;
  u_xlat2 = (x_259 + vec3<f32>(x_260.y, x_260.z, x_260.w));
  let x_263 : vec3<f32> = u_xlat2;
  let x_264 : vec3<f32> = max(x_263, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_265 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_265.x, x_264.x, x_264.y, x_264.z);
  let x_267 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(x_267, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_273 : f32 = u_xlat9;
  u_xlat9 = (-(x_273) + 4.0f);
  let x_278 : f32 = u_xlat9;
  u_xlatu9 = u32(x_278);
  let x_282 : u32 = u_xlatu9;
  u_xlati9 = (bitcast<i32>(x_282) << bitcast<u32>(2i));
  let x_285 : vec4<f32> = u_xlat0;
  let x_287 : i32 = u_xlati9;
  let x_290 : i32 = u_xlati9;
  let x_294 : vec4<f32> = x_171.x_MainLightWorldToShadow[((x_287 + 1i) / 4i)][((x_290 + 1i) % 4i)];
  let x_296 : vec3<f32> = (vec3<f32>(x_285.y, x_285.y, x_285.y) * vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_297 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
  let x_299 : i32 = u_xlati9;
  let x_301 : i32 = u_xlati9;
  let x_304 : vec4<f32> = x_171.x_MainLightWorldToShadow[(x_299 / 4i)][(x_301 % 4i)];
  let x_306 : vec4<f32> = u_xlat0;
  let x_309 : vec4<f32> = u_xlat1;
  let x_311 : vec3<f32> = ((vec3<f32>(x_304.x, x_304.y, x_304.z) * vec3<f32>(x_306.x, x_306.x, x_306.x)) + vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : i32 = u_xlati9;
  let x_317 : i32 = u_xlati9;
  let x_321 : vec4<f32> = x_171.x_MainLightWorldToShadow[((x_314 + 2i) / 4i)][((x_317 + 2i) % 4i)];
  let x_323 : vec4<f32> = u_xlat0;
  let x_326 : vec4<f32> = u_xlat1;
  let x_328 : vec3<f32> = ((vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(x_323.z, x_323.z, x_323.z)) + vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_332 : vec4<f32> = u_xlat1;
  let x_334 : i32 = u_xlati9;
  let x_337 : i32 = u_xlati9;
  let x_341 : vec4<f32> = x_171.x_MainLightWorldToShadow[((x_334 + 3i) / 4i)][((x_337 + 3i) % 4i)];
  let x_343 : vec3<f32> = (vec3<f32>(x_332.x, x_332.y, x_332.z) + vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  vs_TEXCOORD4.w = 0.0f;
  let x_348 : vec4<f32> = u_xlat0;
  vs_TEXCOORD6 = vec3<f32>(x_348.x, x_348.y, x_348.z);
  let x_350 : vec4<f32> = u_xlat0;
  let x_353 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_350.y, x_350.y, x_350.y, x_350.y) * x_353);
  let x_356 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_357 : vec4<f32> = u_xlat0;
  let x_360 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_356 * vec4<f32>(x_357.x, x_357.x, x_357.x, x_357.x)) + x_360);
  let x_363 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_364 : vec4<f32> = u_xlat0;
  let x_367 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_363 * vec4<f32>(x_364.z, x_364.z, x_364.z, x_364.z)) + x_367);
  let x_373 : vec4<f32> = u_xlat0;
  let x_375 : vec4<f32> = x_17.unity_MatrixVP[3i];
  gl_Position = (x_373 + x_375);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD5_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD4_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(1) in_TEXCOORD0_param : vec2<f32>, @location(3) in_COLOR0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD2, vs_TEXCOORD5, vs_TEXCOORD3, vs_TEXCOORD4, gl_Position);
}


