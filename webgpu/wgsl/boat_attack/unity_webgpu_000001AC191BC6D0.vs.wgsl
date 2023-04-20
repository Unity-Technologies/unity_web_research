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

@group(1) @binding(2) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

@group(1) @binding(3) var<uniform> x_37 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat9 : f32;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_180 : LightShadows;

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
  let x_31 : vec2<f32> = in_TEXCOORD1;
  let x_40 : vec4<f32> = x_37.unity_LightmapST;
  let x_44 : vec4<f32> = x_37.unity_LightmapST;
  vs_TEXCOORD1 = ((x_31 * vec2<f32>(x_40.x, x_40.y)) + vec2<f32>(x_44.z, x_44.w));
  let x_51 : vec4<f32> = in_COLOR0;
  vs_TEXCOORD2 = x_51;
  let x_57 : vec3<f32> = in_NORMAL0;
  let x_61 : vec4<f32> = x_37.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_57, vec3<f32>(x_61.x, x_61.y, x_61.z));
  let x_67 : vec3<f32> = in_NORMAL0;
  let x_69 : vec4<f32> = x_37.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_67, vec3<f32>(x_69.x, x_69.y, x_69.z));
  let x_74 : vec3<f32> = in_NORMAL0;
  let x_77 : vec4<f32> = x_37.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_74, vec3<f32>(x_77.x, x_77.y, x_77.z));
  let x_82 : vec4<f32> = u_xlat0;
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_82.x, x_82.y, x_82.z), vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_87 : f32 = u_xlat9;
  u_xlat9 = max(x_87, 1.17549435e-38f);
  let x_90 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_90);
  let x_92 : f32 = u_xlat9;
  let x_94 : vec4<f32> = u_xlat0;
  let x_96 : vec3<f32> = (vec3<f32>(x_92, x_92, x_92) * vec3<f32>(x_94.x, x_94.y, x_94.z));
  let x_97 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_99 : vec4<f32> = u_xlat0;
  let x_102 : vec4<f32> = x_17.x_MainLightPosition;
  u_xlat9 = dot(vec3<f32>(x_99.x, x_99.y, x_99.z), vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : f32 = u_xlat9;
  u_xlat9 = clamp(x_105, 0.0f, 1.0f);
  let x_111 : vec4<f32> = u_xlat0;
  vs_TEXCOORD5 = vec3<f32>(x_111.x, x_111.y, x_111.z);
  let x_114 : vec4<f32> = x_17.x_MainLightColor;
  let x_118 : vec4<f32> = x_37.unity_LightData;
  let x_120 : vec3<f32> = (vec3<f32>(x_114.x, x_114.y, x_114.z) * vec3<f32>(x_118.z, x_118.z, x_118.z));
  let x_121 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_120.x, x_120.y, x_120.z, x_121.w);
  let x_124 : f32 = u_xlat9;
  let x_126 : vec4<f32> = u_xlat0;
  let x_128 : vec3<f32> = (vec3<f32>(x_124, x_124, x_124) * vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_129 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
  vs_TEXCOORD3.w = 0.0f;
  let x_135 : vec4<f32> = in_POSITION0;
  let x_138 : vec4<f32> = x_37.unity_ObjectToWorld[1i];
  let x_140 : vec3<f32> = (vec3<f32>(x_135.y, x_135.y, x_135.y) * vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_141 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_140.x, x_140.y, x_140.z, x_141.w);
  let x_144 : vec4<f32> = x_37.unity_ObjectToWorld[0i];
  let x_146 : vec4<f32> = in_POSITION0;
  let x_149 : vec4<f32> = u_xlat0;
  let x_151 : vec3<f32> = ((vec3<f32>(x_144.x, x_144.y, x_144.z) * vec3<f32>(x_146.x, x_146.x, x_146.x)) + vec3<f32>(x_149.x, x_149.y, x_149.z));
  let x_152 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_155 : vec4<f32> = x_37.unity_ObjectToWorld[2i];
  let x_157 : vec4<f32> = in_POSITION0;
  let x_160 : vec4<f32> = u_xlat0;
  let x_162 : vec3<f32> = ((vec3<f32>(x_155.x, x_155.y, x_155.z) * vec3<f32>(x_157.z, x_157.z, x_157.z)) + vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_163 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_165 : vec4<f32> = u_xlat0;
  let x_168 : vec4<f32> = x_37.unity_ObjectToWorld[3i];
  let x_170 : vec3<f32> = (vec3<f32>(x_165.x, x_165.y, x_165.z) + vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_171 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_174 : vec4<f32> = u_xlat0;
  let x_182 : vec4<f32> = x_180.x_CascadeShadowSplitSpheres0;
  let x_185 : vec3<f32> = (vec3<f32>(x_174.x, x_174.y, x_174.z) + -(vec3<f32>(x_182.x, x_182.y, x_182.z)));
  let x_186 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_188 : vec4<f32> = u_xlat1;
  let x_190 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_188.x, x_188.y, x_188.z), vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_196 : vec4<f32> = u_xlat0;
  let x_199 : vec4<f32> = x_180.x_CascadeShadowSplitSpheres1;
  u_xlat2 = (vec3<f32>(x_196.x, x_196.y, x_196.z) + -(vec3<f32>(x_199.x, x_199.y, x_199.z)));
  let x_203 : vec3<f32> = u_xlat2;
  let x_204 : vec3<f32> = u_xlat2;
  u_xlat1.y = dot(x_203, x_204);
  let x_207 : vec4<f32> = u_xlat0;
  let x_210 : vec4<f32> = x_180.x_CascadeShadowSplitSpheres2;
  u_xlat2 = (vec3<f32>(x_207.x, x_207.y, x_207.z) + -(vec3<f32>(x_210.x, x_210.y, x_210.z)));
  let x_214 : vec3<f32> = u_xlat2;
  let x_215 : vec3<f32> = u_xlat2;
  u_xlat1.z = dot(x_214, x_215);
  let x_218 : vec4<f32> = u_xlat0;
  let x_222 : vec4<f32> = x_180.x_CascadeShadowSplitSpheres3;
  u_xlat2 = (vec3<f32>(x_218.x, x_218.y, x_218.z) + -(vec3<f32>(x_222.x, x_222.y, x_222.z)));
  let x_226 : vec3<f32> = u_xlat2;
  let x_227 : vec3<f32> = u_xlat2;
  u_xlat1.w = dot(x_226, x_227);
  let x_234 : vec4<f32> = u_xlat1;
  let x_236 : vec4<f32> = x_180.x_CascadeShadowSplitSphereRadii;
  u_xlatb1 = (x_234 < x_236);
  let x_240 : bool = u_xlatb1.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_240);
  let x_246 : bool = u_xlatb1.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_246);
  let x_250 : bool = u_xlatb1.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_250);
  let x_254 : bool = u_xlatb1.x;
  u_xlat1.x = select(0.0f, 1.0f, x_254);
  let x_258 : bool = u_xlatb1.y;
  u_xlat1.y = select(0.0f, 1.0f, x_258);
  let x_262 : bool = u_xlatb1.z;
  u_xlat1.z = select(0.0f, 1.0f, x_262);
  let x_266 : bool = u_xlatb1.w;
  u_xlat1.w = select(0.0f, 1.0f, x_266);
  let x_269 : vec3<f32> = u_xlat2;
  let x_270 : vec4<f32> = u_xlat1;
  u_xlat2 = (x_269 + vec3<f32>(x_270.y, x_270.z, x_270.w));
  let x_273 : vec3<f32> = u_xlat2;
  let x_275 : vec3<f32> = max(x_273, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_276 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_276.x, x_275.x, x_275.y, x_275.z);
  let x_278 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(x_278, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_284 : f32 = u_xlat9;
  u_xlat9 = (-(x_284) + 4.0f);
  let x_289 : f32 = u_xlat9;
  u_xlatu9 = u32(x_289);
  let x_293 : u32 = u_xlatu9;
  u_xlati9 = (bitcast<i32>(x_293) << bitcast<u32>(2i));
  let x_296 : vec4<f32> = u_xlat0;
  let x_298 : i32 = u_xlati9;
  let x_301 : i32 = u_xlati9;
  let x_305 : vec4<f32> = x_180.x_MainLightWorldToShadow[((x_298 + 1i) / 4i)][((x_301 + 1i) % 4i)];
  let x_307 : vec3<f32> = (vec3<f32>(x_296.y, x_296.y, x_296.y) * vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_308 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_310 : i32 = u_xlati9;
  let x_312 : i32 = u_xlati9;
  let x_315 : vec4<f32> = x_180.x_MainLightWorldToShadow[(x_310 / 4i)][(x_312 % 4i)];
  let x_317 : vec4<f32> = u_xlat0;
  let x_320 : vec4<f32> = u_xlat1;
  let x_322 : vec3<f32> = ((vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_317.x, x_317.x, x_317.x)) + vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : i32 = u_xlati9;
  let x_328 : i32 = u_xlati9;
  let x_332 : vec4<f32> = x_180.x_MainLightWorldToShadow[((x_325 + 2i) / 4i)][((x_328 + 2i) % 4i)];
  let x_334 : vec4<f32> = u_xlat0;
  let x_337 : vec4<f32> = u_xlat1;
  let x_339 : vec3<f32> = ((vec3<f32>(x_332.x, x_332.y, x_332.z) * vec3<f32>(x_334.z, x_334.z, x_334.z)) + vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_343 : vec4<f32> = u_xlat1;
  let x_345 : i32 = u_xlati9;
  let x_348 : i32 = u_xlati9;
  let x_352 : vec4<f32> = x_180.x_MainLightWorldToShadow[((x_345 + 3i) / 4i)][((x_348 + 3i) % 4i)];
  let x_354 : vec3<f32> = (vec3<f32>(x_343.x, x_343.y, x_343.z) + vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_355 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  vs_TEXCOORD4.w = 0.0f;
  let x_359 : vec4<f32> = u_xlat0;
  vs_TEXCOORD6 = vec3<f32>(x_359.x, x_359.y, x_359.z);
  let x_361 : vec4<f32> = u_xlat0;
  let x_364 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_361.y, x_361.y, x_361.y, x_361.y) * x_364);
  let x_367 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_368 : vec4<f32> = u_xlat0;
  let x_371 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_367 * vec4<f32>(x_368.x, x_368.x, x_368.x, x_368.x)) + x_371);
  let x_374 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_375 : vec4<f32> = u_xlat0;
  let x_378 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_374 * vec4<f32>(x_375.z, x_375.z, x_375.z, x_375.z)) + x_378);
  let x_384 : vec4<f32> = u_xlat0;
  let x_386 : vec4<f32> = x_17.unity_MatrixVP[3i];
  gl_Position = (x_384 + x_386);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(1) in_TEXCOORD0_param : vec2<f32>, @location(2) in_TEXCOORD1_param : vec2<f32>, @location(4) in_COLOR0_param : vec4<f32>, @location(3) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD5, vs_TEXCOORD3, vs_TEXCOORD4, gl_Position);
}


