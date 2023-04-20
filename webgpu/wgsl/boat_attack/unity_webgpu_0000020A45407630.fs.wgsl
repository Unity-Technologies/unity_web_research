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

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  unity_FogColor : vec4<f32>,
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

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_28 : UnityPerDraw;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_134 : PGlobals;

var<private> u_xlatb48 : bool;

@group(1) @binding(2) var<uniform> x_147 : LightShadows;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(3) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat48 : f32;

var<private> u_xlatb2 : bool;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat36 : vec2<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat20 : vec2<f32>;

var<private> u_xlat42 : vec2<f32>;

var<private> u_xlat37 : vec2<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlatb18 : bool;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = vs_TEXCOORD5;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_15 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_14.x, x_14.y, x_14.z, x_15.w);
  u_xlat0.w = 1.0f;
  let x_33 : vec4<f32> = x_28.unity_SHAr;
  let x_34 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(x_33, x_34);
  let x_40 : vec4<f32> = x_28.unity_SHAg;
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(x_40, x_41);
  let x_47 : vec4<f32> = x_28.unity_SHAb;
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(x_47, x_48);
  let x_51 : vec4<f32> = vs_TEXCOORD5;
  let x_53 : vec4<f32> = vs_TEXCOORD5;
  u_xlat0 = (vec4<f32>(x_51.y, x_51.z, x_51.z, x_51.x) * vec4<f32>(x_53.x, x_53.y, x_53.z, x_53.z));
  let x_59 : vec4<f32> = x_28.unity_SHBr;
  let x_60 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(x_59, x_60);
  let x_65 : vec4<f32> = x_28.unity_SHBg;
  let x_66 : vec4<f32> = u_xlat0;
  u_xlat2.y = dot(x_65, x_66);
  let x_71 : vec4<f32> = x_28.unity_SHBb;
  let x_72 : vec4<f32> = u_xlat0;
  u_xlat2.z = dot(x_71, x_72);
  let x_77 : f32 = vs_TEXCOORD5.y;
  let x_79 : f32 = vs_TEXCOORD5.y;
  u_xlat0.x = (x_77 * x_79);
  let x_83 : f32 = vs_TEXCOORD5.x;
  let x_85 : f32 = vs_TEXCOORD5.x;
  let x_88 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_83 * x_85) + -(x_88));
  let x_94 : vec4<f32> = x_28.unity_SHC;
  let x_96 : vec4<f32> = u_xlat0;
  let x_99 : vec4<f32> = u_xlat2;
  let x_101 : vec3<f32> = ((vec3<f32>(x_94.x, x_94.y, x_94.z) * vec3<f32>(x_96.x, x_96.x, x_96.x)) + vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_102 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_101.x, x_101.y, x_101.z, x_102.w);
  let x_104 : vec4<f32> = u_xlat0;
  let x_106 : vec4<f32> = u_xlat1;
  let x_108 : vec3<f32> = (vec3<f32>(x_104.x, x_104.y, x_104.z) + vec3<f32>(x_106.x, x_106.y, x_106.z));
  let x_109 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_108.x, x_108.y, x_108.z, x_109.w);
  let x_111 : vec4<f32> = u_xlat0;
  let x_115 : vec3<f32> = max(vec3<f32>(x_111.x, x_111.y, x_111.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_116 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_115.x, x_115.y, x_115.z, x_116.w);
  let x_131 : vec2<f32> = vs_TEXCOORD0;
  let x_138 : f32 = x_134.x_GlobalMipBias.x;
  let x_139 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_131, x_138);
  u_xlat1 = x_139;
  let x_150 : f32 = x_147.x_MainLightShadowParams.y;
  u_xlatb48 = (0.0f < x_150);
  let x_152 : bool = u_xlatb48;
  if (x_152) {
    let x_156 : f32 = x_147.x_MainLightShadowParams.y;
    u_xlatb48 = (x_156 == 1.0f);
    let x_158 : bool = u_xlatb48;
    if (x_158) {
      let x_162 : vec4<f32> = vs_TEXCOORD4;
      let x_166 : vec4<f32> = x_147.x_MainLightShadowOffset0;
      u_xlat2 = (vec4<f32>(x_162.x, x_162.y, x_162.x, x_162.y) + x_166);
      let x_170 : vec4<f32> = u_xlat2;
      let x_171 : vec2<f32> = vec2<f32>(x_170.x, x_170.y);
      let x_173 : f32 = vs_TEXCOORD4.z;
      txVec0 = vec3<f32>(x_171.x, x_171.y, x_173);
      let x_186 : vec3<f32> = txVec0;
      let x_188 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_186.xy, x_186.z);
      u_xlat3.x = x_188;
      let x_191 : vec4<f32> = u_xlat2;
      let x_192 : vec2<f32> = vec2<f32>(x_191.z, x_191.w);
      let x_194 : f32 = vs_TEXCOORD4.z;
      txVec1 = vec3<f32>(x_192.x, x_192.y, x_194);
      let x_201 : vec3<f32> = txVec1;
      let x_203 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_201.xy, x_201.z);
      u_xlat3.y = x_203;
      let x_205 : vec4<f32> = vs_TEXCOORD4;
      let x_209 : vec4<f32> = x_147.x_MainLightShadowOffset1;
      u_xlat2 = (vec4<f32>(x_205.x, x_205.y, x_205.x, x_205.y) + x_209);
      let x_212 : vec4<f32> = u_xlat2;
      let x_213 : vec2<f32> = vec2<f32>(x_212.x, x_212.y);
      let x_215 : f32 = vs_TEXCOORD4.z;
      txVec2 = vec3<f32>(x_213.x, x_213.y, x_215);
      let x_222 : vec3<f32> = txVec2;
      let x_224 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_222.xy, x_222.z);
      u_xlat3.z = x_224;
      let x_227 : vec4<f32> = u_xlat2;
      let x_228 : vec2<f32> = vec2<f32>(x_227.z, x_227.w);
      let x_230 : f32 = vs_TEXCOORD4.z;
      txVec3 = vec3<f32>(x_228.x, x_228.y, x_230);
      let x_237 : vec3<f32> = txVec3;
      let x_239 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_237.xy, x_237.z);
      u_xlat3.w = x_239;
      let x_242 : vec4<f32> = u_xlat3;
      u_xlat48 = dot(x_242, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_249 : f32 = x_147.x_MainLightShadowParams.y;
      u_xlatb2 = (x_249 == 2.0f);
      let x_252 : bool = u_xlatb2;
      if (x_252) {
        let x_255 : vec4<f32> = vs_TEXCOORD4;
        let x_259 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_264 : vec2<f32> = ((vec2<f32>(x_255.x, x_255.y) * vec2<f32>(x_259.z, x_259.w)) + vec2<f32>(0.5f, 0.5f));
        let x_265 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_264.x, x_264.y, x_265.z, x_265.w);
        let x_267 : vec4<f32> = u_xlat2;
        let x_269 : vec2<f32> = floor(vec2<f32>(x_267.x, x_267.y));
        let x_270 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_269.x, x_269.y, x_270.z, x_270.w);
        let x_274 : vec4<f32> = vs_TEXCOORD4;
        let x_277 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_280 : vec4<f32> = u_xlat2;
        u_xlat34 = ((vec2<f32>(x_274.x, x_274.y) * vec2<f32>(x_277.z, x_277.w)) + -(vec2<f32>(x_280.x, x_280.y)));
        let x_284 : vec2<f32> = u_xlat34;
        u_xlat3 = (vec4<f32>(x_284.x, x_284.x, x_284.y, x_284.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_289 : vec4<f32> = u_xlat3;
        let x_291 : vec4<f32> = u_xlat3;
        u_xlat4 = (vec4<f32>(x_289.x, x_289.x, x_289.z, x_289.z) * vec4<f32>(x_291.x, x_291.x, x_291.z, x_291.z));
        let x_294 : vec4<f32> = u_xlat4;
        let x_298 : vec2<f32> = (vec2<f32>(x_294.y, x_294.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_299 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_298.x, x_299.y, x_298.y, x_299.w);
        let x_301 : vec4<f32> = u_xlat4;
        let x_304 : vec2<f32> = u_xlat34;
        let x_306 : vec2<f32> = ((vec2<f32>(x_301.x, x_301.z) * vec2<f32>(0.5f, 0.5f)) + -(x_304));
        let x_307 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_306.x, x_306.y, x_307.z, x_307.w);
        let x_310 : vec2<f32> = u_xlat34;
        u_xlat36 = (-(x_310) + vec2<f32>(1.0f, 1.0f));
        let x_315 : vec2<f32> = u_xlat34;
        let x_317 : vec2<f32> = min(x_315, vec2<f32>(0.0f, 0.0f));
        let x_318 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_317.x, x_317.y, x_318.z, x_318.w);
        let x_320 : vec4<f32> = u_xlat5;
        let x_323 : vec4<f32> = u_xlat5;
        let x_326 : vec2<f32> = u_xlat36;
        let x_327 : vec2<f32> = ((-(vec2<f32>(x_320.x, x_320.y)) * vec2<f32>(x_323.x, x_323.y)) + x_326);
        let x_328 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_327.x, x_327.y, x_328.z, x_328.w);
        let x_330 : vec2<f32> = u_xlat34;
        u_xlat34 = max(x_330, vec2<f32>(0.0f, 0.0f));
        let x_332 : vec2<f32> = u_xlat34;
        let x_334 : vec2<f32> = u_xlat34;
        let x_336 : vec4<f32> = u_xlat3;
        u_xlat34 = ((-(x_332) * x_334) + vec2<f32>(x_336.y, x_336.w));
        let x_339 : vec4<f32> = u_xlat5;
        let x_341 : vec2<f32> = (vec2<f32>(x_339.x, x_339.y) + vec2<f32>(1.0f, 1.0f));
        let x_342 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_341.x, x_341.y, x_342.z, x_342.w);
        let x_344 : vec2<f32> = u_xlat34;
        u_xlat34 = (x_344 + vec2<f32>(1.0f, 1.0f));
        let x_347 : vec4<f32> = u_xlat4;
        let x_351 : vec2<f32> = (vec2<f32>(x_347.x, x_347.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_352 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_351.x, x_351.y, x_352.z, x_352.w);
        let x_354 : vec2<f32> = u_xlat36;
        let x_355 : vec2<f32> = (x_354 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_356 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_355.x, x_355.y, x_356.z, x_356.w);
        let x_358 : vec4<f32> = u_xlat5;
        let x_360 : vec2<f32> = (vec2<f32>(x_358.x, x_358.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_361 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_360.x, x_360.y, x_361.z, x_361.w);
        let x_364 : vec2<f32> = u_xlat34;
        let x_365 : vec2<f32> = (x_364 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_366 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_365.x, x_365.y, x_366.z, x_366.w);
        let x_368 : vec4<f32> = u_xlat3;
        u_xlat34 = (vec2<f32>(x_368.y, x_368.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_372 : f32 = u_xlat5.x;
        u_xlat6.z = x_372;
        let x_375 : f32 = u_xlat34.x;
        u_xlat6.w = x_375;
        let x_378 : f32 = u_xlat7.x;
        u_xlat4.z = x_378;
        let x_381 : f32 = u_xlat3.x;
        u_xlat4.w = x_381;
        let x_384 : vec4<f32> = u_xlat4;
        let x_386 : vec4<f32> = u_xlat6;
        u_xlat8 = (vec4<f32>(x_384.z, x_384.w, x_384.x, x_384.z) + vec4<f32>(x_386.z, x_386.w, x_386.x, x_386.z));
        let x_390 : f32 = u_xlat6.y;
        u_xlat5.z = x_390;
        let x_393 : f32 = u_xlat34.y;
        u_xlat5.w = x_393;
        let x_396 : f32 = u_xlat4.y;
        u_xlat7.z = x_396;
        let x_399 : f32 = u_xlat3.z;
        u_xlat7.w = x_399;
        let x_401 : vec4<f32> = u_xlat5;
        let x_403 : vec4<f32> = u_xlat7;
        let x_405 : vec3<f32> = (vec3<f32>(x_401.z, x_401.y, x_401.w) + vec3<f32>(x_403.z, x_403.y, x_403.w));
        let x_406 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
        let x_408 : vec4<f32> = u_xlat4;
        let x_410 : vec4<f32> = u_xlat8;
        let x_412 : vec3<f32> = (vec3<f32>(x_408.x, x_408.z, x_408.w) / vec3<f32>(x_410.z, x_410.w, x_410.y));
        let x_413 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
        let x_415 : vec4<f32> = u_xlat4;
        let x_421 : vec3<f32> = (vec3<f32>(x_415.x, x_415.y, x_415.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_422 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
        let x_424 : vec4<f32> = u_xlat7;
        let x_426 : vec4<f32> = u_xlat3;
        let x_428 : vec3<f32> = (vec3<f32>(x_424.z, x_424.y, x_424.w) / vec3<f32>(x_426.x, x_426.y, x_426.z));
        let x_429 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
        let x_431 : vec4<f32> = u_xlat5;
        let x_433 : vec3<f32> = (vec3<f32>(x_431.x, x_431.y, x_431.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_434 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
        let x_436 : vec4<f32> = u_xlat4;
        let x_439 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_441 : vec3<f32> = (vec3<f32>(x_436.y, x_436.x, x_436.z) * vec3<f32>(x_439.x, x_439.x, x_439.x));
        let x_442 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
        let x_444 : vec4<f32> = u_xlat5;
        let x_447 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_449 : vec3<f32> = (vec3<f32>(x_444.x, x_444.y, x_444.z) * vec3<f32>(x_447.y, x_447.y, x_447.y));
        let x_450 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
        let x_453 : f32 = u_xlat5.x;
        u_xlat4.w = x_453;
        let x_455 : vec4<f32> = u_xlat2;
        let x_458 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_461 : vec4<f32> = u_xlat4;
        u_xlat6 = ((vec4<f32>(x_455.x, x_455.y, x_455.x, x_455.y) * vec4<f32>(x_458.x, x_458.y, x_458.x, x_458.y)) + vec4<f32>(x_461.y, x_461.w, x_461.x, x_461.w));
        let x_464 : vec4<f32> = u_xlat2;
        let x_467 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_470 : vec4<f32> = u_xlat4;
        u_xlat34 = ((vec2<f32>(x_464.x, x_464.y) * vec2<f32>(x_467.x, x_467.y)) + vec2<f32>(x_470.z, x_470.w));
        let x_474 : f32 = u_xlat4.y;
        u_xlat5.w = x_474;
        let x_476 : vec4<f32> = u_xlat5;
        let x_477 : vec2<f32> = vec2<f32>(x_476.y, x_476.z);
        let x_478 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_478.x, x_477.x, x_478.z, x_477.y);
        let x_480 : vec4<f32> = u_xlat2;
        let x_483 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_486 : vec4<f32> = u_xlat4;
        u_xlat7 = ((vec4<f32>(x_480.x, x_480.y, x_480.x, x_480.y) * vec4<f32>(x_483.x, x_483.y, x_483.x, x_483.y)) + vec4<f32>(x_486.x, x_486.y, x_486.z, x_486.y));
        let x_489 : vec4<f32> = u_xlat2;
        let x_492 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_495 : vec4<f32> = u_xlat5;
        u_xlat5 = ((vec4<f32>(x_489.x, x_489.y, x_489.x, x_489.y) * vec4<f32>(x_492.x, x_492.y, x_492.x, x_492.y)) + vec4<f32>(x_495.w, x_495.y, x_495.w, x_495.z));
        let x_498 : vec4<f32> = u_xlat2;
        let x_501 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_504 : vec4<f32> = u_xlat4;
        u_xlat4 = ((vec4<f32>(x_498.x, x_498.y, x_498.x, x_498.y) * vec4<f32>(x_501.x, x_501.y, x_501.x, x_501.y)) + vec4<f32>(x_504.x, x_504.w, x_504.z, x_504.w));
        let x_508 : vec4<f32> = u_xlat3;
        let x_510 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_508.x, x_508.x, x_508.x, x_508.y) * vec4<f32>(x_510.z, x_510.w, x_510.y, x_510.z));
        let x_514 : vec4<f32> = u_xlat3;
        let x_516 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_514.y, x_514.y, x_514.z, x_514.z) * x_516);
        let x_519 : f32 = u_xlat3.z;
        let x_521 : f32 = u_xlat8.y;
        u_xlat2.x = (x_519 * x_521);
        let x_525 : vec4<f32> = u_xlat6;
        let x_526 : vec2<f32> = vec2<f32>(x_525.x, x_525.y);
        let x_528 : f32 = vs_TEXCOORD4.z;
        txVec4 = vec3<f32>(x_526.x, x_526.y, x_528);
        let x_536 : vec3<f32> = txVec4;
        let x_538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_536.xy, x_536.z);
        u_xlat18 = x_538;
        let x_540 : vec4<f32> = u_xlat6;
        let x_541 : vec2<f32> = vec2<f32>(x_540.z, x_540.w);
        let x_543 : f32 = vs_TEXCOORD4.z;
        txVec5 = vec3<f32>(x_541.x, x_541.y, x_543);
        let x_550 : vec3<f32> = txVec5;
        let x_552 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_550.xy, x_550.z);
        u_xlat3.x = x_552;
        let x_555 : f32 = u_xlat3.x;
        let x_557 : f32 = u_xlat9.y;
        u_xlat3.x = (x_555 * x_557);
        let x_561 : f32 = u_xlat9.x;
        let x_562 : f32 = u_xlat18;
        let x_565 : f32 = u_xlat3.x;
        u_xlat18 = ((x_561 * x_562) + x_565);
        let x_568 : vec2<f32> = u_xlat34;
        let x_570 : f32 = vs_TEXCOORD4.z;
        txVec6 = vec3<f32>(x_568.x, x_568.y, x_570);
        let x_577 : vec3<f32> = txVec6;
        let x_579 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_577.xy, x_577.z);
        u_xlat34.x = x_579;
        let x_582 : f32 = u_xlat9.z;
        let x_584 : f32 = u_xlat34.x;
        let x_586 : f32 = u_xlat18;
        u_xlat18 = ((x_582 * x_584) + x_586);
        let x_589 : vec4<f32> = u_xlat5;
        let x_590 : vec2<f32> = vec2<f32>(x_589.x, x_589.y);
        let x_592 : f32 = vs_TEXCOORD4.z;
        txVec7 = vec3<f32>(x_590.x, x_590.y, x_592);
        let x_599 : vec3<f32> = txVec7;
        let x_601 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_599.xy, x_599.z);
        u_xlat34.x = x_601;
        let x_604 : f32 = u_xlat9.w;
        let x_606 : f32 = u_xlat34.x;
        let x_608 : f32 = u_xlat18;
        u_xlat18 = ((x_604 * x_606) + x_608);
        let x_611 : vec4<f32> = u_xlat7;
        let x_612 : vec2<f32> = vec2<f32>(x_611.x, x_611.y);
        let x_614 : f32 = vs_TEXCOORD4.z;
        txVec8 = vec3<f32>(x_612.x, x_612.y, x_614);
        let x_621 : vec3<f32> = txVec8;
        let x_623 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_621.xy, x_621.z);
        u_xlat34.x = x_623;
        let x_626 : f32 = u_xlat10.x;
        let x_628 : f32 = u_xlat34.x;
        let x_630 : f32 = u_xlat18;
        u_xlat18 = ((x_626 * x_628) + x_630);
        let x_633 : vec4<f32> = u_xlat7;
        let x_634 : vec2<f32> = vec2<f32>(x_633.z, x_633.w);
        let x_636 : f32 = vs_TEXCOORD4.z;
        txVec9 = vec3<f32>(x_634.x, x_634.y, x_636);
        let x_643 : vec3<f32> = txVec9;
        let x_645 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_643.xy, x_643.z);
        u_xlat34.x = x_645;
        let x_648 : f32 = u_xlat10.y;
        let x_650 : f32 = u_xlat34.x;
        let x_652 : f32 = u_xlat18;
        u_xlat18 = ((x_648 * x_650) + x_652);
        let x_655 : vec4<f32> = u_xlat5;
        let x_656 : vec2<f32> = vec2<f32>(x_655.z, x_655.w);
        let x_658 : f32 = vs_TEXCOORD4.z;
        txVec10 = vec3<f32>(x_656.x, x_656.y, x_658);
        let x_665 : vec3<f32> = txVec10;
        let x_667 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_665.xy, x_665.z);
        u_xlat34.x = x_667;
        let x_670 : f32 = u_xlat10.z;
        let x_672 : f32 = u_xlat34.x;
        let x_674 : f32 = u_xlat18;
        u_xlat18 = ((x_670 * x_672) + x_674);
        let x_677 : vec4<f32> = u_xlat4;
        let x_678 : vec2<f32> = vec2<f32>(x_677.x, x_677.y);
        let x_680 : f32 = vs_TEXCOORD4.z;
        txVec11 = vec3<f32>(x_678.x, x_678.y, x_680);
        let x_687 : vec3<f32> = txVec11;
        let x_689 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_687.xy, x_687.z);
        u_xlat34.x = x_689;
        let x_692 : f32 = u_xlat10.w;
        let x_694 : f32 = u_xlat34.x;
        let x_696 : f32 = u_xlat18;
        u_xlat18 = ((x_692 * x_694) + x_696);
        let x_699 : vec4<f32> = u_xlat4;
        let x_700 : vec2<f32> = vec2<f32>(x_699.z, x_699.w);
        let x_702 : f32 = vs_TEXCOORD4.z;
        txVec12 = vec3<f32>(x_700.x, x_700.y, x_702);
        let x_709 : vec3<f32> = txVec12;
        let x_711 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_709.xy, x_709.z);
        u_xlat34.x = x_711;
        let x_714 : f32 = u_xlat2.x;
        let x_716 : f32 = u_xlat34.x;
        let x_718 : f32 = u_xlat18;
        u_xlat48 = ((x_714 * x_716) + x_718);
      } else {
        let x_721 : vec4<f32> = vs_TEXCOORD4;
        let x_724 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_727 : vec2<f32> = ((vec2<f32>(x_721.x, x_721.y) * vec2<f32>(x_724.z, x_724.w)) + vec2<f32>(0.5f, 0.5f));
        let x_728 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_727.x, x_727.y, x_728.z, x_728.w);
        let x_730 : vec4<f32> = u_xlat2;
        let x_732 : vec2<f32> = floor(vec2<f32>(x_730.x, x_730.y));
        let x_733 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_732.x, x_732.y, x_733.z, x_733.w);
        let x_735 : vec4<f32> = vs_TEXCOORD4;
        let x_738 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_741 : vec4<f32> = u_xlat2;
        u_xlat34 = ((vec2<f32>(x_735.x, x_735.y) * vec2<f32>(x_738.z, x_738.w)) + -(vec2<f32>(x_741.x, x_741.y)));
        let x_745 : vec2<f32> = u_xlat34;
        u_xlat3 = (vec4<f32>(x_745.x, x_745.x, x_745.y, x_745.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_748 : vec4<f32> = u_xlat3;
        let x_750 : vec4<f32> = u_xlat3;
        u_xlat4 = (vec4<f32>(x_748.x, x_748.x, x_748.z, x_748.z) * vec4<f32>(x_750.x, x_750.x, x_750.z, x_750.z));
        let x_753 : vec4<f32> = u_xlat4;
        let x_757 : vec2<f32> = (vec2<f32>(x_753.y, x_753.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_758 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_758.x, x_757.x, x_758.z, x_757.y);
        let x_760 : vec4<f32> = u_xlat4;
        let x_763 : vec2<f32> = u_xlat34;
        let x_765 : vec2<f32> = ((vec2<f32>(x_760.x, x_760.z) * vec2<f32>(0.5f, 0.5f)) + -(x_763));
        let x_766 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_765.x, x_766.y, x_765.y, x_766.w);
        let x_768 : vec2<f32> = u_xlat34;
        let x_770 : vec2<f32> = (-(x_768) + vec2<f32>(1.0f, 1.0f));
        let x_771 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_770.x, x_770.y, x_771.z, x_771.w);
        let x_773 : vec2<f32> = u_xlat34;
        u_xlat36 = min(x_773, vec2<f32>(0.0f, 0.0f));
        let x_775 : vec2<f32> = u_xlat36;
        let x_777 : vec2<f32> = u_xlat36;
        let x_779 : vec4<f32> = u_xlat4;
        let x_781 : vec2<f32> = ((-(x_775) * x_777) + vec2<f32>(x_779.x, x_779.y));
        let x_782 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_781.x, x_781.y, x_782.z, x_782.w);
        let x_784 : vec2<f32> = u_xlat34;
        u_xlat36 = max(x_784, vec2<f32>(0.0f, 0.0f));
        let x_788 : vec2<f32> = u_xlat36;
        let x_790 : vec2<f32> = u_xlat36;
        let x_792 : vec4<f32> = u_xlat3;
        let x_794 : vec2<f32> = ((-(x_788) * x_790) + vec2<f32>(x_792.y, x_792.w));
        let x_795 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_794.x, x_795.y, x_794.y);
        let x_797 : vec4<f32> = u_xlat4;
        let x_800 : vec2<f32> = (vec2<f32>(x_797.x, x_797.y) + vec2<f32>(2.0f, 2.0f));
        let x_801 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_800.x, x_800.y, x_801.z, x_801.w);
        let x_803 : vec3<f32> = u_xlat19;
        let x_805 : vec2<f32> = (vec2<f32>(x_803.x, x_803.z) + vec2<f32>(2.0f, 2.0f));
        let x_806 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_806.x, x_805.x, x_806.z, x_805.y);
        let x_809 : f32 = u_xlat3.y;
        u_xlat6.z = (x_809 * 0.08163200318813323975f);
        let x_813 : vec4<f32> = u_xlat3;
        let x_816 : vec3<f32> = (vec3<f32>(x_813.z, x_813.x, x_813.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_817 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
        let x_819 : vec4<f32> = u_xlat4;
        let x_822 : vec2<f32> = (vec2<f32>(x_819.x, x_819.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_823 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_822.x, x_822.y, x_823.z, x_823.w);
        let x_826 : f32 = u_xlat7.y;
        u_xlat6.x = x_826;
        let x_828 : vec2<f32> = u_xlat34;
        let x_835 : vec2<f32> = ((vec2<f32>(x_828.x, x_828.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_836 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_836.x, x_835.x, x_836.z, x_835.y);
        let x_838 : vec2<f32> = u_xlat34;
        let x_842 : vec2<f32> = ((vec2<f32>(x_838.x, x_838.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_843 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_842.x, x_843.y, x_842.y, x_843.w);
        let x_846 : f32 = u_xlat3.x;
        u_xlat4.y = x_846;
        let x_849 : f32 = u_xlat5.y;
        u_xlat4.w = x_849;
        let x_851 : vec4<f32> = u_xlat4;
        let x_852 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_851 + x_852);
        let x_854 : vec2<f32> = u_xlat34;
        let x_857 : vec2<f32> = ((vec2<f32>(x_854.y, x_854.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_858 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_858.x, x_857.x, x_858.z, x_857.y);
        let x_860 : vec2<f32> = u_xlat34;
        let x_863 : vec2<f32> = ((vec2<f32>(x_860.y, x_860.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_864 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_863.x, x_864.y, x_863.y, x_864.w);
        let x_867 : f32 = u_xlat3.y;
        u_xlat5.y = x_867;
        let x_869 : vec4<f32> = u_xlat5;
        let x_870 : vec4<f32> = u_xlat7;
        u_xlat3 = (x_869 + x_870);
        let x_872 : vec4<f32> = u_xlat4;
        let x_873 : vec4<f32> = u_xlat6;
        u_xlat4 = (x_872 / x_873);
        let x_875 : vec4<f32> = u_xlat4;
        u_xlat4 = (x_875 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_881 : vec4<f32> = u_xlat5;
        let x_882 : vec4<f32> = u_xlat3;
        u_xlat5 = (x_881 / x_882);
        let x_884 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_884 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_886 : vec4<f32> = u_xlat4;
        let x_889 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        u_xlat4 = (vec4<f32>(x_886.w, x_886.x, x_886.y, x_886.z) * vec4<f32>(x_889.x, x_889.x, x_889.x, x_889.x));
        let x_892 : vec4<f32> = u_xlat5;
        let x_895 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        u_xlat5 = (vec4<f32>(x_892.x, x_892.w, x_892.y, x_892.z) * vec4<f32>(x_895.y, x_895.y, x_895.y, x_895.y));
        let x_898 : vec4<f32> = u_xlat4;
        let x_899 : vec3<f32> = vec3<f32>(x_898.y, x_898.z, x_898.w);
        let x_900 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_899.x, x_900.y, x_899.y, x_899.z);
        let x_903 : f32 = u_xlat5.x;
        u_xlat7.y = x_903;
        let x_905 : vec4<f32> = u_xlat2;
        let x_908 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_911 : vec4<f32> = u_xlat7;
        u_xlat8 = ((vec4<f32>(x_905.x, x_905.y, x_905.x, x_905.y) * vec4<f32>(x_908.x, x_908.y, x_908.x, x_908.y)) + vec4<f32>(x_911.x, x_911.y, x_911.z, x_911.y));
        let x_914 : vec4<f32> = u_xlat2;
        let x_917 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_920 : vec4<f32> = u_xlat7;
        u_xlat34 = ((vec2<f32>(x_914.x, x_914.y) * vec2<f32>(x_917.x, x_917.y)) + vec2<f32>(x_920.w, x_920.y));
        let x_924 : f32 = u_xlat7.y;
        u_xlat4.y = x_924;
        let x_927 : f32 = u_xlat5.z;
        u_xlat7.y = x_927;
        let x_929 : vec4<f32> = u_xlat2;
        let x_932 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_935 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_929.x, x_929.y, x_929.x, x_929.y) * vec4<f32>(x_932.x, x_932.y, x_932.x, x_932.y)) + vec4<f32>(x_935.x, x_935.y, x_935.z, x_935.y));
        let x_938 : vec4<f32> = u_xlat2;
        let x_941 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_944 : vec4<f32> = u_xlat7;
        let x_946 : vec2<f32> = ((vec2<f32>(x_938.x, x_938.y) * vec2<f32>(x_941.x, x_941.y)) + vec2<f32>(x_944.w, x_944.y));
        let x_947 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_946.x, x_946.y, x_947.z, x_947.w);
        let x_950 : f32 = u_xlat7.y;
        u_xlat4.z = x_950;
        let x_953 : vec4<f32> = u_xlat2;
        let x_956 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_959 : vec4<f32> = u_xlat4;
        u_xlat11 = ((vec4<f32>(x_953.x, x_953.y, x_953.x, x_953.y) * vec4<f32>(x_956.x, x_956.y, x_956.x, x_956.y)) + vec4<f32>(x_959.x, x_959.y, x_959.x, x_959.z));
        let x_963 : f32 = u_xlat5.w;
        u_xlat7.y = x_963;
        let x_966 : vec4<f32> = u_xlat2;
        let x_969 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_972 : vec4<f32> = u_xlat7;
        u_xlat12 = ((vec4<f32>(x_966.x, x_966.y, x_966.x, x_966.y) * vec4<f32>(x_969.x, x_969.y, x_969.x, x_969.y)) + vec4<f32>(x_972.x, x_972.y, x_972.z, x_972.y));
        let x_976 : vec4<f32> = u_xlat2;
        let x_979 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_982 : vec4<f32> = u_xlat7;
        u_xlat20 = ((vec2<f32>(x_976.x, x_976.y) * vec2<f32>(x_979.x, x_979.y)) + vec2<f32>(x_982.w, x_982.y));
        let x_986 : f32 = u_xlat7.y;
        u_xlat4.w = x_986;
        let x_989 : vec4<f32> = u_xlat2;
        let x_992 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_995 : vec4<f32> = u_xlat4;
        u_xlat42 = ((vec2<f32>(x_989.x, x_989.y) * vec2<f32>(x_992.x, x_992.y)) + vec2<f32>(x_995.x, x_995.w));
        let x_998 : vec4<f32> = u_xlat7;
        let x_999 : vec3<f32> = vec3<f32>(x_998.x, x_998.z, x_998.w);
        let x_1000 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_999.x, x_1000.y, x_999.y, x_999.z);
        let x_1002 : vec4<f32> = u_xlat2;
        let x_1005 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1008 : vec4<f32> = u_xlat5;
        u_xlat7 = ((vec4<f32>(x_1002.x, x_1002.y, x_1002.x, x_1002.y) * vec4<f32>(x_1005.x, x_1005.y, x_1005.x, x_1005.y)) + vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1008.y));
        let x_1012 : vec4<f32> = u_xlat2;
        let x_1015 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1018 : vec4<f32> = u_xlat5;
        u_xlat37 = ((vec2<f32>(x_1012.x, x_1012.y) * vec2<f32>(x_1015.x, x_1015.y)) + vec2<f32>(x_1018.w, x_1018.y));
        let x_1022 : f32 = u_xlat4.x;
        u_xlat5.x = x_1022;
        let x_1024 : vec4<f32> = u_xlat2;
        let x_1027 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1030 : vec4<f32> = u_xlat5;
        let x_1032 : vec2<f32> = ((vec2<f32>(x_1024.x, x_1024.y) * vec2<f32>(x_1027.x, x_1027.y)) + vec2<f32>(x_1030.x, x_1030.y));
        let x_1033 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_1032.x, x_1032.y, x_1033.z, x_1033.w);
        let x_1036 : vec4<f32> = u_xlat3;
        let x_1038 : vec4<f32> = u_xlat6;
        u_xlat13 = (vec4<f32>(x_1036.x, x_1036.x, x_1036.x, x_1036.x) * x_1038);
        let x_1041 : vec4<f32> = u_xlat3;
        let x_1043 : vec4<f32> = u_xlat6;
        u_xlat14 = (vec4<f32>(x_1041.y, x_1041.y, x_1041.y, x_1041.y) * x_1043);
        let x_1046 : vec4<f32> = u_xlat3;
        let x_1048 : vec4<f32> = u_xlat6;
        u_xlat15 = (vec4<f32>(x_1046.z, x_1046.z, x_1046.z, x_1046.z) * x_1048);
        let x_1050 : vec4<f32> = u_xlat3;
        let x_1052 : vec4<f32> = u_xlat6;
        u_xlat3 = (vec4<f32>(x_1050.w, x_1050.w, x_1050.w, x_1050.w) * x_1052);
        let x_1055 : vec4<f32> = u_xlat8;
        let x_1056 : vec2<f32> = vec2<f32>(x_1055.x, x_1055.y);
        let x_1058 : f32 = vs_TEXCOORD4.z;
        txVec13 = vec3<f32>(x_1056.x, x_1056.y, x_1058);
        let x_1065 : vec3<f32> = txVec13;
        let x_1067 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1065.xy, x_1065.z);
        u_xlat4.x = x_1067;
        let x_1070 : vec4<f32> = u_xlat8;
        let x_1071 : vec2<f32> = vec2<f32>(x_1070.z, x_1070.w);
        let x_1073 : f32 = vs_TEXCOORD4.z;
        txVec14 = vec3<f32>(x_1071.x, x_1071.y, x_1073);
        let x_1081 : vec3<f32> = txVec14;
        let x_1083 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1081.xy, x_1081.z);
        u_xlat52 = x_1083;
        let x_1084 : f32 = u_xlat52;
        let x_1086 : f32 = u_xlat13.y;
        u_xlat52 = (x_1084 * x_1086);
        let x_1089 : f32 = u_xlat13.x;
        let x_1091 : f32 = u_xlat4.x;
        let x_1093 : f32 = u_xlat52;
        u_xlat4.x = ((x_1089 * x_1091) + x_1093);
        let x_1097 : vec2<f32> = u_xlat34;
        let x_1099 : f32 = vs_TEXCOORD4.z;
        txVec15 = vec3<f32>(x_1097.x, x_1097.y, x_1099);
        let x_1106 : vec3<f32> = txVec15;
        let x_1108 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1106.xy, x_1106.z);
        u_xlat34.x = x_1108;
        let x_1111 : f32 = u_xlat13.z;
        let x_1113 : f32 = u_xlat34.x;
        let x_1116 : f32 = u_xlat4.x;
        u_xlat34.x = ((x_1111 * x_1113) + x_1116);
        let x_1120 : vec4<f32> = u_xlat11;
        let x_1121 : vec2<f32> = vec2<f32>(x_1120.x, x_1120.y);
        let x_1123 : f32 = vs_TEXCOORD4.z;
        txVec16 = vec3<f32>(x_1121.x, x_1121.y, x_1123);
        let x_1131 : vec3<f32> = txVec16;
        let x_1133 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1131.xy, x_1131.z);
        u_xlat50 = x_1133;
        let x_1135 : f32 = u_xlat13.w;
        let x_1136 : f32 = u_xlat50;
        let x_1139 : f32 = u_xlat34.x;
        u_xlat34.x = ((x_1135 * x_1136) + x_1139);
        let x_1143 : vec4<f32> = u_xlat9;
        let x_1144 : vec2<f32> = vec2<f32>(x_1143.x, x_1143.y);
        let x_1146 : f32 = vs_TEXCOORD4.z;
        txVec17 = vec3<f32>(x_1144.x, x_1144.y, x_1146);
        let x_1153 : vec3<f32> = txVec17;
        let x_1155 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1153.xy, x_1153.z);
        u_xlat50 = x_1155;
        let x_1157 : f32 = u_xlat14.x;
        let x_1158 : f32 = u_xlat50;
        let x_1161 : f32 = u_xlat34.x;
        u_xlat34.x = ((x_1157 * x_1158) + x_1161);
        let x_1165 : vec4<f32> = u_xlat9;
        let x_1166 : vec2<f32> = vec2<f32>(x_1165.z, x_1165.w);
        let x_1168 : f32 = vs_TEXCOORD4.z;
        txVec18 = vec3<f32>(x_1166.x, x_1166.y, x_1168);
        let x_1175 : vec3<f32> = txVec18;
        let x_1177 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1175.xy, x_1175.z);
        u_xlat50 = x_1177;
        let x_1179 : f32 = u_xlat14.y;
        let x_1180 : f32 = u_xlat50;
        let x_1183 : f32 = u_xlat34.x;
        u_xlat34.x = ((x_1179 * x_1180) + x_1183);
        let x_1187 : vec4<f32> = u_xlat10;
        let x_1188 : vec2<f32> = vec2<f32>(x_1187.x, x_1187.y);
        let x_1190 : f32 = vs_TEXCOORD4.z;
        txVec19 = vec3<f32>(x_1188.x, x_1188.y, x_1190);
        let x_1197 : vec3<f32> = txVec19;
        let x_1199 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1197.xy, x_1197.z);
        u_xlat50 = x_1199;
        let x_1201 : f32 = u_xlat14.z;
        let x_1202 : f32 = u_xlat50;
        let x_1205 : f32 = u_xlat34.x;
        u_xlat34.x = ((x_1201 * x_1202) + x_1205);
        let x_1209 : vec4<f32> = u_xlat11;
        let x_1210 : vec2<f32> = vec2<f32>(x_1209.z, x_1209.w);
        let x_1212 : f32 = vs_TEXCOORD4.z;
        txVec20 = vec3<f32>(x_1210.x, x_1210.y, x_1212);
        let x_1219 : vec3<f32> = txVec20;
        let x_1221 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1219.xy, x_1219.z);
        u_xlat50 = x_1221;
        let x_1223 : f32 = u_xlat14.w;
        let x_1224 : f32 = u_xlat50;
        let x_1227 : f32 = u_xlat34.x;
        u_xlat34.x = ((x_1223 * x_1224) + x_1227);
        let x_1231 : vec4<f32> = u_xlat12;
        let x_1232 : vec2<f32> = vec2<f32>(x_1231.x, x_1231.y);
        let x_1234 : f32 = vs_TEXCOORD4.z;
        txVec21 = vec3<f32>(x_1232.x, x_1232.y, x_1234);
        let x_1241 : vec3<f32> = txVec21;
        let x_1243 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1241.xy, x_1241.z);
        u_xlat50 = x_1243;
        let x_1245 : f32 = u_xlat15.x;
        let x_1246 : f32 = u_xlat50;
        let x_1249 : f32 = u_xlat34.x;
        u_xlat34.x = ((x_1245 * x_1246) + x_1249);
        let x_1253 : vec4<f32> = u_xlat12;
        let x_1254 : vec2<f32> = vec2<f32>(x_1253.z, x_1253.w);
        let x_1256 : f32 = vs_TEXCOORD4.z;
        txVec22 = vec3<f32>(x_1254.x, x_1254.y, x_1256);
        let x_1263 : vec3<f32> = txVec22;
        let x_1265 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1263.xy, x_1263.z);
        u_xlat50 = x_1265;
        let x_1267 : f32 = u_xlat15.y;
        let x_1268 : f32 = u_xlat50;
        let x_1271 : f32 = u_xlat34.x;
        u_xlat34.x = ((x_1267 * x_1268) + x_1271);
        let x_1275 : vec2<f32> = u_xlat20;
        let x_1277 : f32 = vs_TEXCOORD4.z;
        txVec23 = vec3<f32>(x_1275.x, x_1275.y, x_1277);
        let x_1284 : vec3<f32> = txVec23;
        let x_1286 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1284.xy, x_1284.z);
        u_xlat50 = x_1286;
        let x_1288 : f32 = u_xlat15.z;
        let x_1289 : f32 = u_xlat50;
        let x_1292 : f32 = u_xlat34.x;
        u_xlat34.x = ((x_1288 * x_1289) + x_1292);
        let x_1296 : vec2<f32> = u_xlat42;
        let x_1298 : f32 = vs_TEXCOORD4.z;
        txVec24 = vec3<f32>(x_1296.x, x_1296.y, x_1298);
        let x_1305 : vec3<f32> = txVec24;
        let x_1307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1305.xy, x_1305.z);
        u_xlat50 = x_1307;
        let x_1309 : f32 = u_xlat15.w;
        let x_1310 : f32 = u_xlat50;
        let x_1313 : f32 = u_xlat34.x;
        u_xlat34.x = ((x_1309 * x_1310) + x_1313);
        let x_1317 : vec4<f32> = u_xlat7;
        let x_1318 : vec2<f32> = vec2<f32>(x_1317.x, x_1317.y);
        let x_1320 : f32 = vs_TEXCOORD4.z;
        txVec25 = vec3<f32>(x_1318.x, x_1318.y, x_1320);
        let x_1327 : vec3<f32> = txVec25;
        let x_1329 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1327.xy, x_1327.z);
        u_xlat50 = x_1329;
        let x_1331 : f32 = u_xlat3.x;
        let x_1332 : f32 = u_xlat50;
        let x_1335 : f32 = u_xlat34.x;
        u_xlat34.x = ((x_1331 * x_1332) + x_1335);
        let x_1339 : vec4<f32> = u_xlat7;
        let x_1340 : vec2<f32> = vec2<f32>(x_1339.z, x_1339.w);
        let x_1342 : f32 = vs_TEXCOORD4.z;
        txVec26 = vec3<f32>(x_1340.x, x_1340.y, x_1342);
        let x_1349 : vec3<f32> = txVec26;
        let x_1351 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1349.xy, x_1349.z);
        u_xlat50 = x_1351;
        let x_1353 : f32 = u_xlat3.y;
        let x_1354 : f32 = u_xlat50;
        let x_1357 : f32 = u_xlat34.x;
        u_xlat34.x = ((x_1353 * x_1354) + x_1357);
        let x_1361 : vec2<f32> = u_xlat37;
        let x_1363 : f32 = vs_TEXCOORD4.z;
        txVec27 = vec3<f32>(x_1361.x, x_1361.y, x_1363);
        let x_1370 : vec3<f32> = txVec27;
        let x_1372 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1370.xy, x_1370.z);
        u_xlat50 = x_1372;
        let x_1374 : f32 = u_xlat3.z;
        let x_1375 : f32 = u_xlat50;
        let x_1378 : f32 = u_xlat34.x;
        u_xlat34.x = ((x_1374 * x_1375) + x_1378);
        let x_1382 : vec4<f32> = u_xlat2;
        let x_1383 : vec2<f32> = vec2<f32>(x_1382.x, x_1382.y);
        let x_1385 : f32 = vs_TEXCOORD4.z;
        txVec28 = vec3<f32>(x_1383.x, x_1383.y, x_1385);
        let x_1392 : vec3<f32> = txVec28;
        let x_1394 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1392.xy, x_1392.z);
        u_xlat2.x = x_1394;
        let x_1397 : f32 = u_xlat3.w;
        let x_1399 : f32 = u_xlat2.x;
        let x_1402 : f32 = u_xlat34.x;
        u_xlat48 = ((x_1397 * x_1399) + x_1402);
      }
    }
  } else {
    let x_1406 : vec4<f32> = vs_TEXCOORD4;
    let x_1407 : vec2<f32> = vec2<f32>(x_1406.x, x_1406.y);
    let x_1409 : f32 = vs_TEXCOORD4.z;
    txVec29 = vec3<f32>(x_1407.x, x_1407.y, x_1409);
    let x_1416 : vec3<f32> = txVec29;
    let x_1418 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1416.xy, x_1416.z);
    u_xlat48 = x_1418;
  }
  let x_1420 : f32 = x_147.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1420) + 1.0f);
  let x_1424 : f32 = u_xlat48;
  let x_1426 : f32 = x_147.x_MainLightShadowParams.x;
  let x_1429 : f32 = u_xlat2.x;
  u_xlat48 = ((x_1424 * x_1426) + x_1429);
  let x_1432 : f32 = vs_TEXCOORD4.z;
  u_xlatb2 = (0.0f >= x_1432);
  let x_1436 : f32 = vs_TEXCOORD4.z;
  u_xlatb18 = (x_1436 >= 1.0f);
  let x_1438 : bool = u_xlatb18;
  let x_1439 : bool = u_xlatb2;
  u_xlatb2 = (x_1438 | x_1439);
  let x_1441 : bool = u_xlatb2;
  let x_1442 : f32 = u_xlat48;
  u_xlat48 = select(x_1442, 1.0f, x_1441);
  let x_1445 : vec4<f32> = vs_TEXCOORD3;
  let x_1447 : f32 = u_xlat48;
  let x_1450 : vec4<f32> = u_xlat0;
  let x_1452 : vec3<f32> = ((vec3<f32>(x_1445.x, x_1445.y, x_1445.z) * vec3<f32>(x_1447, x_1447, x_1447)) + vec3<f32>(x_1450.x, x_1450.y, x_1450.z));
  let x_1453 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1452.x, x_1452.y, x_1452.z, x_1453.w);
  let x_1456 : f32 = vs_TEXCOORD3.w;
  let x_1458 : f32 = vs_TEXCOORD3.w;
  u_xlat48 = (x_1456 * -(x_1458));
  let x_1461 : f32 = u_xlat48;
  u_xlat48 = exp2(x_1461);
  let x_1463 : vec4<f32> = u_xlat1;
  let x_1465 : vec4<f32> = u_xlat0;
  let x_1470 : vec4<f32> = x_134.unity_FogColor;
  let x_1473 : vec3<f32> = ((vec3<f32>(x_1463.x, x_1463.y, x_1463.z) * vec3<f32>(x_1465.x, x_1465.y, x_1465.z)) + -(vec3<f32>(x_1470.x, x_1470.y, x_1470.z)));
  let x_1474 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1473.x, x_1473.y, x_1473.z, x_1474.w);
  let x_1478 : f32 = u_xlat48;
  let x_1480 : vec4<f32> = u_xlat0;
  let x_1484 : vec4<f32> = x_134.unity_FogColor;
  let x_1486 : vec3<f32> = ((vec3<f32>(x_1478, x_1478, x_1478) * vec3<f32>(x_1480.x, x_1480.y, x_1480.z)) + vec3<f32>(x_1484.x, x_1484.y, x_1484.z));
  let x_1487 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1486.x, x_1486.y, x_1486.z, x_1487.w);
  let x_1490 : f32 = u_xlat1.w;
  SV_Target0.w = x_1490;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD5_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


