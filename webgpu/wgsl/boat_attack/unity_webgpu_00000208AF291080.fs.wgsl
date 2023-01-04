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

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
}

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_27 : UnityPerDraw;

@group(1) @binding(2) var<uniform> x_124 : MainLightShadows;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(0) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(2) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_1448 : PGlobals;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlatb45 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlatb1 : bool;
  var u_xlat31 : vec2<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat33 : vec2<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat16 : f32;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat18 : vec2<f32>;
  var u_xlat39 : vec2<f32>;
  var u_xlat34 : vec2<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat48 : f32;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat46 : f32;
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
  var u_xlatb16 : bool;
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
      let x_169 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_167.xy, x_167.z);
      u_xlat2.x = x_169;
      let x_172 : vec4<f32> = u_xlat1;
      let x_173 : vec2<f32> = vec2<f32>(x_172.z, x_172.w);
      let x_175 : f32 = vs_TEXCOORD4.z;
      txVec1 = vec3<f32>(x_173.x, x_173.y, x_175);
      let x_182 : vec3<f32> = txVec1;
      let x_184 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_182.xy, x_182.z);
      u_xlat2.y = x_184;
      let x_186 : vec4<f32> = vs_TEXCOORD4;
      let x_190 : vec4<f32> = x_124.x_MainLightShadowOffset1;
      u_xlat1 = (vec4<f32>(x_186.x, x_186.y, x_186.x, x_186.y) + x_190);
      let x_193 : vec4<f32> = u_xlat1;
      let x_194 : vec2<f32> = vec2<f32>(x_193.x, x_193.y);
      let x_196 : f32 = vs_TEXCOORD4.z;
      txVec2 = vec3<f32>(x_194.x, x_194.y, x_196);
      let x_203 : vec3<f32> = txVec2;
      let x_205 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_203.xy, x_203.z);
      u_xlat2.z = x_205;
      let x_208 : vec4<f32> = u_xlat1;
      let x_209 : vec2<f32> = vec2<f32>(x_208.z, x_208.w);
      let x_211 : f32 = vs_TEXCOORD4.z;
      txVec3 = vec3<f32>(x_209.x, x_209.y, x_211);
      let x_218 : vec3<f32> = txVec3;
      let x_220 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_218.xy, x_218.z);
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
        let x_279 : vec2<f32> = (vec2<f32>(x_275.y, x_275.w) * vec2<f32>(0.079999998f, 0.079999998f));
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
        let x_332 : vec2<f32> = (vec2<f32>(x_328.x, x_328.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_333 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_332.x, x_332.y, x_333.z, x_333.w);
        let x_335 : vec2<f32> = u_xlat33;
        let x_336 : vec2<f32> = (x_335 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_337 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_336.x, x_336.y, x_337.z, x_337.w);
        let x_339 : vec4<f32> = u_xlat4;
        let x_341 : vec2<f32> = (vec2<f32>(x_339.x, x_339.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_342 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_341.x, x_341.y, x_342.z, x_342.w);
        let x_345 : vec2<f32> = u_xlat31;
        let x_346 : vec2<f32> = (x_345 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_347 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_346.x, x_346.y, x_347.z, x_347.w);
        let x_349 : vec4<f32> = u_xlat2;
        u_xlat31 = (vec2<f32>(x_349.y, x_349.w) * vec2<f32>(0.159999996f, 0.159999996f));
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
        let x_519 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_517.xy, x_517.z);
        u_xlat16 = x_519;
        let x_521 : vec4<f32> = u_xlat5;
        let x_522 : vec2<f32> = vec2<f32>(x_521.z, x_521.w);
        let x_524 : f32 = vs_TEXCOORD4.z;
        txVec5 = vec3<f32>(x_522.x, x_522.y, x_524);
        let x_531 : vec3<f32> = txVec5;
        let x_533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_531.xy, x_531.z);
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
        let x_560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_558.xy, x_558.z);
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
        let x_582 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_580.xy, x_580.z);
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
        let x_604 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_602.xy, x_602.z);
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
        let x_626 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_624.xy, x_624.z);
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
        let x_648 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_646.xy, x_646.z);
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
        let x_670 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_668.xy, x_668.z);
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
        let x_692 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_690.xy, x_690.z);
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
        let x_738 : vec2<f32> = (vec2<f32>(x_734.y, x_734.w) * vec2<f32>(0.040816002f, 0.040816002f));
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
        let x_768 : vec2<f32> = u_xlat33;
        let x_770 : vec2<f32> = u_xlat33;
        let x_772 : vec4<f32> = u_xlat2;
        let x_774 : vec2<f32> = ((-(x_768) * x_770) + vec2<f32>(x_772.y, x_772.w));
        let x_775 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_774.x, x_775.y, x_774.y);
        let x_777 : vec4<f32> = u_xlat3;
        let x_780 : vec2<f32> = (vec2<f32>(x_777.x, x_777.y) + vec2<f32>(2.0f, 2.0f));
        let x_781 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_780.x, x_780.y, x_781.z, x_781.w);
        let x_783 : vec3<f32> = u_xlat17;
        let x_785 : vec2<f32> = (vec2<f32>(x_783.x, x_783.z) + vec2<f32>(2.0f, 2.0f));
        let x_786 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_786.x, x_785.x, x_786.z, x_785.y);
        let x_789 : f32 = u_xlat2.y;
        u_xlat5.z = (x_789 * 0.081632003f);
        let x_793 : vec4<f32> = u_xlat2;
        let x_796 : vec3<f32> = (vec3<f32>(x_793.z, x_793.x, x_793.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_797 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
        let x_799 : vec4<f32> = u_xlat3;
        let x_802 : vec2<f32> = (vec2<f32>(x_799.x, x_799.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_803 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_802.x, x_802.y, x_803.z, x_803.w);
        let x_806 : f32 = u_xlat6.y;
        u_xlat5.x = x_806;
        let x_808 : vec2<f32> = u_xlat31;
        let x_815 : vec2<f32> = ((vec2<f32>(x_808.x, x_808.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_816 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_816.x, x_815.x, x_816.z, x_815.y);
        let x_818 : vec2<f32> = u_xlat31;
        let x_822 : vec2<f32> = ((vec2<f32>(x_818.x, x_818.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_823 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_822.x, x_823.y, x_822.y, x_823.w);
        let x_826 : f32 = u_xlat2.x;
        u_xlat3.y = x_826;
        let x_829 : f32 = u_xlat4.y;
        u_xlat3.w = x_829;
        let x_831 : vec4<f32> = u_xlat3;
        let x_832 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_831 + x_832);
        let x_834 : vec2<f32> = u_xlat31;
        let x_837 : vec2<f32> = ((vec2<f32>(x_834.y, x_834.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_838 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_838.x, x_837.x, x_838.z, x_837.y);
        let x_840 : vec2<f32> = u_xlat31;
        let x_843 : vec2<f32> = ((vec2<f32>(x_840.y, x_840.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_844 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_843.x, x_844.y, x_843.y, x_844.w);
        let x_847 : f32 = u_xlat2.y;
        u_xlat4.y = x_847;
        let x_849 : vec4<f32> = u_xlat4;
        let x_850 : vec4<f32> = u_xlat6;
        u_xlat2 = (x_849 + x_850);
        let x_852 : vec4<f32> = u_xlat3;
        let x_853 : vec4<f32> = u_xlat5;
        u_xlat3 = (x_852 / x_853);
        let x_855 : vec4<f32> = u_xlat3;
        u_xlat3 = (x_855 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_861 : vec4<f32> = u_xlat4;
        let x_862 : vec4<f32> = u_xlat2;
        u_xlat4 = (x_861 / x_862);
        let x_864 : vec4<f32> = u_xlat4;
        u_xlat4 = (x_864 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_866 : vec4<f32> = u_xlat3;
        let x_869 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        u_xlat3 = (vec4<f32>(x_866.w, x_866.x, x_866.y, x_866.z) * vec4<f32>(x_869.x, x_869.x, x_869.x, x_869.x));
        let x_872 : vec4<f32> = u_xlat4;
        let x_875 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        u_xlat4 = (vec4<f32>(x_872.x, x_872.w, x_872.y, x_872.z) * vec4<f32>(x_875.y, x_875.y, x_875.y, x_875.y));
        let x_878 : vec4<f32> = u_xlat3;
        let x_879 : vec3<f32> = vec3<f32>(x_878.y, x_878.z, x_878.w);
        let x_880 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_879.x, x_880.y, x_879.y, x_879.z);
        let x_883 : f32 = u_xlat4.x;
        u_xlat6.y = x_883;
        let x_885 : vec4<f32> = u_xlat1;
        let x_888 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_891 : vec4<f32> = u_xlat6;
        u_xlat7 = ((vec4<f32>(x_885.x, x_885.y, x_885.x, x_885.y) * vec4<f32>(x_888.x, x_888.y, x_888.x, x_888.y)) + vec4<f32>(x_891.x, x_891.y, x_891.z, x_891.y));
        let x_894 : vec4<f32> = u_xlat1;
        let x_897 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_900 : vec4<f32> = u_xlat6;
        u_xlat31 = ((vec2<f32>(x_894.x, x_894.y) * vec2<f32>(x_897.x, x_897.y)) + vec2<f32>(x_900.w, x_900.y));
        let x_904 : f32 = u_xlat6.y;
        u_xlat3.y = x_904;
        let x_907 : f32 = u_xlat4.z;
        u_xlat6.y = x_907;
        let x_909 : vec4<f32> = u_xlat1;
        let x_912 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_915 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_909.x, x_909.y, x_909.x, x_909.y) * vec4<f32>(x_912.x, x_912.y, x_912.x, x_912.y)) + vec4<f32>(x_915.x, x_915.y, x_915.z, x_915.y));
        let x_918 : vec4<f32> = u_xlat1;
        let x_921 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_924 : vec4<f32> = u_xlat6;
        let x_926 : vec2<f32> = ((vec2<f32>(x_918.x, x_918.y) * vec2<f32>(x_921.x, x_921.y)) + vec2<f32>(x_924.w, x_924.y));
        let x_927 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_926.x, x_926.y, x_927.z, x_927.w);
        let x_930 : f32 = u_xlat6.y;
        u_xlat3.z = x_930;
        let x_933 : vec4<f32> = u_xlat1;
        let x_936 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_939 : vec4<f32> = u_xlat3;
        u_xlat10 = ((vec4<f32>(x_933.x, x_933.y, x_933.x, x_933.y) * vec4<f32>(x_936.x, x_936.y, x_936.x, x_936.y)) + vec4<f32>(x_939.x, x_939.y, x_939.x, x_939.z));
        let x_943 : f32 = u_xlat4.w;
        u_xlat6.y = x_943;
        let x_946 : vec4<f32> = u_xlat1;
        let x_949 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_952 : vec4<f32> = u_xlat6;
        u_xlat11 = ((vec4<f32>(x_946.x, x_946.y, x_946.x, x_946.y) * vec4<f32>(x_949.x, x_949.y, x_949.x, x_949.y)) + vec4<f32>(x_952.x, x_952.y, x_952.z, x_952.y));
        let x_956 : vec4<f32> = u_xlat1;
        let x_959 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_962 : vec4<f32> = u_xlat6;
        u_xlat18 = ((vec2<f32>(x_956.x, x_956.y) * vec2<f32>(x_959.x, x_959.y)) + vec2<f32>(x_962.w, x_962.y));
        let x_966 : f32 = u_xlat6.y;
        u_xlat3.w = x_966;
        let x_969 : vec4<f32> = u_xlat1;
        let x_972 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_975 : vec4<f32> = u_xlat3;
        u_xlat39 = ((vec2<f32>(x_969.x, x_969.y) * vec2<f32>(x_972.x, x_972.y)) + vec2<f32>(x_975.x, x_975.w));
        let x_978 : vec4<f32> = u_xlat6;
        let x_979 : vec3<f32> = vec3<f32>(x_978.x, x_978.z, x_978.w);
        let x_980 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_979.x, x_980.y, x_979.y, x_979.z);
        let x_982 : vec4<f32> = u_xlat1;
        let x_985 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_988 : vec4<f32> = u_xlat4;
        u_xlat6 = ((vec4<f32>(x_982.x, x_982.y, x_982.x, x_982.y) * vec4<f32>(x_985.x, x_985.y, x_985.x, x_985.y)) + vec4<f32>(x_988.x, x_988.y, x_988.z, x_988.y));
        let x_992 : vec4<f32> = u_xlat1;
        let x_995 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_998 : vec4<f32> = u_xlat4;
        u_xlat34 = ((vec2<f32>(x_992.x, x_992.y) * vec2<f32>(x_995.x, x_995.y)) + vec2<f32>(x_998.w, x_998.y));
        let x_1002 : f32 = u_xlat3.x;
        u_xlat4.x = x_1002;
        let x_1004 : vec4<f32> = u_xlat1;
        let x_1007 : vec4<f32> = x_124.x_MainLightShadowmapSize;
        let x_1010 : vec4<f32> = u_xlat4;
        let x_1012 : vec2<f32> = ((vec2<f32>(x_1004.x, x_1004.y) * vec2<f32>(x_1007.x, x_1007.y)) + vec2<f32>(x_1010.x, x_1010.y));
        let x_1013 : vec4<f32> = u_xlat1;
        u_xlat1 = vec4<f32>(x_1012.x, x_1012.y, x_1013.z, x_1013.w);
        let x_1016 : vec4<f32> = u_xlat2;
        let x_1018 : vec4<f32> = u_xlat5;
        u_xlat12 = (vec4<f32>(x_1016.x, x_1016.x, x_1016.x, x_1016.x) * x_1018);
        let x_1021 : vec4<f32> = u_xlat2;
        let x_1023 : vec4<f32> = u_xlat5;
        u_xlat13 = (vec4<f32>(x_1021.y, x_1021.y, x_1021.y, x_1021.y) * x_1023);
        let x_1026 : vec4<f32> = u_xlat2;
        let x_1028 : vec4<f32> = u_xlat5;
        u_xlat14 = (vec4<f32>(x_1026.z, x_1026.z, x_1026.z, x_1026.z) * x_1028);
        let x_1030 : vec4<f32> = u_xlat2;
        let x_1032 : vec4<f32> = u_xlat5;
        u_xlat2 = (vec4<f32>(x_1030.w, x_1030.w, x_1030.w, x_1030.w) * x_1032);
        let x_1035 : vec4<f32> = u_xlat7;
        let x_1036 : vec2<f32> = vec2<f32>(x_1035.x, x_1035.y);
        let x_1038 : f32 = vs_TEXCOORD4.z;
        txVec13 = vec3<f32>(x_1036.x, x_1036.y, x_1038);
        let x_1045 : vec3<f32> = txVec13;
        let x_1047 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1045.xy, x_1045.z);
        u_xlat3.x = x_1047;
        let x_1050 : vec4<f32> = u_xlat7;
        let x_1051 : vec2<f32> = vec2<f32>(x_1050.z, x_1050.w);
        let x_1053 : f32 = vs_TEXCOORD4.z;
        txVec14 = vec3<f32>(x_1051.x, x_1051.y, x_1053);
        let x_1061 : vec3<f32> = txVec14;
        let x_1063 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1061.xy, x_1061.z);
        u_xlat48 = x_1063;
        let x_1064 : f32 = u_xlat48;
        let x_1066 : f32 = u_xlat12.y;
        u_xlat48 = (x_1064 * x_1066);
        let x_1069 : f32 = u_xlat12.x;
        let x_1071 : f32 = u_xlat3.x;
        let x_1073 : f32 = u_xlat48;
        u_xlat3.x = ((x_1069 * x_1071) + x_1073);
        let x_1077 : vec2<f32> = u_xlat31;
        let x_1079 : f32 = vs_TEXCOORD4.z;
        txVec15 = vec3<f32>(x_1077.x, x_1077.y, x_1079);
        let x_1086 : vec3<f32> = txVec15;
        let x_1088 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1086.xy, x_1086.z);
        u_xlat31.x = x_1088;
        let x_1091 : f32 = u_xlat12.z;
        let x_1093 : f32 = u_xlat31.x;
        let x_1096 : f32 = u_xlat3.x;
        u_xlat31.x = ((x_1091 * x_1093) + x_1096);
        let x_1100 : vec4<f32> = u_xlat10;
        let x_1101 : vec2<f32> = vec2<f32>(x_1100.x, x_1100.y);
        let x_1103 : f32 = vs_TEXCOORD4.z;
        txVec16 = vec3<f32>(x_1101.x, x_1101.y, x_1103);
        let x_1111 : vec3<f32> = txVec16;
        let x_1113 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1111.xy, x_1111.z);
        u_xlat46 = x_1113;
        let x_1115 : f32 = u_xlat12.w;
        let x_1116 : f32 = u_xlat46;
        let x_1119 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1115 * x_1116) + x_1119);
        let x_1123 : vec4<f32> = u_xlat8;
        let x_1124 : vec2<f32> = vec2<f32>(x_1123.x, x_1123.y);
        let x_1126 : f32 = vs_TEXCOORD4.z;
        txVec17 = vec3<f32>(x_1124.x, x_1124.y, x_1126);
        let x_1133 : vec3<f32> = txVec17;
        let x_1135 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1133.xy, x_1133.z);
        u_xlat46 = x_1135;
        let x_1137 : f32 = u_xlat13.x;
        let x_1138 : f32 = u_xlat46;
        let x_1141 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1137 * x_1138) + x_1141);
        let x_1145 : vec4<f32> = u_xlat8;
        let x_1146 : vec2<f32> = vec2<f32>(x_1145.z, x_1145.w);
        let x_1148 : f32 = vs_TEXCOORD4.z;
        txVec18 = vec3<f32>(x_1146.x, x_1146.y, x_1148);
        let x_1155 : vec3<f32> = txVec18;
        let x_1157 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1155.xy, x_1155.z);
        u_xlat46 = x_1157;
        let x_1159 : f32 = u_xlat13.y;
        let x_1160 : f32 = u_xlat46;
        let x_1163 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1159 * x_1160) + x_1163);
        let x_1167 : vec4<f32> = u_xlat9;
        let x_1168 : vec2<f32> = vec2<f32>(x_1167.x, x_1167.y);
        let x_1170 : f32 = vs_TEXCOORD4.z;
        txVec19 = vec3<f32>(x_1168.x, x_1168.y, x_1170);
        let x_1177 : vec3<f32> = txVec19;
        let x_1179 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1177.xy, x_1177.z);
        u_xlat46 = x_1179;
        let x_1181 : f32 = u_xlat13.z;
        let x_1182 : f32 = u_xlat46;
        let x_1185 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1181 * x_1182) + x_1185);
        let x_1189 : vec4<f32> = u_xlat10;
        let x_1190 : vec2<f32> = vec2<f32>(x_1189.z, x_1189.w);
        let x_1192 : f32 = vs_TEXCOORD4.z;
        txVec20 = vec3<f32>(x_1190.x, x_1190.y, x_1192);
        let x_1199 : vec3<f32> = txVec20;
        let x_1201 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1199.xy, x_1199.z);
        u_xlat46 = x_1201;
        let x_1203 : f32 = u_xlat13.w;
        let x_1204 : f32 = u_xlat46;
        let x_1207 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1203 * x_1204) + x_1207);
        let x_1211 : vec4<f32> = u_xlat11;
        let x_1212 : vec2<f32> = vec2<f32>(x_1211.x, x_1211.y);
        let x_1214 : f32 = vs_TEXCOORD4.z;
        txVec21 = vec3<f32>(x_1212.x, x_1212.y, x_1214);
        let x_1221 : vec3<f32> = txVec21;
        let x_1223 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1221.xy, x_1221.z);
        u_xlat46 = x_1223;
        let x_1225 : f32 = u_xlat14.x;
        let x_1226 : f32 = u_xlat46;
        let x_1229 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1225 * x_1226) + x_1229);
        let x_1233 : vec4<f32> = u_xlat11;
        let x_1234 : vec2<f32> = vec2<f32>(x_1233.z, x_1233.w);
        let x_1236 : f32 = vs_TEXCOORD4.z;
        txVec22 = vec3<f32>(x_1234.x, x_1234.y, x_1236);
        let x_1243 : vec3<f32> = txVec22;
        let x_1245 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1243.xy, x_1243.z);
        u_xlat46 = x_1245;
        let x_1247 : f32 = u_xlat14.y;
        let x_1248 : f32 = u_xlat46;
        let x_1251 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1247 * x_1248) + x_1251);
        let x_1255 : vec2<f32> = u_xlat18;
        let x_1257 : f32 = vs_TEXCOORD4.z;
        txVec23 = vec3<f32>(x_1255.x, x_1255.y, x_1257);
        let x_1264 : vec3<f32> = txVec23;
        let x_1266 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1264.xy, x_1264.z);
        u_xlat46 = x_1266;
        let x_1268 : f32 = u_xlat14.z;
        let x_1269 : f32 = u_xlat46;
        let x_1272 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1268 * x_1269) + x_1272);
        let x_1276 : vec2<f32> = u_xlat39;
        let x_1278 : f32 = vs_TEXCOORD4.z;
        txVec24 = vec3<f32>(x_1276.x, x_1276.y, x_1278);
        let x_1285 : vec3<f32> = txVec24;
        let x_1287 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1285.xy, x_1285.z);
        u_xlat46 = x_1287;
        let x_1289 : f32 = u_xlat14.w;
        let x_1290 : f32 = u_xlat46;
        let x_1293 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1289 * x_1290) + x_1293);
        let x_1297 : vec4<f32> = u_xlat6;
        let x_1298 : vec2<f32> = vec2<f32>(x_1297.x, x_1297.y);
        let x_1300 : f32 = vs_TEXCOORD4.z;
        txVec25 = vec3<f32>(x_1298.x, x_1298.y, x_1300);
        let x_1307 : vec3<f32> = txVec25;
        let x_1309 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1307.xy, x_1307.z);
        u_xlat46 = x_1309;
        let x_1311 : f32 = u_xlat2.x;
        let x_1312 : f32 = u_xlat46;
        let x_1315 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1311 * x_1312) + x_1315);
        let x_1319 : vec4<f32> = u_xlat6;
        let x_1320 : vec2<f32> = vec2<f32>(x_1319.z, x_1319.w);
        let x_1322 : f32 = vs_TEXCOORD4.z;
        txVec26 = vec3<f32>(x_1320.x, x_1320.y, x_1322);
        let x_1329 : vec3<f32> = txVec26;
        let x_1331 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1329.xy, x_1329.z);
        u_xlat46 = x_1331;
        let x_1333 : f32 = u_xlat2.y;
        let x_1334 : f32 = u_xlat46;
        let x_1337 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1333 * x_1334) + x_1337);
        let x_1341 : vec2<f32> = u_xlat34;
        let x_1343 : f32 = vs_TEXCOORD4.z;
        txVec27 = vec3<f32>(x_1341.x, x_1341.y, x_1343);
        let x_1350 : vec3<f32> = txVec27;
        let x_1352 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1350.xy, x_1350.z);
        u_xlat46 = x_1352;
        let x_1354 : f32 = u_xlat2.z;
        let x_1355 : f32 = u_xlat46;
        let x_1358 : f32 = u_xlat31.x;
        u_xlat31.x = ((x_1354 * x_1355) + x_1358);
        let x_1362 : vec4<f32> = u_xlat1;
        let x_1363 : vec2<f32> = vec2<f32>(x_1362.x, x_1362.y);
        let x_1365 : f32 = vs_TEXCOORD4.z;
        txVec28 = vec3<f32>(x_1363.x, x_1363.y, x_1365);
        let x_1372 : vec3<f32> = txVec28;
        let x_1374 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1372.xy, x_1372.z);
        u_xlat1.x = x_1374;
        let x_1377 : f32 = u_xlat2.w;
        let x_1379 : f32 = u_xlat1.x;
        let x_1382 : f32 = u_xlat31.x;
        u_xlat45 = ((x_1377 * x_1379) + x_1382);
      }
    }
  } else {
    let x_1386 : vec4<f32> = vs_TEXCOORD4;
    let x_1387 : vec2<f32> = vec2<f32>(x_1386.x, x_1386.y);
    let x_1389 : f32 = vs_TEXCOORD4.z;
    txVec29 = vec3<f32>(x_1387.x, x_1387.y, x_1389);
    let x_1396 : vec3<f32> = txVec29;
    let x_1398 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1396.xy, x_1396.z);
    u_xlat45 = x_1398;
  }
  let x_1400 : f32 = x_124.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_1400) + 1.0f);
  let x_1404 : f32 = u_xlat45;
  let x_1406 : f32 = x_124.x_MainLightShadowParams.x;
  let x_1409 : f32 = u_xlat1.x;
  u_xlat45 = ((x_1404 * x_1406) + x_1409);
  let x_1412 : f32 = vs_TEXCOORD4.z;
  u_xlatb1 = (0.0f >= x_1412);
  let x_1416 : f32 = vs_TEXCOORD4.z;
  u_xlatb16 = (x_1416 >= 1.0f);
  let x_1418 : bool = u_xlatb16;
  let x_1419 : bool = u_xlatb1;
  u_xlatb1 = (x_1418 | x_1419);
  let x_1421 : bool = u_xlatb1;
  let x_1422 : f32 = u_xlat45;
  u_xlat45 = select(x_1422, 1.0f, x_1421);
  let x_1425 : vec4<f32> = vs_TEXCOORD3;
  let x_1427 : f32 = u_xlat45;
  let x_1430 : vec4<f32> = u_xlat0;
  let x_1432 : vec3<f32> = ((vec3<f32>(x_1425.x, x_1425.y, x_1425.z) * vec3<f32>(x_1427, x_1427, x_1427)) + vec3<f32>(x_1430.x, x_1430.y, x_1430.z));
  let x_1433 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1432.x, x_1432.y, x_1432.z, x_1433.w);
  let x_1445 : vec2<f32> = vs_TEXCOORD0;
  let x_1451 : f32 = x_1448.x_GlobalMipBias.x;
  let x_1452 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_1445, x_1451);
  let x_1453 : vec3<f32> = vec3<f32>(x_1452.x, x_1452.y, x_1452.z);
  let x_1454 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1453.x, x_1453.y, x_1453.z, x_1454.w);
  let x_1456 : vec4<f32> = u_xlat1;
  let x_1459 : vec4<f32> = vs_TEXCOORD2;
  let x_1461 : vec3<f32> = (vec3<f32>(x_1456.x, x_1456.y, x_1456.z) * vec3<f32>(x_1459.x, x_1459.y, x_1459.z));
  let x_1462 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1461.x, x_1461.y, x_1461.z, x_1462.w);
  let x_1466 : vec4<f32> = u_xlat0;
  let x_1468 : vec4<f32> = u_xlat1;
  let x_1470 : vec3<f32> = (vec3<f32>(x_1466.x, x_1466.y, x_1466.z) * vec3<f32>(x_1468.x, x_1468.y, x_1468.z));
  let x_1471 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_1470.x, x_1470.y, x_1470.z, x_1471.w);
  SV_Target0 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  SV_Target1 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
  let x_1478 : vec3<f32> = vs_TEXCOORD5;
  let x_1479 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_1478.x, x_1478.y, x_1478.z, x_1479.w);
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

