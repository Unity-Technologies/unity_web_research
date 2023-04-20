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

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_27 : UnityPerDraw;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlatb45 : bool;

@group(1) @binding(2) var<uniform> x_124 : LightShadows;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(0) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(2) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat45 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat31 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat18 : vec2<f32>;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat48 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlatb16 : bool;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_1449 : PGlobals;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

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
  let x_13 : vec3<f32> = vs_TEXCOORD5;
  let x_14 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_13.x, x_13.y, x_13.z, x_14.w);
  u_xlat0.w = 1.0f;
  let x_32 : vec4<f32> = x_27.unity_SHAr;
  let x_33 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(x_32, x_33);
  let x_39 : vec4<f32> = x_27.unity_SHAg;
  let x_40 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(x_39, x_40);
  let x_46 : vec4<f32> = x_27.unity_SHAb;
  let x_47 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(x_46, x_47);
  let x_50 : vec3<f32> = vs_TEXCOORD5;
  let x_52 : vec3<f32> = vs_TEXCOORD5;
  u_xlat0 = (vec4<f32>(x_50.y, x_50.z, x_50.z, x_50.x) * vec4<f32>(x_52.x, x_52.y, x_52.z, x_52.z));
  let x_58 : vec4<f32> = x_27.unity_SHBr;
  let x_59 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(x_58, x_59);
  let x_64 : vec4<f32> = x_27.unity_SHBg;
  let x_65 : vec4<f32> = u_xlat0;
  u_xlat2.y = dot(x_64, x_65);
  let x_70 : vec4<f32> = x_27.unity_SHBb;
  let x_71 : vec4<f32> = u_xlat0;
  u_xlat2.z = dot(x_70, x_71);
  let x_76 : f32 = vs_TEXCOORD5.y;
  let x_78 : f32 = vs_TEXCOORD5.y;
  u_xlat0.x = (x_76 * x_78);
  let x_82 : f32 = vs_TEXCOORD5.x;
  let x_84 : f32 = vs_TEXCOORD5.x;
  let x_87 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_82 * x_84) + -(x_87));
  let x_93 : vec4<f32> = x_27.unity_SHC;
  let x_95 : vec4<f32> = u_xlat0;
  let x_98 : vec4<f32> = u_xlat2;
  let x_100 : vec3<f32> = ((vec3<f32>(x_93.x, x_93.y, x_93.z) * vec3<f32>(x_95.x, x_95.x, x_95.x)) + vec3<f32>(x_98.x, x_98.y, x_98.z));
  let x_101 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
  let x_103 : vec4<f32> = u_xlat0;
  let x_105 : vec4<f32> = u_xlat1;
  let x_107 : vec3<f32> = (vec3<f32>(x_103.x, x_103.y, x_103.z) + vec3<f32>(x_105.x, x_105.y, x_105.z));
  let x_108 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_110 : vec4<f32> = u_xlat0;
  let x_114 : vec3<f32> = max(vec3<f32>(x_110.x, x_110.y, x_110.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_115 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_128 : f32 = x_124.x_MainLightShadowParams.y;
  u_xlatb45 = (0.0f < x_128);
  let x_130 : bool = u_xlatb45;
  if (x_130) {
    let x_134 : f32 = x_124.x_MainLightShadowParams.y;
    u_xlatb45 = (x_134 == 1.0f);
    let x_136 : bool = u_xlatb45;
    if (x_136) {
      let x_141 : vec4<f32> = vs_TEXCOORD4;
      let x_145 : vec4<f32> = x_124.x_MainLightShadowOffset0;
      u_xlat1 = (vec4<f32>(x_141.x, x_141.y, x_141.x, x_141.y) + x_145);
      let x_150 : vec4<f32> = u_xlat1;
      let x_151 : vec2<f32> = vec2<f32>(x_150.x, x_150.y);
      let x_153 : f32 = vs_TEXCOORD4.z;
      txVec0 = vec3<f32>(x_151.x, x_151.y, x_153);
      let x_167 : vec3<f32> = txVec0;
      let x_169 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_167.xy, x_167.z);
      u_xlat2.x = x_169;
      let x_172 : vec4<f32> = u_xlat1;
      let x_173 : vec2<f32> = vec2<f32>(x_172.z, x_172.w);
      let x_175 : f32 = vs_TEXCOORD4.z;
      txVec1 = vec3<f32>(x_173.x, x_173.y, x_175);
      let x_182 : vec3<f32> = txVec1;
      let x_184 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_182.xy, x_182.z);
      u_xlat2.y = x_184;
      let x_186 : vec4<f32> = vs_TEXCOORD4;
      let x_190 : vec4<f32> = x_124.x_MainLightShadowOffset1;
      u_xlat1 = (vec4<f32>(x_186.x, x_186.y, x_186.x, x_186.y) + x_190);
      let x_193 : vec4<f32> = u_xlat1;
      let x_194 : vec2<f32> = vec2<f32>(x_193.x, x_193.y);
      let x_196 : f32 = vs_TEXCOORD4.z;
      txVec2 = vec3<f32>(x_194.x, x_194.y, x_196);
      let x_203 : vec3<f32> = txVec2;
      let x_205 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_203.xy, x_203.z);
      u_xlat2.z = x_205;
      let x_208 : vec4<f32> = u_xlat1;
      let x_209 : vec2<f32> = vec2<f32>(x_208.z, x_208.w);
      let x_211 : f32 = vs_TEXCOORD4.z;
      txVec3 = vec3<f32>(x_209.x, x_209.y, x_211);
      let x_218 : vec3<f32> = txVec3;
      let x_220 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_218.xy, x_218.z);
      u_xlat2.w = x_220;
      let x_223 : vec4<f32> = u_xlat2;
      u_xlat45 = dot(x_223, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_230 : f32 = x_124.x_MainLightShadowParams.y;
      u_xlatb1 = (x_230 == 2.0f);
      let x_233 : bool = u_xlatb1;
      if (x_233) {
        let x_236 : vec4<f32> = vs_TEXCOORD4;
        let x_240 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_245 : vec2<f32> = ((vec2<f32>(x_236.x, x_236.y) * vec2<f32>(x_240.z, x_240.w)) + vec2<f32>(0.5f, 0.5f));
        let x_246 : vec4<f32> = u_xlat1;
        u_xlat1 = vec4<f32>(x_245.x, x_245.y, x_246.z, x_246.w);
        let x_248 : vec4<f32> = u_xlat1;
        let x_250 : vec2<f32> = floor(vec2<f32>(x_248.x, x_248.y));
        let x_251 : vec4<f32> = u_xlat1;
        u_xlat1 = vec4<f32>(x_250.x, x_250.y, x_251.z, x_251.w);
        let x_255 : vec4<f32> = vs_TEXCOORD4;
        let x_258 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_261 : vec4<f32> = u_xlat1;
        u_xlat31 = ((vec2<f32>(x_255.x, x_255.y) * vec2<f32>(x_258.z, x_258.w)) + -(vec2<f32>(x_261.x, x_261.y)));
        let x_265 : vec2<f32> = u_xlat31;
        u_xlat2 = (vec4<f32>(x_265.x, x_265.x, x_265.y, x_265.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_270 : vec4<f32> = u_xlat2;
        let x_272 : vec4<f32> = u_xlat2;
        u_xlat3 = (vec4<f32>(x_270.x, x_270.x, x_270.z, x_270.z) * vec4<f32>(x_272.x, x_272.x, x_272.z, x_272.z));
        let x_275 : vec4<f32> = u_xlat3;
        let x_279 : vec2<f32> = (vec2<f32>(x_275.y, x_275.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_280 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_279.x, x_280.y, x_279.y, x_280.w);
        let x_282 : vec4<f32> = u_xlat3;
        let x_285 : vec2<f32> = u_xlat31;
        let x_287 : vec2<f32> = ((vec2<f32>(x_282.x, x_282.z) * vec2<f32>(0.5f, 0.5f)) + -(x_285));
        let x_288 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_287.x, x_287.y, x_288.z, x_288.w);
        let x_291 : vec2<f32> = u_xlat31;
        u_xlat33 = (-(x_291) + vec2<f32>(1.0f, 1.0f));
        let x_296 : vec2<f32> = u_xlat31;
        let x_298 : vec2<f32> = min(x_296, vec2<f32>(0.0f, 0.0f));
        let x_299 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_298.x, x_298.y, x_299.z, x_299.w);
        let x_301 : vec4<f32> = u_xlat4;
        let x_304 : vec4<f32> = u_xlat4;
        let x_307 : vec2<f32> = u_xlat33;
        let x_308 : vec2<f32> = ((-(vec2<f32>(x_301.x, x_301.y)) * vec2<f32>(x_304.x, x_304.y)) + x_307);
        let x_309 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_308.x, x_308.y, x_309.z, x_309.w);
        let x_311 : vec2<f32> = u_xlat31;
        u_xlat31 = max(x_311, vec2<f32>(0.0f, 0.0f));
        let x_313 : vec2<f32> = u_xlat31;
        let x_315 : vec2<f32> = u_xlat31;
        let x_317 : vec4<f32> = u_xlat2;
        u_xlat31 = ((-(x_313) * x_315) + vec2<f32>(x_317.y, x_317.w));
        let x_320 : vec4<f32> = u_xlat4;
        let x_322 : vec2<f32> = (vec2<f32>(x_320.x, x_320.y) + vec2<f32>(1.0f, 1.0f));
        let x_323 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_322.x, x_322.y, x_323.z, x_323.w);
        let x_325 : vec2<f32> = u_xlat31;
        u_xlat31 = (x_325 + vec2<f32>(1.0f, 1.0f));
        let x_328 : vec4<f32> = u_xlat3;
        let x_332 : vec2<f32> = (vec2<f32>(x_328.x, x_328.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_333 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_332.x, x_332.y, x_333.z, x_333.w);
        let x_335 : vec2<f32> = u_xlat33;
        let x_336 : vec2<f32> = (x_335 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_337 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_336.x, x_336.y, x_337.z, x_337.w);
        let x_339 : vec4<f32> = u_xlat4;
        let x_341 : vec2<f32> = (vec2<f32>(x_339.x, x_339.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_342 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_341.x, x_341.y, x_342.z, x_342.w);
        let x_345 : vec2<f32> = u_xlat31;
        let x_346 : vec2<f32> = (x_345 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_347 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_346.x, x_346.y, x_347.z, x_347.w);
        let x_349 : vec4<f32> = u_xlat2;
        u_xlat31 = (vec2<f32>(x_349.y, x_349.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_353 : f32 = u_xlat4.x;
        u_xlat5.z = x_353;
        let x_356 : f32 = u_xlat31.x;
        u_xlat5.w = x_356;
        let x_359 : f32 = u_xlat6.x;
        u_xlat3.z = x_359;
        let x_362 : f32 = u_xlat2.x;
        u_xlat3.w = x_362;
        let x_365 : vec4<f32> = u_xlat3;
        let x_367 : vec4<f32> = u_xlat5;
        u_xlat7 = (vec4<f32>(x_365.z, x_365.w, x_365.x, x_365.z) + vec4<f32>(x_367.z, x_367.w, x_367.x, x_367.z));
        let x_371 : f32 = u_xlat5.y;
        u_xlat4.z = x_371;
        let x_374 : f32 = u_xlat31.y;
        u_xlat4.w = x_374;
        let x_377 : f32 = u_xlat3.y;
        u_xlat6.z = x_377;
        let x_380 : f32 = u_xlat2.z;
        u_xlat6.w = x_380;
        let x_382 : vec4<f32> = u_xlat4;
        let x_384 : vec4<f32> = u_xlat6;
        let x_386 : vec3<f32> = (vec3<f32>(x_382.z, x_382.y, x_382.w) + vec3<f32>(x_384.z, x_384.y, x_384.w));
        let x_387 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
        let x_389 : vec4<f32> = u_xlat3;
        let x_391 : vec4<f32> = u_xlat7;
        let x_393 : vec3<f32> = (vec3<f32>(x_389.x, x_389.z, x_389.w) / vec3<f32>(x_391.z, x_391.w, x_391.y));
        let x_394 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
        let x_396 : vec4<f32> = u_xlat3;
        let x_402 : vec3<f32> = (vec3<f32>(x_396.x, x_396.y, x_396.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_403 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
        let x_405 : vec4<f32> = u_xlat6;
        let x_407 : vec4<f32> = u_xlat2;
        let x_409 : vec3<f32> = (vec3<f32>(x_405.z, x_405.y, x_405.w) / vec3<f32>(x_407.x, x_407.y, x_407.z));
        let x_410 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_409.x, x_409.y, x_409.z, x_410.w);
        let x_412 : vec4<f32> = u_xlat4;
        let x_414 : vec3<f32> = (vec3<f32>(x_412.x, x_412.y, x_412.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_415 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
        let x_417 : vec4<f32> = u_xlat3;
        let x_420 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_422 : vec3<f32> = (vec3<f32>(x_417.y, x_417.x, x_417.z) * vec3<f32>(x_420.x, x_420.x, x_420.x));
        let x_423 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
        let x_425 : vec4<f32> = u_xlat4;
        let x_428 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_430 : vec3<f32> = (vec3<f32>(x_425.x, x_425.y, x_425.z) * vec3<f32>(x_428.y, x_428.y, x_428.y));
        let x_431 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
        let x_434 : f32 = u_xlat4.x;
        u_xlat3.w = x_434;
        let x_436 : vec4<f32> = u_xlat1;
        let x_439 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_442 : vec4<f32> = u_xlat3;
        u_xlat5 = ((vec4<f32>(x_436.x, x_436.y, x_436.x, x_436.y) * vec4<f32>(x_439.x, x_439.y, x_439.x, x_439.y)) + vec4<f32>(x_442.y, x_442.w, x_442.x, x_442.w));
        let x_445 : vec4<f32> = u_xlat1;
        let x_448 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_451 : vec4<f32> = u_xlat3;
        u_xlat31 = ((vec2<f32>(x_445.x, x_445.y) * vec2<f32>(x_448.x, x_448.y)) + vec2<f32>(x_451.z, x_451.w));
        let x_455 : f32 = u_xlat3.y;
        u_xlat4.w = x_455;
        let x_457 : vec4<f32> = u_xlat4;
        let x_458 : vec2<f32> = vec2<f32>(x_457.y, x_457.z);
        let x_459 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_459.x, x_458.x, x_459.z, x_458.y);
        let x_461 : vec4<f32> = u_xlat1;
        let x_464 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_467 : vec4<f32> = u_xlat3;
        u_xlat6 = ((vec4<f32>(x_461.x, x_461.y, x_461.x, x_461.y) * vec4<f32>(x_464.x, x_464.y, x_464.x, x_464.y)) + vec4<f32>(x_467.x, x_467.y, x_467.z, x_467.y));
        let x_470 : vec4<f32> = u_xlat1;
        let x_473 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_476 : vec4<f32> = u_xlat4;
        u_xlat4 = ((vec4<f32>(x_470.x, x_470.y, x_470.x, x_470.y) * vec4<f32>(x_473.x, x_473.y, x_473.x, x_473.y)) + vec4<f32>(x_476.w, x_476.y, x_476.w, x_476.z));
        let x_479 : vec4<f32> = u_xlat1;
        let x_482 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_485 : vec4<f32> = u_xlat3;
        u_xlat3 = ((vec4<f32>(x_479.x, x_479.y, x_479.x, x_479.y) * vec4<f32>(x_482.x, x_482.y, x_482.x, x_482.y)) + vec4<f32>(x_485.x, x_485.w, x_485.z, x_485.w));
        let x_489 : vec4<f32> = u_xlat2;
        let x_491 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_489.x, x_489.x, x_489.x, x_489.y) * vec4<f32>(x_491.z, x_491.w, x_491.y, x_491.z));
        let x_495 : vec4<f32> = u_xlat2;
        let x_497 : vec4<f32> = u_xlat7;
        u_xlat9 = (vec4<f32>(x_495.y, x_495.y, x_495.z, x_495.z) * x_497);
        let x_500 : f32 = u_xlat2.z;
        let x_502 : f32 = u_xlat7.y;
        u_xlat1.x = (x_500 * x_502);
        let x_506 : vec4<f32> = u_xlat5;
        let x_507 : vec2<f32> = vec2<f32>(x_506.x, x_506.y);
        let x_509 : f32 = vs_TEXCOORD4.z;
        txVec4 = vec3<f32>(x_507.x, x_507.y, x_509);
        let x_517 : vec3<f32> = txVec4;
        let x_519 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_517.xy, x_517.z);
        u_xlat16 = x_519;
        let x_521 : vec4<f32> = u_xlat5;
        let x_522 : vec2<f32> = vec2<f32>(x_521.z, x_521.w);
        let x_524 : f32 = vs_TEXCOORD4.z;
        txVec5 = vec3<f32>(x_522.x, x_522.y, x_524);
        let x_531 : vec3<f32> = txVec5;
        let x_533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_531.xy, x_531.z);
        u_xlat2.x = x_533;
        let x_536 : f32 = u_xlat2.x;
        let x_538 : f32 = u_xlat8.y;
        u_xlat2.x = (x_536 * x_538);
        let x_542 : f32 = u_xlat8.x;
        let x_543 : f32 = u_xlat16;
        let x_546 : f32 = u_xlat2.x;
        u_xlat16 = ((x_542 * x_543) + x_546);
        let x_549 : vec2<f32> = u_xlat31;
        let x_551 : f32 = vs_TEXCOORD4.z;
        txVec6 = vec3<f32>(x_549.x, x_549.y, x_551);
        let x_558 : vec3<f32> = txVec6;
        let x_560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_558.xy, x_558.z);
        u_xlat31.x = x_560;
        let x_563 : f32 = u_xlat8.z;
        let x_565 : f32 = u_xlat31.x;
        let x_567 : f32 = u_xlat16;
        u_xlat16 = ((x_563 * x_565) + x_567);
        let x_570 : vec4<f32> = u_xlat4;
        let x_571 : vec2<f32> = vec2<f32>(x_570.x, x_570.y);
        let x_573 : f32 = vs_TEXCOORD4.z;
        txVec7 = vec3<f32>(x_571.x, x_571.y, x_573);
        let x_580 : vec3<f32> = txVec7;
        let x_582 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_580.xy, x_580.z);
        u_xlat31.x = x_582;
        let x_585 : f32 = u_xlat8.w;
        let x_587 : f32 = u_xlat31.x;
        let x_589 : f32 = u_xlat16;
        u_xlat16 = ((x_585 * x_587) + x_589);
        let x_592 : vec4<f32> = u_xlat6;
        let x_593 : vec2<f32> = vec2<f32>(x_592.x, x_592.y);
        let x_595 : f32 = vs_TEXCOORD4.z;
        txVec8 = vec3<f32>(x_593.x, x_593.y, x_595);
        let x_602 : vec3<f32> = txVec8;
        let x_604 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_602.xy, x_602.z);
        u_xlat31.x = x_604;
        let x_607 : f32 = u_xlat9.x;
        let x_609 : f32 = u_xlat31.x;
        let x_611 : f32 = u_xlat16;
        u_xlat16 = ((x_607 * x_609) + x_611);
        let x_614 : vec4<f32> = u_xlat6;
        let x_615 : vec2<f32> = vec2<f32>(x_614.z, x_614.w);
        let x_617 : f32 = vs_TEXCOORD4.z;
        txVec9 = vec3<f32>(x_615.x, x_615.y, x_617);
        let x_624 : vec3<f32> = txVec9;
        let x_626 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_624.xy, x_624.z);
        u_xlat31.x = x_626;
        let x_629 : f32 = u_xlat9.y;
        let x_631 : f32 = u_xlat31.x;
        let x_633 : f32 = u_xlat16;
        u_xlat16 = ((x_629 * x_631) + x_633);
        let x_636 : vec4<f32> = u_xlat4;
        let x_637 : vec2<f32> = vec2<f32>(x_636.z, x_636.w);
        let x_639 : f32 = vs_TEXCOORD4.z;
        txVec10 = vec3<f32>(x_637.x, x_637.y, x_639);
        let x_646 : vec3<f32> = txVec10;
        let x_648 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_646.xy, x_646.z);
        u_xlat31.x = x_648;
        let x_651 : f32 = u_xlat9.z;
        let x_653 : f32 = u_xlat31.x;
        let x_655 : f32 = u_xlat16;
        u_xlat16 = ((x_651 * x_653) + x_655);
        let x_658 : vec4<f32> = u_xlat3;
        let x_659 : vec2<f32> = vec2<f32>(x_658.x, x_658.y);
        let x_661 : f32 = vs_TEXCOORD4.z;
        txVec11 = vec3<f32>(x_659.x, x_659.y, x_661);
        let x_668 : vec3<f32> = txVec11;
        let x_670 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_668.xy, x_668.z);
        u_xlat31.x = x_670;
        let x_673 : f32 = u_xlat9.w;
        let x_675 : f32 = u_xlat31.x;
        let x_677 : f32 = u_xlat16;
        u_xlat16 = ((x_673 * x_675) + x_677);
        let x_680 : vec4<f32> = u_xlat3;
        let x_681 : vec2<f32> = vec2<f32>(x_680.z, x_680.w);
        let x_683 : f32 = vs_TEXCOORD4.z;
        txVec12 = vec3<f32>(x_681.x, x_681.y, x_683);
        let x_690 : vec3<f32> = txVec12;
        let x_692 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_690.xy, x_690.z);
        u_xlat31.x = x_692;
        let x_695 : f32 = u_xlat1.x;
        let x_697 : f32 = u_xlat31.x;
        let x_699 : f32 = u_xlat16;
        u_xlat45 = ((x_695 * x_697) + x_699);
      } else {
        let x_702 : vec4<f32> = vs_TEXCOORD4;
        let x_705 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_708 : vec2<f32> = ((vec2<f32>(x_702.x, x_702.y) * vec2<f32>(x_705.z, x_705.w)) + vec2<f32>(0.5f, 0.5f));
        let x_709 : vec4<f32> = u_xlat1;
        u_xlat1 = vec4<f32>(x_708.x, x_708.y, x_709.z, x_709.w);
        let x_711 : vec4<f32> = u_xlat1;
        let x_713 : vec2<f32> = floor(vec2<f32>(x_711.x, x_711.y));
        let x_714 : vec4<f32> = u_xlat1;
        u_xlat1 = vec4<f32>(x_713.x, x_713.y, x_714.z, x_714.w);
        let x_716 : vec4<f32> = vs_TEXCOORD4;
        let x_719 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_722 : vec4<f32> = u_xlat1;
        u_xlat31 = ((vec2<f32>(x_716.x, x_716.y) * vec2<f32>(x_719.z, x_719.w)) + -(vec2<f32>(x_722.x, x_722.y)));
        let x_726 : vec2<f32> = u_xlat31;
        u_xlat2 = (vec4<f32>(x_726.x, x_726.x, x_726.y, x_726.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_729 : vec4<f32> = u_xlat2;
        let x_731 : vec4<f32> = u_xlat2;
        u_xlat3 = (vec4<f32>(x_729.x, x_729.x, x_729.z, x_729.z) * vec4<f32>(x_731.x, x_731.x, x_731.z, x_731.z));
        let x_734 : vec4<f32> = u_xlat3;
        let x_738 : vec2<f32> = (vec2<f32>(x_734.y, x_734.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_739 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_739.x, x_738.x, x_739.z, x_738.y);
        let x_741 : vec4<f32> = u_xlat3;
        let x_744 : vec2<f32> = u_xlat31;
        let x_746 : vec2<f32> = ((vec2<f32>(x_741.x, x_741.z) * vec2<f32>(0.5f, 0.5f)) + -(x_744));
        let x_747 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_746.x, x_747.y, x_746.y, x_747.w);
        let x_749 : vec2<f32> = u_xlat31;
        let x_751 : vec2<f32> = (-(x_749) + vec2<f32>(1.0f, 1.0f));
        let x_752 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_751.x, x_751.y, x_752.z, x_752.w);
        let x_754 : vec2<f32> = u_xlat31;
        u_xlat33 = min(x_754, vec2<f32>(0.0f, 0.0f));
        let x_756 : vec2<f32> = u_xlat33;
        let x_758 : vec2<f32> = u_xlat33;
        let x_760 : vec4<f32> = u_xlat3;
        let x_762 : vec2<f32> = ((-(x_756) * x_758) + vec2<f32>(x_760.x, x_760.y));
        let x_763 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_762.x, x_762.y, x_763.z, x_763.w);
        let x_765 : vec2<f32> = u_xlat31;
        u_xlat33 = max(x_765, vec2<f32>(0.0f, 0.0f));
        let x_769 : vec2<f32> = u_xlat33;
        let x_771 : vec2<f32> = u_xlat33;
        let x_773 : vec4<f32> = u_xlat2;
        let x_775 : vec2<f32> = ((-(x_769) * x_771) + vec2<f32>(x_773.y, x_773.w));
        let x_776 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_775.x, x_776.y, x_775.y);
        let x_778 : vec4<f32> = u_xlat3;
        let x_781 : vec2<f32> = (vec2<f32>(x_778.x, x_778.y) + vec2<f32>(2.0f, 2.0f));
        let x_782 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_781.x, x_781.y, x_782.z, x_782.w);
        let x_784 : vec3<f32> = u_xlat17;
        let x_786 : vec2<f32> = (vec2<f32>(x_784.x, x_784.z) + vec2<f32>(2.0f, 2.0f));
        let x_787 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_787.x, x_786.x, x_787.z, x_786.y);
        let x_790 : f32 = u_xlat2.y;
        u_xlat5.z = (x_790 * 0.08163200318813323975f);
        let x_794 : vec4<f32> = u_xlat2;
        let x_797 : vec3<f32> = (vec3<f32>(x_794.z, x_794.x, x_794.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_798 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_797.x, x_797.y, x_797.z, x_798.w);
        let x_800 : vec4<f32> = u_xlat3;
        let x_803 : vec2<f32> = (vec2<f32>(x_800.x, x_800.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_804 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_803.x, x_803.y, x_804.z, x_804.w);
        let x_807 : f32 = u_xlat6.y;
        u_xlat5.x = x_807;
        let x_809 : vec2<f32> = u_xlat31;
        let x_816 : vec2<f32> = ((vec2<f32>(x_809.x, x_809.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_817 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_817.x, x_816.x, x_817.z, x_816.y);
        let x_819 : vec2<f32> = u_xlat31;
        let x_823 : vec2<f32> = ((vec2<f32>(x_819.x, x_819.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_824 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_823.x, x_824.y, x_823.y, x_824.w);
        let x_827 : f32 = u_xlat2.x;
        u_xlat3.y = x_827;
        let x_830 : f32 = u_xlat4.y;
        u_xlat3.w = x_830;
        let x_832 : vec4<f32> = u_xlat3;
        let x_833 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_832 + x_833);
        let x_835 : vec2<f32> = u_xlat31;
        let x_838 : vec2<f32> = ((vec2<f32>(x_835.y, x_835.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_839 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_839.x, x_838.x, x_839.z, x_838.y);
        let x_841 : vec2<f32> = u_xlat31;
        let x_844 : vec2<f32> = ((vec2<f32>(x_841.y, x_841.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_845 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_844.x, x_845.y, x_844.y, x_845.w);
        let x_848 : f32 = u_xlat2.y;
        u_xlat4.y = x_848;
        let x_850 : vec4<f32> = u_xlat4;
        let x_851 : vec4<f32> = u_xlat6;
        u_xlat2 = (x_850 + x_851);
        let x_853 : vec4<f32> = u_xlat3;
        let x_854 : vec4<f32> = u_xlat5;
        u_xlat3 = (x_853 / x_854);
        let x_856 : vec4<f32> = u_xlat3;
        u_xlat3 = (x_856 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_862 : vec4<f32> = u_xlat4;
        let x_863 : vec4<f32> = u_xlat2;
        u_xlat4 = (x_862 / x_863);
        let x_865 : vec4<f32> = u_xlat4;
        u_xlat4 = (x_865 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_867 : vec4<f32> = u_xlat3;
        let x_870 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        u_xlat3 = (vec4<f32>(x_867.w, x_867.x, x_867.y, x_867.z) * vec4<f32>(x_870.x, x_870.x, x_870.x, x_870.x));
        let x_873 : vec4<f32> = u_xlat4;
        let x_876 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        u_xlat4 = (vec4<f32>(x_873.x, x_873.w, x_873.y, x_873.z) * vec4<f32>(x_876.y, x_876.y, x_876.y, x_876.y));
        let x_879 : vec4<f32> = u_xlat3;
        let x_880 : vec3<f32> = vec3<f32>(x_879.y, x_879.z, x_879.w);
        let x_881 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_880.x, x_881.y, x_880.y, x_880.z);
        let x_884 : f32 = u_xlat4.x;
        u_xlat6.y = x_884;
        let x_886 : vec4<f32> = u_xlat1;
        let x_889 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_892 : vec4<f32> = u_xlat6;
        u_xlat7 = ((vec4<f32>(x_886.x, x_886.y, x_886.x, x_886.y) * vec4<f32>(x_889.x, x_889.y, x_889.x, x_889.y)) + vec4<f32>(x_892.x, x_892.y, x_892.z, x_892.y));
        let x_895 : vec4<f32> = u_xlat1;
        let x_898 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_901 : vec4<f32> = u_xlat6;
        u_xlat31 = ((vec2<f32>(x_895.x, x_895.y) * vec2<f32>(x_898.x, x_898.y)) + vec2<f32>(x_901.w, x_901.y));
        let x_905 : f32 = u_xlat6.y;
        u_xlat3.y = x_905;
        let x_908 : f32 = u_xlat4.z;
        u_xlat6.y = x_908;
        let x_910 : vec4<f32> = u_xlat1;
        let x_913 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_916 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_910.x, x_910.y, x_910.x, x_910.y) * vec4<f32>(x_913.x, x_913.y, x_913.x, x_913.y)) + vec4<f32>(x_916.x, x_916.y, x_916.z, x_916.y));
        let x_919 : vec4<f32> = u_xlat1;
        let x_922 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_925 : vec4<f32> = u_xlat6;
        let x_927 : vec2<f32> = ((vec2<f32>(x_919.x, x_919.y) * vec2<f32>(x_922.x, x_922.y)) + vec2<f32>(x_925.w, x_925.y));
        let x_928 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_927.x, x_927.y, x_928.z, x_928.w);
        let x_931 : f32 = u_xlat6.y;
        u_xlat3.z = x_931;
        let x_934 : vec4<f32> = u_xlat1;
        let x_937 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_940 : vec4<f32> = u_xlat3;
        u_xlat10 = ((vec4<f32>(x_934.x, x_934.y, x_934.x, x_934.y) * vec4<f32>(x_937.x, x_937.y, x_937.x, x_937.y)) + vec4<f32>(x_940.x, x_940.y, x_940.x, x_940.z));
        let x_944 : f32 = u_xlat4.w;
        u_xlat6.y = x_944;
        let x_947 : vec4<f32> = u_xlat1;
        let x_950 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_953 : vec4<f32> = u_xlat6;
        u_xlat11 = ((vec4<f32>(x_947.x, x_947.y, x_947.x, x_947.y) * vec4<f32>(x_950.x, x_950.y, x_950.x, x_950.y)) + vec4<f32>(x_953.x, x_953.y, x_953.z, x_953.y));
        let x_957 : vec4<f32> = u_xlat1;
        let x_960 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_963 : vec4<f32> = u_xlat6;
        u_xlat18 = ((vec2<f32>(x_957.x, x_957.y) * vec2<f32>(x_960.x, x_960.y)) + vec2<f32>(x_963.w, x_963.y));
        let x_967 : f32 = u_xlat6.y;
        u_xlat3.w = x_967;
        let x_970 : vec4<f32> = u_xlat1;
        let x_973 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_976 : vec4<f32> = u_xlat3;
        u_xlat39 = ((vec2<f32>(x_970.x, x_970.y) * vec2<f32>(x_973.x, x_973.y)) + vec2<f32>(x_976.x, x_976.w));
        let x_979 : vec4<f32> = u_xlat6;
        let x_980 : vec3<f32> = vec3<f32>(x_979.x, x_979.z, x_979.w);
        let x_981 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_980.x, x_981.y, x_980.y, x_980.z);
        let x_983 : vec4<f32> = u_xlat1;
        let x_986 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_989 : vec4<f32> = u_xlat4;
        u_xlat6 = ((vec4<f32>(x_983.x, x_983.y, x_983.x, x_983.y) * vec4<f32>(x_986.x, x_986.y, x_986.x, x_986.y)) + vec4<f32>(x_989.x, x_989.y, x_989.z, x_989.y));
        let x_993 : vec4<f32> = u_xlat1;
        let x_996 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_999 : vec4<f32> = u_xlat4;
        u_xlat34 = ((vec2<f32>(x_993.x, x_993.y) * vec2<f32>(x_996.x, x_996.y)) + vec2<f32>(x_999.w, x_999.y));
        let x_1003 : f32 = u_xlat3.x;
        u_xlat4.x = x_1003;
        let x_1005 : vec4<f32> = u_xlat1;
        let x_1008 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_1011 : vec4<f32> = u_xlat4;
        let x_1013 : vec2<f32> = ((vec2<f32>(x_1005.x, x_1005.y) * vec2<f32>(x_1008.x, x_1008.y)) + vec2<f32>(x_1011.x, x_1011.y));
        let x_1014 : vec4<f32> = u_xlat1;
        u_xlat1 = vec4<f32>(x_1013.x, x_1013.y, x_1014.z, x_1014.w);
        let x_1017 : vec4<f32> = u_xlat2;
        let x_1019 : vec4<f32> = u_xlat5;
        u_xlat12 = (vec4<f32>(x_1017.x, x_1017.x, x_1017.x, x_1017.x) * x_1019);
        let x_1022 : vec4<f32> = u_xlat2;
        let x_1024 : vec4<f32> = u_xlat5;
        u_xlat13 = (vec4<f32>(x_1022.y, x_1022.y, x_1022.y, x_1022.y) * x_1024);
        let x_1027 : vec4<f32> = u_xlat2;
        let x_1029 : vec4<f32> = u_xlat5;
        u_xlat14 = (vec4<f32>(x_1027.z, x_1027.z, x_1027.z, x_1027.z) * x_1029);
        let x_1031 : vec4<f32> = u_xlat2;
        let x_1033 : vec4<f32> = u_xlat5;
        u_xlat2 = (vec4<f32>(x_1031.w, x_1031.w, x_1031.w, x_1031.w) * x_1033);
        let x_1036 : vec4<f32> = u_xlat7;
        let x_1037 : vec2<f32> = vec2<f32>(x_1036.x, x_1036.y);
        let x_1039 : f32 = vs_TEXCOORD4.z;
        txVec13 = vec3<f32>(x_1037.x, x_1037.y, x_1039);
        let x_1046 : vec3<f32> = txVec13;
        let x_1048 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1046.xy, x_1046.z);
        u_xlat3.x = x_1048;
        let x_1051 : vec4<f32> = u_xlat7;
        let x_1052 : vec2<f32> = vec2<f32>(x_1051.z, x_1051.w);
        let x_1054 : f32 = vs_TEXCOORD4.z;
        txVec14 = vec3<f32>(x_1052.x, x_1052.y, x_1054);
        let x_1062 : vec3<f32> = txVec14;
        let x_1064 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1062.xy, x_1062.z);
        u_xlat48 = x_1064;
        let x_1065 : f32 = u_xlat48;
        let x_1067 : f32 = u_xlat12.y;
        u_xlat48 = (x_1065 * x_1067);
        let x_1070 : f32 = u_xlat12.x;
        let x_1072 : f32 = u_xlat3.x;
        let x_1074 : f32 = u_xlat48;
        u_xlat3.x = ((x_1070 * x_1072) + x_1074);
        let x_1078 : vec2<f32> = u_xlat31;
        let x_1080 : f32 = vs_TEXCOORD4.z;
        txVec15 = vec3<f32>(x_1078.x, x_1078.y, x_1080);
        let x_1087 : vec3<f32> = txVec15;
        let x_1089 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1087.xy, x_1087.z);
        u_xlat31.x = x_1089;
        let x_1092 : f32 = u_xlat12.z;
        let x_1094 : f32 = u_xlat31.x;
        let x_1097 : f32 = u_xlat3.x;
        u_xlat31.x = ((x_1092 * x_1094) + x_1097);
        let x_1101 : vec4<f32> = u_xlat10;
        let x_1102 : vec2<f32> = vec2<f32>(x_1101.x, x_1101.y);
        let x_1104 : f32 = vs_TEXCOORD4.z;
        txVec16 = vec3<f32>(x_1102.x, x_1102.y, x_1104);
        let x_1112 : vec3<f32> = txVec16;
        let x_1114 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1112.xy, x_1112.z);
        u_xlat46 = x_1114;
        let x_1116 : f32 = u_xlat12.w;
        let x_1117 : f32 = u_xlat46;
        let x_1120 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1116 * x_1117) + x_1120);
        let x_1124 : vec4<f32> = u_xlat8;
        let x_1125 : vec2<f32> = vec2<f32>(x_1124.x, x_1124.y);
        let x_1127 : f32 = vs_TEXCOORD4.z;
        txVec17 = vec3<f32>(x_1125.x, x_1125.y, x_1127);
        let x_1134 : vec3<f32> = txVec17;
        let x_1136 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1134.xy, x_1134.z);
        u_xlat46 = x_1136;
        let x_1138 : f32 = u_xlat13.x;
        let x_1139 : f32 = u_xlat46;
        let x_1142 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1138 * x_1139) + x_1142);
        let x_1146 : vec4<f32> = u_xlat8;
        let x_1147 : vec2<f32> = vec2<f32>(x_1146.z, x_1146.w);
        let x_1149 : f32 = vs_TEXCOORD4.z;
        txVec18 = vec3<f32>(x_1147.x, x_1147.y, x_1149);
        let x_1156 : vec3<f32> = txVec18;
        let x_1158 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1156.xy, x_1156.z);
        u_xlat46 = x_1158;
        let x_1160 : f32 = u_xlat13.y;
        let x_1161 : f32 = u_xlat46;
        let x_1164 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1160 * x_1161) + x_1164);
        let x_1168 : vec4<f32> = u_xlat9;
        let x_1169 : vec2<f32> = vec2<f32>(x_1168.x, x_1168.y);
        let x_1171 : f32 = vs_TEXCOORD4.z;
        txVec19 = vec3<f32>(x_1169.x, x_1169.y, x_1171);
        let x_1178 : vec3<f32> = txVec19;
        let x_1180 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1178.xy, x_1178.z);
        u_xlat46 = x_1180;
        let x_1182 : f32 = u_xlat13.z;
        let x_1183 : f32 = u_xlat46;
        let x_1186 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1182 * x_1183) + x_1186);
        let x_1190 : vec4<f32> = u_xlat10;
        let x_1191 : vec2<f32> = vec2<f32>(x_1190.z, x_1190.w);
        let x_1193 : f32 = vs_TEXCOORD4.z;
        txVec20 = vec3<f32>(x_1191.x, x_1191.y, x_1193);
        let x_1200 : vec3<f32> = txVec20;
        let x_1202 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1200.xy, x_1200.z);
        u_xlat46 = x_1202;
        let x_1204 : f32 = u_xlat13.w;
        let x_1205 : f32 = u_xlat46;
        let x_1208 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1204 * x_1205) + x_1208);
        let x_1212 : vec4<f32> = u_xlat11;
        let x_1213 : vec2<f32> = vec2<f32>(x_1212.x, x_1212.y);
        let x_1215 : f32 = vs_TEXCOORD4.z;
        txVec21 = vec3<f32>(x_1213.x, x_1213.y, x_1215);
        let x_1222 : vec3<f32> = txVec21;
        let x_1224 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1222.xy, x_1222.z);
        u_xlat46 = x_1224;
        let x_1226 : f32 = u_xlat14.x;
        let x_1227 : f32 = u_xlat46;
        let x_1230 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1226 * x_1227) + x_1230);
        let x_1234 : vec4<f32> = u_xlat11;
        let x_1235 : vec2<f32> = vec2<f32>(x_1234.z, x_1234.w);
        let x_1237 : f32 = vs_TEXCOORD4.z;
        txVec22 = vec3<f32>(x_1235.x, x_1235.y, x_1237);
        let x_1244 : vec3<f32> = txVec22;
        let x_1246 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1244.xy, x_1244.z);
        u_xlat46 = x_1246;
        let x_1248 : f32 = u_xlat14.y;
        let x_1249 : f32 = u_xlat46;
        let x_1252 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1248 * x_1249) + x_1252);
        let x_1256 : vec2<f32> = u_xlat18;
        let x_1258 : f32 = vs_TEXCOORD4.z;
        txVec23 = vec3<f32>(x_1256.x, x_1256.y, x_1258);
        let x_1265 : vec3<f32> = txVec23;
        let x_1267 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1265.xy, x_1265.z);
        u_xlat46 = x_1267;
        let x_1269 : f32 = u_xlat14.z;
        let x_1270 : f32 = u_xlat46;
        let x_1273 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1269 * x_1270) + x_1273);
        let x_1277 : vec2<f32> = u_xlat39;
        let x_1279 : f32 = vs_TEXCOORD4.z;
        txVec24 = vec3<f32>(x_1277.x, x_1277.y, x_1279);
        let x_1286 : vec3<f32> = txVec24;
        let x_1288 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1286.xy, x_1286.z);
        u_xlat46 = x_1288;
        let x_1290 : f32 = u_xlat14.w;
        let x_1291 : f32 = u_xlat46;
        let x_1294 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1290 * x_1291) + x_1294);
        let x_1298 : vec4<f32> = u_xlat6;
        let x_1299 : vec2<f32> = vec2<f32>(x_1298.x, x_1298.y);
        let x_1301 : f32 = vs_TEXCOORD4.z;
        txVec25 = vec3<f32>(x_1299.x, x_1299.y, x_1301);
        let x_1308 : vec3<f32> = txVec25;
        let x_1310 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1308.xy, x_1308.z);
        u_xlat46 = x_1310;
        let x_1312 : f32 = u_xlat2.x;
        let x_1313 : f32 = u_xlat46;
        let x_1316 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1312 * x_1313) + x_1316);
        let x_1320 : vec4<f32> = u_xlat6;
        let x_1321 : vec2<f32> = vec2<f32>(x_1320.z, x_1320.w);
        let x_1323 : f32 = vs_TEXCOORD4.z;
        txVec26 = vec3<f32>(x_1321.x, x_1321.y, x_1323);
        let x_1330 : vec3<f32> = txVec26;
        let x_1332 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1330.xy, x_1330.z);
        u_xlat46 = x_1332;
        let x_1334 : f32 = u_xlat2.y;
        let x_1335 : f32 = u_xlat46;
        let x_1338 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1334 * x_1335) + x_1338);
        let x_1342 : vec2<f32> = u_xlat34;
        let x_1344 : f32 = vs_TEXCOORD4.z;
        txVec27 = vec3<f32>(x_1342.x, x_1342.y, x_1344);
        let x_1351 : vec3<f32> = txVec27;
        let x_1353 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1351.xy, x_1351.z);
        u_xlat46 = x_1353;
        let x_1355 : f32 = u_xlat2.z;
        let x_1356 : f32 = u_xlat46;
        let x_1359 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1355 * x_1356) + x_1359);
        let x_1363 : vec4<f32> = u_xlat1;
        let x_1364 : vec2<f32> = vec2<f32>(x_1363.x, x_1363.y);
        let x_1366 : f32 = vs_TEXCOORD4.z;
        txVec28 = vec3<f32>(x_1364.x, x_1364.y, x_1366);
        let x_1373 : vec3<f32> = txVec28;
        let x_1375 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1373.xy, x_1373.z);
        u_xlat1.x = x_1375;
        let x_1378 : f32 = u_xlat2.w;
        let x_1380 : f32 = u_xlat1.x;
        let x_1383 : f32 = u_xlat31.x;
        u_xlat45 = ((x_1378 * x_1380) + x_1383);
      }
    }
  } else {
    let x_1387 : vec4<f32> = vs_TEXCOORD4;
    let x_1388 : vec2<f32> = vec2<f32>(x_1387.x, x_1387.y);
    let x_1390 : f32 = vs_TEXCOORD4.z;
    txVec29 = vec3<f32>(x_1388.x, x_1388.y, x_1390);
    let x_1397 : vec3<f32> = txVec29;
    let x_1399 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1397.xy, x_1397.z);
    u_xlat45 = x_1399;
  }
  let x_1401 : f32 = x_124.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_1401) + 1.0f);
  let x_1405 : f32 = u_xlat45;
  let x_1407 : f32 = x_124.x_MainLightShadowParams.x;
  let x_1410 : f32 = u_xlat1.x;
  u_xlat45 = ((x_1405 * x_1407) + x_1410);
  let x_1413 : f32 = vs_TEXCOORD4.z;
  u_xlatb1 = (0.0f >= x_1413);
  let x_1417 : f32 = vs_TEXCOORD4.z;
  u_xlatb16 = (x_1417 >= 1.0f);
  let x_1419 : bool = u_xlatb16;
  let x_1420 : bool = u_xlatb1;
  u_xlatb1 = (x_1419 | x_1420);
  let x_1422 : bool = u_xlatb1;
  let x_1423 : f32 = u_xlat45;
  u_xlat45 = select(x_1423, 1.0f, x_1422);
  let x_1426 : vec4<f32> = vs_TEXCOORD3;
  let x_1428 : f32 = u_xlat45;
  let x_1431 : vec4<f32> = u_xlat0;
  let x_1433 : vec3<f32> = ((vec3<f32>(x_1426.x, x_1426.y, x_1426.z) * vec3<f32>(x_1428, x_1428, x_1428)) + vec3<f32>(x_1431.x, x_1431.y, x_1431.z));
  let x_1434 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1433.x, x_1433.y, x_1433.z, x_1434.w);
  let x_1446 : vec2<f32> = vs_TEXCOORD0;
  let x_1452 : f32 = x_1449.x_GlobalMipBias.x;
  let x_1453 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_1446, x_1452);
  let x_1454 : vec3<f32> = vec3<f32>(x_1453.x, x_1453.y, x_1453.z);
  let x_1455 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1454.x, x_1454.y, x_1454.z, x_1455.w);
  let x_1457 : vec4<f32> = u_xlat1;
  let x_1460 : vec4<f32> = vs_TEXCOORD2;
  let x_1462 : vec3<f32> = (vec3<f32>(x_1457.x, x_1457.y, x_1457.z) * vec3<f32>(x_1460.x, x_1460.y, x_1460.z));
  let x_1463 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1462.x, x_1462.y, x_1462.z, x_1463.w);
  let x_1467 : vec4<f32> = u_xlat0;
  let x_1469 : vec4<f32> = u_xlat1;
  let x_1471 : vec3<f32> = (vec3<f32>(x_1467.x, x_1467.y, x_1467.z) * vec3<f32>(x_1469.x, x_1469.y, x_1469.z));
  let x_1472 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_1471.x, x_1471.y, x_1471.z, x_1472.w);
  SV_Target0 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  SV_Target1 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
  let x_1479 : vec3<f32> = vs_TEXCOORD5;
  let x_1480 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_1479.x, x_1479.y, x_1479.z, x_1480.w);
  SV_Target2.w = 0.0f;
  SV_Target3.w = 1.0f;
  return;
}

struct main_out {
  @location(3)
  SV_Target3_1 : vec4<f32>,
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD5_param : vec3<f32>, @location(3) vs_TEXCOORD4_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target3, SV_Target0, SV_Target1, SV_Target2);
}


