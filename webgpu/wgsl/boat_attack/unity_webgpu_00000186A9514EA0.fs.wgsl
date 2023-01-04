struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ScaleBiasRt : vec4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
}

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

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_87 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_227 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1676 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat55 : f32;
  var u_xlat56 : f32;
  var u_xlatb3 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb21 : bool;
  var u_xlat21 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat40 : vec2<f32>;
  var u_xlat42 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat39 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat57 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat46 : vec2<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat23 : vec2<f32>;
  var u_xlat14 : vec2<f32>;
  var u_xlat43 : vec2<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
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
  var u_xlatb39 : bool;
  var x_1520 : f32;
  var u_xlatu55 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu58 : u32;
  var u_xlati5 : i32;
  var u_xlat58 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati58 : i32;
  var u_xlat59 : f32;
  var u_xlat18 : vec3<f32>;
  var u_xlatb18 : bool;
  var x_1826 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_49 : f32 = x_43.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_49);
  u_xlat0 = x_50;
  let x_51 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = x_55.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_51.w, x_51.x, x_51.y, x_51.z) * vec4<f32>(x_58.w, x_58.x, x_58.y, x_58.z));
  let x_64 : vec3<f32> = vs_TEXCOORD2;
  let x_65 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_64, x_65);
  let x_70 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_70);
  let x_73 : vec4<f32> = u_xlat1;
  let x_75 : vec3<f32> = vs_TEXCOORD2;
  let x_76 : vec3<f32> = (vec3<f32>(x_73.x, x_73.x, x_73.x) * x_75);
  let x_77 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_76.x, x_76.y, x_76.z, x_77.w);
  u_xlat1.w = 1.0f;
  let x_90 : vec4<f32> = x_87.unity_SHAr;
  let x_91 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_90, x_91);
  let x_96 : vec4<f32> = x_87.unity_SHAg;
  let x_97 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_96, x_97);
  let x_103 : vec4<f32> = x_87.unity_SHAb;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_103, x_104);
  let x_108 : vec4<f32> = u_xlat1;
  let x_110 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_108.y, x_108.z, x_108.z, x_108.x) * vec4<f32>(x_110.x, x_110.y, x_110.z, x_110.z));
  let x_116 : vec4<f32> = x_87.unity_SHBr;
  let x_117 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_116, x_117);
  let x_122 : vec4<f32> = x_87.unity_SHBg;
  let x_123 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_122, x_123);
  let x_128 : vec4<f32> = x_87.unity_SHBb;
  let x_129 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_128, x_129);
  let x_134 : f32 = u_xlat1.y;
  let x_136 : f32 = u_xlat1.y;
  u_xlat55 = (x_134 * x_136);
  let x_139 : f32 = u_xlat1.x;
  let x_141 : f32 = u_xlat1.x;
  let x_143 : f32 = u_xlat55;
  u_xlat55 = ((x_139 * x_141) + -(x_143));
  let x_148 : vec4<f32> = x_87.unity_SHC;
  let x_150 : f32 = u_xlat55;
  let x_153 : vec4<f32> = u_xlat4;
  let x_155 : vec3<f32> = ((vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_150, x_150, x_150)) + vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_156 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_158 : vec3<f32> = u_xlat2;
  let x_159 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_158 + vec3<f32>(x_159.x, x_159.y, x_159.z));
  let x_162 : vec3<f32> = u_xlat2;
  u_xlat2 = max(x_162, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_169 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_170 : vec2<f32> = vec2<f32>(x_169.x, x_169.y);
  let x_174 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_170.x, x_170.y));
  let x_175 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_174.x, x_174.y, x_175.z, x_175.w);
  let x_177 : vec4<f32> = u_xlat3;
  let x_179 : vec4<f32> = hlslcc_FragCoord;
  let x_181 : vec2<f32> = (vec2<f32>(x_177.x, x_177.y) * vec2<f32>(x_179.x, x_179.y));
  let x_182 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_181.x, x_181.y, x_182.z, x_182.w);
  let x_185 : f32 = u_xlat3.y;
  let x_188 : f32 = x_43.x_ScaleBiasRt.x;
  let x_191 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat55 = ((x_185 * x_188) + x_191);
  let x_193 : f32 = u_xlat55;
  u_xlat3.z = (-(x_193) + 1.0f);
  let x_202 : vec4<f32> = u_xlat3;
  let x_205 : f32 = x_43.x_GlobalMipBias.x;
  let x_206 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_202.x, x_202.z), x_205);
  u_xlat55 = x_206.x;
  let x_209 : f32 = u_xlat55;
  u_xlat56 = (x_209 + -1.0f);
  let x_214 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_215 : f32 = u_xlat56;
  u_xlat56 = ((x_214 * x_215) + 1.0f);
  let x_218 : f32 = u_xlat55;
  u_xlat55 = min(x_218, 1.0f);
  let x_230 : f32 = x_227.x_MainLightShadowParams.y;
  u_xlatb3 = (0.0f < x_230);
  let x_232 : bool = u_xlatb3;
  if (x_232) {
    let x_236 : f32 = x_227.x_MainLightShadowParams.y;
    u_xlatb3 = (x_236 == 1.0f);
    let x_238 : bool = u_xlatb3;
    if (x_238) {
      let x_242 : vec4<f32> = vs_TEXCOORD6;
      let x_246 : vec4<f32> = x_227.x_MainLightShadowOffset0;
      u_xlat3 = (vec4<f32>(x_242.x, x_242.y, x_242.x, x_242.y) + x_246);
      let x_249 : vec4<f32> = u_xlat3;
      let x_250 : vec2<f32> = vec2<f32>(x_249.x, x_249.y);
      let x_252 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_250.x, x_250.y, x_252);
      let x_264 : vec3<f32> = txVec0;
      let x_266 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_264.xy, x_264.z);
      u_xlat4.x = x_266;
      let x_269 : vec4<f32> = u_xlat3;
      let x_270 : vec2<f32> = vec2<f32>(x_269.z, x_269.w);
      let x_272 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_270.x, x_270.y, x_272);
      let x_279 : vec3<f32> = txVec1;
      let x_281 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_279.xy, x_279.z);
      u_xlat4.y = x_281;
      let x_283 : vec4<f32> = vs_TEXCOORD6;
      let x_286 : vec4<f32> = x_227.x_MainLightShadowOffset1;
      u_xlat3 = (vec4<f32>(x_283.x, x_283.y, x_283.x, x_283.y) + x_286);
      let x_289 : vec4<f32> = u_xlat3;
      let x_290 : vec2<f32> = vec2<f32>(x_289.x, x_289.y);
      let x_292 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_290.x, x_290.y, x_292);
      let x_299 : vec3<f32> = txVec2;
      let x_301 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_299.xy, x_299.z);
      u_xlat4.z = x_301;
      let x_304 : vec4<f32> = u_xlat3;
      let x_305 : vec2<f32> = vec2<f32>(x_304.z, x_304.w);
      let x_307 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_305.x, x_305.y, x_307);
      let x_314 : vec3<f32> = txVec3;
      let x_316 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_314.xy, x_314.z);
      u_xlat4.w = x_316;
      let x_318 : vec4<f32> = u_xlat4;
      u_xlat3.x = dot(x_318, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_326 : f32 = x_227.x_MainLightShadowParams.y;
      u_xlatb21 = (x_326 == 2.0f);
      let x_329 : bool = u_xlatb21;
      if (x_329) {
        let x_333 : vec4<f32> = vs_TEXCOORD6;
        let x_337 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_342 : vec2<f32> = ((vec2<f32>(x_333.x, x_333.y) * vec2<f32>(x_337.z, x_337.w)) + vec2<f32>(0.5f, 0.5f));
        let x_343 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_342.x, x_342.y, x_343.z);
        let x_345 : vec3<f32> = u_xlat21;
        let x_347 : vec2<f32> = floor(vec2<f32>(x_345.x, x_345.y));
        let x_348 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_347.x, x_347.y, x_348.z);
        let x_350 : vec4<f32> = vs_TEXCOORD6;
        let x_353 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_356 : vec3<f32> = u_xlat21;
        let x_359 : vec2<f32> = ((vec2<f32>(x_350.x, x_350.y) * vec2<f32>(x_353.z, x_353.w)) + -(vec2<f32>(x_356.x, x_356.y)));
        let x_360 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_359.x, x_359.y, x_360.z, x_360.w);
        let x_363 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_363.x, x_363.x, x_363.y, x_363.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_368 : vec4<f32> = u_xlat5;
        let x_370 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_368.x, x_368.x, x_368.z, x_368.z) * vec4<f32>(x_370.x, x_370.x, x_370.z, x_370.z));
        let x_375 : vec4<f32> = u_xlat6;
        u_xlat40 = (vec2<f32>(x_375.y, x_375.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_380 : vec4<f32> = u_xlat6;
        let x_383 : vec4<f32> = u_xlat4;
        let x_386 : vec2<f32> = ((vec2<f32>(x_380.x, x_380.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_383.x, x_383.y)));
        let x_387 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_386.x, x_387.y, x_386.y, x_387.w);
        let x_389 : vec4<f32> = u_xlat4;
        let x_392 : vec2<f32> = (-(vec2<f32>(x_389.x, x_389.y)) + vec2<f32>(1.0f, 1.0f));
        let x_393 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_392.x, x_392.y, x_393.z, x_393.w);
        let x_396 : vec4<f32> = u_xlat4;
        u_xlat42 = min(vec2<f32>(x_396.x, x_396.y), vec2<f32>(0.0f, 0.0f));
        let x_400 : vec2<f32> = u_xlat42;
        let x_402 : vec2<f32> = u_xlat42;
        let x_404 : vec4<f32> = u_xlat6;
        u_xlat42 = ((-(x_400) * x_402) + vec2<f32>(x_404.x, x_404.y));
        let x_407 : vec4<f32> = u_xlat4;
        let x_409 : vec2<f32> = max(vec2<f32>(x_407.x, x_407.y), vec2<f32>(0.0f, 0.0f));
        let x_410 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_409.x, x_409.y, x_410.z, x_410.w);
        let x_412 : vec4<f32> = u_xlat4;
        let x_415 : vec4<f32> = u_xlat4;
        let x_418 : vec4<f32> = u_xlat5;
        let x_420 : vec2<f32> = ((-(vec2<f32>(x_412.x, x_412.y)) * vec2<f32>(x_415.x, x_415.y)) + vec2<f32>(x_418.y, x_418.w));
        let x_421 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_420.x, x_420.y, x_421.z, x_421.w);
        let x_423 : vec2<f32> = u_xlat42;
        u_xlat42 = (x_423 + vec2<f32>(1.0f, 1.0f));
        let x_425 : vec4<f32> = u_xlat4;
        let x_427 : vec2<f32> = (vec2<f32>(x_425.x, x_425.y) + vec2<f32>(1.0f, 1.0f));
        let x_428 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_427.x, x_427.y, x_428.z, x_428.w);
        let x_431 : vec4<f32> = u_xlat5;
        let x_435 : vec2<f32> = (vec2<f32>(x_431.x, x_431.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_436 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_435.x, x_435.y, x_436.z, x_436.w);
        let x_439 : vec4<f32> = u_xlat6;
        let x_441 : vec2<f32> = (vec2<f32>(x_439.x, x_439.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_442 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_441.x, x_441.y, x_442.z, x_442.w);
        let x_444 : vec2<f32> = u_xlat42;
        let x_445 : vec2<f32> = (x_444 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_446 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_445.x, x_445.y, x_446.z, x_446.w);
        let x_449 : vec4<f32> = u_xlat4;
        let x_451 : vec2<f32> = (vec2<f32>(x_449.x, x_449.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_452 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_451.x, x_451.y, x_452.z, x_452.w);
        let x_454 : vec4<f32> = u_xlat5;
        let x_456 : vec2<f32> = (vec2<f32>(x_454.y, x_454.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_457 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_456.x, x_456.y, x_457.z, x_457.w);
        let x_460 : f32 = u_xlat6.x;
        u_xlat7.z = x_460;
        let x_463 : f32 = u_xlat4.x;
        u_xlat7.w = x_463;
        let x_466 : f32 = u_xlat9.x;
        u_xlat8.z = x_466;
        let x_469 : f32 = u_xlat40.x;
        u_xlat8.w = x_469;
        let x_471 : vec4<f32> = u_xlat7;
        let x_473 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_471.z, x_471.w, x_471.x, x_471.z) + vec4<f32>(x_473.z, x_473.w, x_473.x, x_473.z));
        let x_477 : f32 = u_xlat7.y;
        u_xlat6.z = x_477;
        let x_480 : f32 = u_xlat4.y;
        u_xlat6.w = x_480;
        let x_483 : f32 = u_xlat8.y;
        u_xlat9.z = x_483;
        let x_486 : f32 = u_xlat40.y;
        u_xlat9.w = x_486;
        let x_488 : vec4<f32> = u_xlat6;
        let x_490 : vec4<f32> = u_xlat9;
        let x_492 : vec3<f32> = (vec3<f32>(x_488.z, x_488.y, x_488.w) + vec3<f32>(x_490.z, x_490.y, x_490.w));
        let x_493 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
        let x_495 : vec4<f32> = u_xlat8;
        let x_497 : vec4<f32> = u_xlat5;
        let x_499 : vec3<f32> = (vec3<f32>(x_495.x, x_495.z, x_495.w) / vec3<f32>(x_497.z, x_497.w, x_497.y));
        let x_500 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
        let x_502 : vec4<f32> = u_xlat6;
        let x_508 : vec3<f32> = (vec3<f32>(x_502.x, x_502.y, x_502.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_509 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
        let x_511 : vec4<f32> = u_xlat9;
        let x_513 : vec4<f32> = u_xlat4;
        let x_515 : vec3<f32> = (vec3<f32>(x_511.z, x_511.y, x_511.w) / vec3<f32>(x_513.x, x_513.y, x_513.z));
        let x_516 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
        let x_518 : vec4<f32> = u_xlat7;
        let x_520 : vec3<f32> = (vec3<f32>(x_518.x, x_518.y, x_518.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_521 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
        let x_523 : vec4<f32> = u_xlat6;
        let x_526 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_528 : vec3<f32> = (vec3<f32>(x_523.y, x_523.x, x_523.z) * vec3<f32>(x_526.x, x_526.x, x_526.x));
        let x_529 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
        let x_531 : vec4<f32> = u_xlat7;
        let x_534 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_536 : vec3<f32> = (vec3<f32>(x_531.x, x_531.y, x_531.z) * vec3<f32>(x_534.y, x_534.y, x_534.y));
        let x_537 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
        let x_540 : f32 = u_xlat7.x;
        u_xlat6.w = x_540;
        let x_542 : vec3<f32> = u_xlat21;
        let x_545 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_548 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_542.x, x_542.y, x_542.x, x_542.y) * vec4<f32>(x_545.x, x_545.y, x_545.x, x_545.y)) + vec4<f32>(x_548.y, x_548.w, x_548.x, x_548.w));
        let x_551 : vec3<f32> = u_xlat21;
        let x_554 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_557 : vec4<f32> = u_xlat6;
        let x_559 : vec2<f32> = ((vec2<f32>(x_551.x, x_551.y) * vec2<f32>(x_554.x, x_554.y)) + vec2<f32>(x_557.z, x_557.w));
        let x_560 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_559.x, x_559.y, x_560.z, x_560.w);
        let x_563 : f32 = u_xlat6.y;
        u_xlat7.w = x_563;
        let x_565 : vec4<f32> = u_xlat7;
        let x_566 : vec2<f32> = vec2<f32>(x_565.y, x_565.z);
        let x_567 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_567.x, x_566.x, x_567.z, x_566.y);
        let x_570 : vec3<f32> = u_xlat21;
        let x_573 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_576 : vec4<f32> = u_xlat6;
        u_xlat10 = ((vec4<f32>(x_570.x, x_570.y, x_570.x, x_570.y) * vec4<f32>(x_573.x, x_573.y, x_573.x, x_573.y)) + vec4<f32>(x_576.x, x_576.y, x_576.z, x_576.y));
        let x_579 : vec3<f32> = u_xlat21;
        let x_582 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_585 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_579.x, x_579.y, x_579.x, x_579.y) * vec4<f32>(x_582.x, x_582.y, x_582.x, x_582.y)) + vec4<f32>(x_585.w, x_585.y, x_585.w, x_585.z));
        let x_588 : vec3<f32> = u_xlat21;
        let x_591 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_594 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_588.x, x_588.y, x_588.x, x_588.y) * vec4<f32>(x_591.x, x_591.y, x_591.x, x_591.y)) + vec4<f32>(x_594.x, x_594.w, x_594.z, x_594.w));
        let x_598 : vec4<f32> = u_xlat4;
        let x_600 : vec4<f32> = u_xlat5;
        u_xlat11 = (vec4<f32>(x_598.x, x_598.x, x_598.x, x_598.y) * vec4<f32>(x_600.z, x_600.w, x_600.y, x_600.z));
        let x_604 : vec4<f32> = u_xlat4;
        let x_606 : vec4<f32> = u_xlat5;
        u_xlat12 = (vec4<f32>(x_604.y, x_604.y, x_604.z, x_604.z) * x_606);
        let x_609 : f32 = u_xlat4.z;
        let x_611 : f32 = u_xlat5.y;
        u_xlat21.x = (x_609 * x_611);
        let x_615 : vec4<f32> = u_xlat8;
        let x_616 : vec2<f32> = vec2<f32>(x_615.x, x_615.y);
        let x_618 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_616.x, x_616.y, x_618);
        let x_626 : vec3<f32> = txVec4;
        let x_628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_626.xy, x_626.z);
        u_xlat39 = x_628;
        let x_630 : vec4<f32> = u_xlat8;
        let x_631 : vec2<f32> = vec2<f32>(x_630.z, x_630.w);
        let x_633 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_631.x, x_631.y, x_633);
        let x_641 : vec3<f32> = txVec5;
        let x_643 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_641.xy, x_641.z);
        u_xlat57 = x_643;
        let x_644 : f32 = u_xlat57;
        let x_646 : f32 = u_xlat11.y;
        u_xlat57 = (x_644 * x_646);
        let x_649 : f32 = u_xlat11.x;
        let x_650 : f32 = u_xlat39;
        let x_652 : f32 = u_xlat57;
        u_xlat39 = ((x_649 * x_650) + x_652);
        let x_655 : vec4<f32> = u_xlat9;
        let x_656 : vec2<f32> = vec2<f32>(x_655.x, x_655.y);
        let x_658 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_656.x, x_656.y, x_658);
        let x_665 : vec3<f32> = txVec6;
        let x_667 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_665.xy, x_665.z);
        u_xlat57 = x_667;
        let x_669 : f32 = u_xlat11.z;
        let x_670 : f32 = u_xlat57;
        let x_672 : f32 = u_xlat39;
        u_xlat39 = ((x_669 * x_670) + x_672);
        let x_675 : vec4<f32> = u_xlat7;
        let x_676 : vec2<f32> = vec2<f32>(x_675.x, x_675.y);
        let x_678 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_676.x, x_676.y, x_678);
        let x_685 : vec3<f32> = txVec7;
        let x_687 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_685.xy, x_685.z);
        u_xlat57 = x_687;
        let x_689 : f32 = u_xlat11.w;
        let x_690 : f32 = u_xlat57;
        let x_692 : f32 = u_xlat39;
        u_xlat39 = ((x_689 * x_690) + x_692);
        let x_695 : vec4<f32> = u_xlat10;
        let x_696 : vec2<f32> = vec2<f32>(x_695.x, x_695.y);
        let x_698 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_696.x, x_696.y, x_698);
        let x_705 : vec3<f32> = txVec8;
        let x_707 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_705.xy, x_705.z);
        u_xlat57 = x_707;
        let x_709 : f32 = u_xlat12.x;
        let x_710 : f32 = u_xlat57;
        let x_712 : f32 = u_xlat39;
        u_xlat39 = ((x_709 * x_710) + x_712);
        let x_715 : vec4<f32> = u_xlat10;
        let x_716 : vec2<f32> = vec2<f32>(x_715.z, x_715.w);
        let x_718 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_716.x, x_716.y, x_718);
        let x_725 : vec3<f32> = txVec9;
        let x_727 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_725.xy, x_725.z);
        u_xlat57 = x_727;
        let x_729 : f32 = u_xlat12.y;
        let x_730 : f32 = u_xlat57;
        let x_732 : f32 = u_xlat39;
        u_xlat39 = ((x_729 * x_730) + x_732);
        let x_735 : vec4<f32> = u_xlat7;
        let x_736 : vec2<f32> = vec2<f32>(x_735.z, x_735.w);
        let x_738 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_736.x, x_736.y, x_738);
        let x_745 : vec3<f32> = txVec10;
        let x_747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_745.xy, x_745.z);
        u_xlat57 = x_747;
        let x_749 : f32 = u_xlat12.z;
        let x_750 : f32 = u_xlat57;
        let x_752 : f32 = u_xlat39;
        u_xlat39 = ((x_749 * x_750) + x_752);
        let x_755 : vec4<f32> = u_xlat6;
        let x_756 : vec2<f32> = vec2<f32>(x_755.x, x_755.y);
        let x_758 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_756.x, x_756.y, x_758);
        let x_765 : vec3<f32> = txVec11;
        let x_767 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_765.xy, x_765.z);
        u_xlat57 = x_767;
        let x_769 : f32 = u_xlat12.w;
        let x_770 : f32 = u_xlat57;
        let x_772 : f32 = u_xlat39;
        u_xlat39 = ((x_769 * x_770) + x_772);
        let x_775 : vec4<f32> = u_xlat6;
        let x_776 : vec2<f32> = vec2<f32>(x_775.z, x_775.w);
        let x_778 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_776.x, x_776.y, x_778);
        let x_785 : vec3<f32> = txVec12;
        let x_787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_785.xy, x_785.z);
        u_xlat57 = x_787;
        let x_789 : f32 = u_xlat21.x;
        let x_790 : f32 = u_xlat57;
        let x_792 : f32 = u_xlat39;
        u_xlat3.x = ((x_789 * x_790) + x_792);
      } else {
        let x_796 : vec4<f32> = vs_TEXCOORD6;
        let x_799 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_802 : vec2<f32> = ((vec2<f32>(x_796.x, x_796.y) * vec2<f32>(x_799.z, x_799.w)) + vec2<f32>(0.5f, 0.5f));
        let x_803 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_802.x, x_802.y, x_803.z);
        let x_805 : vec3<f32> = u_xlat21;
        let x_807 : vec2<f32> = floor(vec2<f32>(x_805.x, x_805.y));
        let x_808 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_807.x, x_807.y, x_808.z);
        let x_810 : vec4<f32> = vs_TEXCOORD6;
        let x_813 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_816 : vec3<f32> = u_xlat21;
        let x_819 : vec2<f32> = ((vec2<f32>(x_810.x, x_810.y) * vec2<f32>(x_813.z, x_813.w)) + -(vec2<f32>(x_816.x, x_816.y)));
        let x_820 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_819.x, x_819.y, x_820.z, x_820.w);
        let x_822 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_822.x, x_822.x, x_822.y, x_822.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_825 : vec4<f32> = u_xlat5;
        let x_827 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_825.x, x_825.x, x_825.z, x_825.z) * vec4<f32>(x_827.x, x_827.x, x_827.z, x_827.z));
        let x_830 : vec4<f32> = u_xlat6;
        let x_834 : vec2<f32> = (vec2<f32>(x_830.y, x_830.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_835 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_835.x, x_834.x, x_835.z, x_834.y);
        let x_837 : vec4<f32> = u_xlat6;
        let x_840 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_837.x, x_837.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_840.x, x_840.y)));
        let x_844 : vec4<f32> = u_xlat4;
        let x_847 : vec2<f32> = (-(vec2<f32>(x_844.x, x_844.y)) + vec2<f32>(1.0f, 1.0f));
        let x_848 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_847.x, x_848.y, x_847.y, x_848.w);
        let x_850 : vec4<f32> = u_xlat4;
        let x_852 : vec2<f32> = min(vec2<f32>(x_850.x, x_850.y), vec2<f32>(0.0f, 0.0f));
        let x_853 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_852.x, x_852.y, x_853.z, x_853.w);
        let x_855 : vec4<f32> = u_xlat6;
        let x_858 : vec4<f32> = u_xlat6;
        let x_861 : vec4<f32> = u_xlat5;
        let x_863 : vec2<f32> = ((-(vec2<f32>(x_855.x, x_855.y)) * vec2<f32>(x_858.x, x_858.y)) + vec2<f32>(x_861.x, x_861.z));
        let x_864 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_863.x, x_864.y, x_863.y, x_864.w);
        let x_866 : vec4<f32> = u_xlat4;
        let x_868 : vec2<f32> = max(vec2<f32>(x_866.x, x_866.y), vec2<f32>(0.0f, 0.0f));
        let x_869 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_868.x, x_868.y, x_869.z, x_869.w);
        let x_871 : vec4<f32> = u_xlat6;
        let x_874 : vec4<f32> = u_xlat6;
        let x_877 : vec4<f32> = u_xlat5;
        let x_879 : vec2<f32> = ((-(vec2<f32>(x_871.x, x_871.y)) * vec2<f32>(x_874.x, x_874.y)) + vec2<f32>(x_877.y, x_877.w));
        let x_880 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_880.x, x_879.x, x_880.z, x_879.y);
        let x_882 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_882 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_886 : f32 = u_xlat5.y;
        u_xlat6.z = (x_886 * 0.081632003f);
        let x_890 : vec2<f32> = u_xlat40;
        let x_893 : vec2<f32> = (vec2<f32>(x_890.y, x_890.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_894 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_893.x, x_893.y, x_894.z, x_894.w);
        let x_896 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_896.x, x_896.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_900 : f32 = u_xlat5.w;
        u_xlat8.z = (x_900 * 0.081632003f);
        let x_904 : f32 = u_xlat8.y;
        u_xlat6.x = x_904;
        let x_906 : vec4<f32> = u_xlat4;
        let x_913 : vec2<f32> = ((vec2<f32>(x_906.x, x_906.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_914 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_914.x, x_913.x, x_914.z, x_913.y);
        let x_916 : vec4<f32> = u_xlat4;
        let x_920 : vec2<f32> = ((vec2<f32>(x_916.x, x_916.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_921 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_920.x, x_921.y, x_920.y, x_921.w);
        let x_924 : f32 = u_xlat40.x;
        u_xlat5.y = x_924;
        let x_927 : f32 = u_xlat7.y;
        u_xlat5.w = x_927;
        let x_929 : vec4<f32> = u_xlat5;
        let x_930 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_929 + x_930);
        let x_932 : vec4<f32> = u_xlat4;
        let x_935 : vec2<f32> = ((vec2<f32>(x_932.y, x_932.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_936 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_936.x, x_935.x, x_936.z, x_935.y);
        let x_938 : vec4<f32> = u_xlat4;
        let x_941 : vec2<f32> = ((vec2<f32>(x_938.y, x_938.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_942 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_941.x, x_942.y, x_941.y, x_942.w);
        let x_945 : f32 = u_xlat40.y;
        u_xlat7.y = x_945;
        let x_947 : vec4<f32> = u_xlat7;
        let x_948 : vec4<f32> = u_xlat8;
        u_xlat4 = (x_947 + x_948);
        let x_950 : vec4<f32> = u_xlat5;
        let x_951 : vec4<f32> = u_xlat6;
        u_xlat5 = (x_950 / x_951);
        let x_953 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_953 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_959 : vec4<f32> = u_xlat7;
        let x_960 : vec4<f32> = u_xlat4;
        u_xlat7 = (x_959 / x_960);
        let x_962 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_962 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_964 : vec4<f32> = u_xlat5;
        let x_967 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        u_xlat5 = (vec4<f32>(x_964.w, x_964.x, x_964.y, x_964.z) * vec4<f32>(x_967.x, x_967.x, x_967.x, x_967.x));
        let x_970 : vec4<f32> = u_xlat7;
        let x_973 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_970.x, x_970.w, x_970.y, x_970.z) * vec4<f32>(x_973.y, x_973.y, x_973.y, x_973.y));
        let x_976 : vec4<f32> = u_xlat5;
        let x_977 : vec3<f32> = vec3<f32>(x_976.y, x_976.z, x_976.w);
        let x_978 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_977.x, x_978.y, x_977.y, x_977.z);
        let x_981 : f32 = u_xlat7.x;
        u_xlat8.y = x_981;
        let x_983 : vec3<f32> = u_xlat21;
        let x_986 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_989 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_983.x, x_983.y, x_983.x, x_983.y) * vec4<f32>(x_986.x, x_986.y, x_986.x, x_986.y)) + vec4<f32>(x_989.x, x_989.y, x_989.z, x_989.y));
        let x_992 : vec3<f32> = u_xlat21;
        let x_995 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_998 : vec4<f32> = u_xlat8;
        let x_1000 : vec2<f32> = ((vec2<f32>(x_992.x, x_992.y) * vec2<f32>(x_995.x, x_995.y)) + vec2<f32>(x_998.w, x_998.y));
        let x_1001 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1000.x, x_1000.y, x_1001.z, x_1001.w);
        let x_1004 : f32 = u_xlat8.y;
        u_xlat5.y = x_1004;
        let x_1007 : f32 = u_xlat7.z;
        u_xlat8.y = x_1007;
        let x_1009 : vec3<f32> = u_xlat21;
        let x_1012 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_1015 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1009.x, x_1009.y, x_1009.x, x_1009.y) * vec4<f32>(x_1012.x, x_1012.y, x_1012.x, x_1012.y)) + vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1015.y));
        let x_1019 : vec3<f32> = u_xlat21;
        let x_1022 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_1025 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1019.x, x_1019.y) * vec2<f32>(x_1022.x, x_1022.y)) + vec2<f32>(x_1025.w, x_1025.y));
        let x_1029 : f32 = u_xlat8.y;
        u_xlat5.z = x_1029;
        let x_1031 : vec3<f32> = u_xlat21;
        let x_1034 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_1037 : vec4<f32> = u_xlat5;
        u_xlat12 = ((vec4<f32>(x_1031.x, x_1031.y, x_1031.x, x_1031.y) * vec4<f32>(x_1034.x, x_1034.y, x_1034.x, x_1034.y)) + vec4<f32>(x_1037.x, x_1037.y, x_1037.x, x_1037.z));
        let x_1041 : f32 = u_xlat7.w;
        u_xlat8.y = x_1041;
        let x_1044 : vec3<f32> = u_xlat21;
        let x_1047 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_1050 : vec4<f32> = u_xlat8;
        u_xlat13 = ((vec4<f32>(x_1044.x, x_1044.y, x_1044.x, x_1044.y) * vec4<f32>(x_1047.x, x_1047.y, x_1047.x, x_1047.y)) + vec4<f32>(x_1050.x, x_1050.y, x_1050.z, x_1050.y));
        let x_1054 : vec3<f32> = u_xlat21;
        let x_1057 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_1060 : vec4<f32> = u_xlat8;
        u_xlat23 = ((vec2<f32>(x_1054.x, x_1054.y) * vec2<f32>(x_1057.x, x_1057.y)) + vec2<f32>(x_1060.w, x_1060.y));
        let x_1064 : f32 = u_xlat8.y;
        u_xlat5.w = x_1064;
        let x_1067 : vec3<f32> = u_xlat21;
        let x_1070 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_1073 : vec4<f32> = u_xlat5;
        u_xlat14 = ((vec2<f32>(x_1067.x, x_1067.y) * vec2<f32>(x_1070.x, x_1070.y)) + vec2<f32>(x_1073.x, x_1073.w));
        let x_1076 : vec4<f32> = u_xlat8;
        let x_1077 : vec3<f32> = vec3<f32>(x_1076.x, x_1076.z, x_1076.w);
        let x_1078 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1077.x, x_1078.y, x_1077.y, x_1077.z);
        let x_1080 : vec3<f32> = u_xlat21;
        let x_1083 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_1086 : vec4<f32> = u_xlat7;
        u_xlat8 = ((vec4<f32>(x_1080.x, x_1080.y, x_1080.x, x_1080.y) * vec4<f32>(x_1083.x, x_1083.y, x_1083.x, x_1083.y)) + vec4<f32>(x_1086.x, x_1086.y, x_1086.z, x_1086.y));
        let x_1090 : vec3<f32> = u_xlat21;
        let x_1093 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_1096 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1090.x, x_1090.y) * vec2<f32>(x_1093.x, x_1093.y)) + vec2<f32>(x_1096.w, x_1096.y));
        let x_1100 : f32 = u_xlat5.x;
        u_xlat7.x = x_1100;
        let x_1102 : vec3<f32> = u_xlat21;
        let x_1105 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_1108 : vec4<f32> = u_xlat7;
        let x_1110 : vec2<f32> = ((vec2<f32>(x_1102.x, x_1102.y) * vec2<f32>(x_1105.x, x_1105.y)) + vec2<f32>(x_1108.x, x_1108.y));
        let x_1111 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_1110.x, x_1110.y, x_1111.z);
        let x_1114 : vec4<f32> = u_xlat4;
        let x_1116 : vec4<f32> = u_xlat6;
        u_xlat15 = (vec4<f32>(x_1114.x, x_1114.x, x_1114.x, x_1114.x) * x_1116);
        let x_1119 : vec4<f32> = u_xlat4;
        let x_1121 : vec4<f32> = u_xlat6;
        u_xlat16 = (vec4<f32>(x_1119.y, x_1119.y, x_1119.y, x_1119.y) * x_1121);
        let x_1124 : vec4<f32> = u_xlat4;
        let x_1126 : vec4<f32> = u_xlat6;
        u_xlat17 = (vec4<f32>(x_1124.z, x_1124.z, x_1124.z, x_1124.z) * x_1126);
        let x_1128 : vec4<f32> = u_xlat4;
        let x_1130 : vec4<f32> = u_xlat6;
        u_xlat4 = (vec4<f32>(x_1128.w, x_1128.w, x_1128.w, x_1128.w) * x_1130);
        let x_1133 : vec4<f32> = u_xlat9;
        let x_1134 : vec2<f32> = vec2<f32>(x_1133.x, x_1133.y);
        let x_1136 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1134.x, x_1134.y, x_1136);
        let x_1143 : vec3<f32> = txVec13;
        let x_1145 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1143.xy, x_1143.z);
        u_xlat57 = x_1145;
        let x_1147 : vec4<f32> = u_xlat9;
        let x_1148 : vec2<f32> = vec2<f32>(x_1147.z, x_1147.w);
        let x_1150 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1148.x, x_1148.y, x_1150);
        let x_1157 : vec3<f32> = txVec14;
        let x_1159 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1157.xy, x_1157.z);
        u_xlat5.x = x_1159;
        let x_1162 : f32 = u_xlat5.x;
        let x_1164 : f32 = u_xlat15.y;
        u_xlat5.x = (x_1162 * x_1164);
        let x_1168 : f32 = u_xlat15.x;
        let x_1169 : f32 = u_xlat57;
        let x_1172 : f32 = u_xlat5.x;
        u_xlat57 = ((x_1168 * x_1169) + x_1172);
        let x_1175 : vec4<f32> = u_xlat10;
        let x_1176 : vec2<f32> = vec2<f32>(x_1175.x, x_1175.y);
        let x_1178 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1176.x, x_1176.y, x_1178);
        let x_1185 : vec3<f32> = txVec15;
        let x_1187 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1185.xy, x_1185.z);
        u_xlat5.x = x_1187;
        let x_1190 : f32 = u_xlat15.z;
        let x_1192 : f32 = u_xlat5.x;
        let x_1194 : f32 = u_xlat57;
        u_xlat57 = ((x_1190 * x_1192) + x_1194);
        let x_1197 : vec4<f32> = u_xlat12;
        let x_1198 : vec2<f32> = vec2<f32>(x_1197.x, x_1197.y);
        let x_1200 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1198.x, x_1198.y, x_1200);
        let x_1207 : vec3<f32> = txVec16;
        let x_1209 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1207.xy, x_1207.z);
        u_xlat5.x = x_1209;
        let x_1212 : f32 = u_xlat15.w;
        let x_1214 : f32 = u_xlat5.x;
        let x_1216 : f32 = u_xlat57;
        u_xlat57 = ((x_1212 * x_1214) + x_1216);
        let x_1219 : vec4<f32> = u_xlat11;
        let x_1220 : vec2<f32> = vec2<f32>(x_1219.x, x_1219.y);
        let x_1222 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1220.x, x_1220.y, x_1222);
        let x_1229 : vec3<f32> = txVec17;
        let x_1231 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1229.xy, x_1229.z);
        u_xlat5.x = x_1231;
        let x_1234 : f32 = u_xlat16.x;
        let x_1236 : f32 = u_xlat5.x;
        let x_1238 : f32 = u_xlat57;
        u_xlat57 = ((x_1234 * x_1236) + x_1238);
        let x_1241 : vec4<f32> = u_xlat11;
        let x_1242 : vec2<f32> = vec2<f32>(x_1241.z, x_1241.w);
        let x_1244 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1242.x, x_1242.y, x_1244);
        let x_1251 : vec3<f32> = txVec18;
        let x_1253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1251.xy, x_1251.z);
        u_xlat5.x = x_1253;
        let x_1256 : f32 = u_xlat16.y;
        let x_1258 : f32 = u_xlat5.x;
        let x_1260 : f32 = u_xlat57;
        u_xlat57 = ((x_1256 * x_1258) + x_1260);
        let x_1263 : vec2<f32> = u_xlat46;
        let x_1265 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1263.x, x_1263.y, x_1265);
        let x_1272 : vec3<f32> = txVec19;
        let x_1274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1272.xy, x_1272.z);
        u_xlat5.x = x_1274;
        let x_1277 : f32 = u_xlat16.z;
        let x_1279 : f32 = u_xlat5.x;
        let x_1281 : f32 = u_xlat57;
        u_xlat57 = ((x_1277 * x_1279) + x_1281);
        let x_1284 : vec4<f32> = u_xlat12;
        let x_1285 : vec2<f32> = vec2<f32>(x_1284.z, x_1284.w);
        let x_1287 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1285.x, x_1285.y, x_1287);
        let x_1294 : vec3<f32> = txVec20;
        let x_1296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1294.xy, x_1294.z);
        u_xlat5.x = x_1296;
        let x_1299 : f32 = u_xlat16.w;
        let x_1301 : f32 = u_xlat5.x;
        let x_1303 : f32 = u_xlat57;
        u_xlat57 = ((x_1299 * x_1301) + x_1303);
        let x_1306 : vec4<f32> = u_xlat13;
        let x_1307 : vec2<f32> = vec2<f32>(x_1306.x, x_1306.y);
        let x_1309 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1307.x, x_1307.y, x_1309);
        let x_1316 : vec3<f32> = txVec21;
        let x_1318 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1316.xy, x_1316.z);
        u_xlat5.x = x_1318;
        let x_1321 : f32 = u_xlat17.x;
        let x_1323 : f32 = u_xlat5.x;
        let x_1325 : f32 = u_xlat57;
        u_xlat57 = ((x_1321 * x_1323) + x_1325);
        let x_1328 : vec4<f32> = u_xlat13;
        let x_1329 : vec2<f32> = vec2<f32>(x_1328.z, x_1328.w);
        let x_1331 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1329.x, x_1329.y, x_1331);
        let x_1338 : vec3<f32> = txVec22;
        let x_1340 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1338.xy, x_1338.z);
        u_xlat5.x = x_1340;
        let x_1343 : f32 = u_xlat17.y;
        let x_1345 : f32 = u_xlat5.x;
        let x_1347 : f32 = u_xlat57;
        u_xlat57 = ((x_1343 * x_1345) + x_1347);
        let x_1350 : vec2<f32> = u_xlat23;
        let x_1352 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1350.x, x_1350.y, x_1352);
        let x_1359 : vec3<f32> = txVec23;
        let x_1361 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1359.xy, x_1359.z);
        u_xlat5.x = x_1361;
        let x_1364 : f32 = u_xlat17.z;
        let x_1366 : f32 = u_xlat5.x;
        let x_1368 : f32 = u_xlat57;
        u_xlat57 = ((x_1364 * x_1366) + x_1368);
        let x_1371 : vec2<f32> = u_xlat14;
        let x_1373 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1371.x, x_1371.y, x_1373);
        let x_1380 : vec3<f32> = txVec24;
        let x_1382 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1380.xy, x_1380.z);
        u_xlat5.x = x_1382;
        let x_1385 : f32 = u_xlat17.w;
        let x_1387 : f32 = u_xlat5.x;
        let x_1389 : f32 = u_xlat57;
        u_xlat57 = ((x_1385 * x_1387) + x_1389);
        let x_1392 : vec4<f32> = u_xlat8;
        let x_1393 : vec2<f32> = vec2<f32>(x_1392.x, x_1392.y);
        let x_1395 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1393.x, x_1393.y, x_1395);
        let x_1402 : vec3<f32> = txVec25;
        let x_1404 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1402.xy, x_1402.z);
        u_xlat5.x = x_1404;
        let x_1407 : f32 = u_xlat4.x;
        let x_1409 : f32 = u_xlat5.x;
        let x_1411 : f32 = u_xlat57;
        u_xlat57 = ((x_1407 * x_1409) + x_1411);
        let x_1414 : vec4<f32> = u_xlat8;
        let x_1415 : vec2<f32> = vec2<f32>(x_1414.z, x_1414.w);
        let x_1417 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1415.x, x_1415.y, x_1417);
        let x_1424 : vec3<f32> = txVec26;
        let x_1426 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1424.xy, x_1424.z);
        u_xlat4.x = x_1426;
        let x_1429 : f32 = u_xlat4.y;
        let x_1431 : f32 = u_xlat4.x;
        let x_1433 : f32 = u_xlat57;
        u_xlat57 = ((x_1429 * x_1431) + x_1433);
        let x_1436 : vec2<f32> = u_xlat43;
        let x_1438 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1436.x, x_1436.y, x_1438);
        let x_1445 : vec3<f32> = txVec27;
        let x_1447 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1445.xy, x_1445.z);
        u_xlat4.x = x_1447;
        let x_1450 : f32 = u_xlat4.z;
        let x_1452 : f32 = u_xlat4.x;
        let x_1454 : f32 = u_xlat57;
        u_xlat57 = ((x_1450 * x_1452) + x_1454);
        let x_1457 : vec3<f32> = u_xlat21;
        let x_1458 : vec2<f32> = vec2<f32>(x_1457.x, x_1457.y);
        let x_1460 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1458.x, x_1458.y, x_1460);
        let x_1467 : vec3<f32> = txVec28;
        let x_1469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1467.xy, x_1467.z);
        u_xlat21.x = x_1469;
        let x_1472 : f32 = u_xlat4.w;
        let x_1474 : f32 = u_xlat21.x;
        let x_1476 : f32 = u_xlat57;
        u_xlat3.x = ((x_1472 * x_1474) + x_1476);
      }
    }
  } else {
    let x_1481 : vec4<f32> = vs_TEXCOORD6;
    let x_1482 : vec2<f32> = vec2<f32>(x_1481.x, x_1481.y);
    let x_1484 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1482.x, x_1482.y, x_1484);
    let x_1491 : vec3<f32> = txVec29;
    let x_1493 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1491.xy, x_1491.z);
    u_xlat3.x = x_1493;
  }
  let x_1496 : f32 = x_227.x_MainLightShadowParams.x;
  u_xlat21.x = (-(x_1496) + 1.0f);
  let x_1501 : f32 = u_xlat3.x;
  let x_1503 : f32 = x_227.x_MainLightShadowParams.x;
  let x_1506 : f32 = u_xlat21.x;
  u_xlat3.x = ((x_1501 * x_1503) + x_1506);
  let x_1510 : f32 = vs_TEXCOORD6.z;
  u_xlatb21 = (0.0f >= x_1510);
  let x_1514 : f32 = vs_TEXCOORD6.z;
  u_xlatb39 = (x_1514 >= 1.0f);
  let x_1516 : bool = u_xlatb39;
  let x_1517 : bool = u_xlatb21;
  u_xlatb21 = (x_1516 | x_1517);
  let x_1519 : bool = u_xlatb21;
  if (x_1519) {
    x_1520 = 1.0f;
  } else {
    let x_1525 : f32 = u_xlat3.x;
    x_1520 = x_1525;
  }
  let x_1526 : f32 = x_1520;
  u_xlat3.x = x_1526;
  let x_1529 : vec3<f32> = vs_TEXCOORD1;
  let x_1532 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat21 = (x_1529 + -(x_1532));
  let x_1535 : vec3<f32> = u_xlat21;
  let x_1536 : vec3<f32> = u_xlat21;
  u_xlat21.x = dot(x_1535, x_1536);
  let x_1540 : f32 = u_xlat21.x;
  let x_1542 : f32 = x_227.x_MainLightShadowParams.z;
  let x_1545 : f32 = x_227.x_MainLightShadowParams.w;
  u_xlat21.x = ((x_1540 * x_1542) + x_1545);
  let x_1549 : f32 = u_xlat21.x;
  u_xlat21.x = clamp(x_1549, 0.0f, 1.0f);
  let x_1553 : f32 = u_xlat3.x;
  u_xlat39 = (-(x_1553) + 1.0f);
  let x_1557 : f32 = u_xlat21.x;
  let x_1558 : f32 = u_xlat39;
  let x_1561 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1557 * x_1558) + x_1561);
  let x_1564 : f32 = u_xlat56;
  let x_1568 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat21 = (vec3<f32>(x_1564, x_1564, x_1564) * vec3<f32>(x_1568.x, x_1568.y, x_1568.z));
  let x_1571 : f32 = u_xlat55;
  let x_1573 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1571, x_1571, x_1571) * x_1573);
  let x_1576 : f32 = u_xlat3.x;
  let x_1579 : f32 = x_87.unity_LightData.z;
  u_xlat55 = (x_1576 * x_1579);
  let x_1581 : f32 = u_xlat55;
  let x_1583 : vec3<f32> = u_xlat21;
  let x_1584 : vec3<f32> = (vec3<f32>(x_1581, x_1581, x_1581) * x_1583);
  let x_1585 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1584.x, x_1584.y, x_1584.z, x_1585.w);
  let x_1587 : vec4<f32> = u_xlat1;
  let x_1591 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat55 = dot(vec3<f32>(x_1587.x, x_1587.y, x_1587.z), vec3<f32>(x_1591.x, x_1591.y, x_1591.z));
  let x_1594 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1594, 0.0f, 1.0f);
  let x_1596 : f32 = u_xlat55;
  let x_1598 : vec4<f32> = u_xlat3;
  let x_1600 : vec3<f32> = (vec3<f32>(x_1596, x_1596, x_1596) * vec3<f32>(x_1598.x, x_1598.y, x_1598.z));
  let x_1601 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1600.x, x_1600.y, x_1600.z, x_1601.w);
  let x_1603 : vec4<f32> = u_xlat0;
  let x_1605 : vec4<f32> = u_xlat3;
  let x_1607 : vec3<f32> = (vec3<f32>(x_1603.y, x_1603.z, x_1603.w) * vec3<f32>(x_1605.x, x_1605.y, x_1605.z));
  let x_1608 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1607.x, x_1607.y, x_1607.z, x_1608.w);
  let x_1611 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1613 : f32 = x_87.unity_LightData.y;
  u_xlat55 = min(x_1611, x_1613);
  let x_1617 : f32 = u_xlat55;
  u_xlatu55 = bitcast<u32>(i32(x_1617));
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1629 : u32 = u_xlatu_loop_1;
    let x_1630 : u32 = u_xlatu55;
    if ((x_1629 < x_1630)) {
    } else {
      break;
    }
    let x_1633 : u32 = u_xlatu_loop_1;
    u_xlatu58 = (x_1633 >> 2u);
    let x_1637 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_1637 & 3u));
    let x_1641 : u32 = u_xlatu58;
    let x_1644 : vec4<f32> = x_87.unity_LightIndices[bitcast<i32>(x_1641)];
    let x_1654 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1659 : vec4<u32> = indexable[x_1654];
    u_xlat58 = dot(x_1644, bitcast<vec4<f32>>(x_1659));
    let x_1663 : f32 = u_xlat58;
    u_xlati58 = i32(x_1663);
    let x_1665 : vec3<f32> = vs_TEXCOORD1;
    let x_1677 : i32 = u_xlati58;
    let x_1679 : vec4<f32> = x_1676.x_AdditionalLightsPosition[x_1677];
    let x_1682 : i32 = u_xlati58;
    let x_1684 : vec4<f32> = x_1676.x_AdditionalLightsPosition[x_1682];
    let x_1686 : vec3<f32> = ((-(x_1665) * vec3<f32>(x_1679.w, x_1679.w, x_1679.w)) + vec3<f32>(x_1684.x, x_1684.y, x_1684.z));
    let x_1687 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1686.x, x_1686.y, x_1686.z, x_1687.w);
    let x_1690 : vec4<f32> = u_xlat5;
    let x_1692 : vec4<f32> = u_xlat5;
    u_xlat59 = dot(vec3<f32>(x_1690.x, x_1690.y, x_1690.z), vec3<f32>(x_1692.x, x_1692.y, x_1692.z));
    let x_1695 : f32 = u_xlat59;
    u_xlat59 = max(x_1695, 6.10351562e-05f);
    let x_1698 : f32 = u_xlat59;
    u_xlat6.x = inverseSqrt(x_1698);
    let x_1701 : vec4<f32> = u_xlat5;
    let x_1703 : vec4<f32> = u_xlat6;
    let x_1705 : vec3<f32> = (vec3<f32>(x_1701.x, x_1701.y, x_1701.z) * vec3<f32>(x_1703.x, x_1703.x, x_1703.x));
    let x_1706 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1705.x, x_1705.y, x_1705.z, x_1706.w);
    let x_1708 : f32 = u_xlat59;
    u_xlat6.x = (1.0f / x_1708);
    let x_1711 : f32 = u_xlat59;
    let x_1712 : i32 = u_xlati58;
    let x_1714 : f32 = x_1676.x_AdditionalLightsAttenuation[x_1712].x;
    u_xlat59 = (x_1711 * x_1714);
    let x_1716 : f32 = u_xlat59;
    let x_1718 : f32 = u_xlat59;
    u_xlat59 = ((-(x_1716) * x_1718) + 1.0f);
    let x_1721 : f32 = u_xlat59;
    u_xlat59 = max(x_1721, 0.0f);
    let x_1723 : f32 = u_xlat59;
    let x_1724 : f32 = u_xlat59;
    u_xlat59 = (x_1723 * x_1724);
    let x_1726 : f32 = u_xlat59;
    let x_1728 : f32 = u_xlat6.x;
    u_xlat59 = (x_1726 * x_1728);
    let x_1730 : i32 = u_xlati58;
    let x_1732 : vec4<f32> = x_1676.x_AdditionalLightsSpotDir[x_1730];
    let x_1734 : vec4<f32> = u_xlat5;
    u_xlat6.x = dot(vec3<f32>(x_1732.x, x_1732.y, x_1732.z), vec3<f32>(x_1734.x, x_1734.y, x_1734.z));
    let x_1739 : f32 = u_xlat6.x;
    let x_1740 : i32 = u_xlati58;
    let x_1742 : f32 = x_1676.x_AdditionalLightsAttenuation[x_1740].z;
    let x_1744 : i32 = u_xlati58;
    let x_1746 : f32 = x_1676.x_AdditionalLightsAttenuation[x_1744].w;
    u_xlat6.x = ((x_1739 * x_1742) + x_1746);
    let x_1750 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1750, 0.0f, 1.0f);
    let x_1754 : f32 = u_xlat6.x;
    let x_1756 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1754 * x_1756);
    let x_1759 : f32 = u_xlat59;
    let x_1761 : f32 = u_xlat6.x;
    u_xlat59 = (x_1759 * x_1761);
    let x_1763 : f32 = u_xlat56;
    let x_1765 : i32 = u_xlati58;
    let x_1767 : vec4<f32> = x_1676.x_AdditionalLightsColor[x_1765];
    let x_1769 : vec3<f32> = (vec3<f32>(x_1763, x_1763, x_1763) * vec3<f32>(x_1767.x, x_1767.y, x_1767.z));
    let x_1770 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1769.x, x_1769.y, x_1769.z, x_1770.w);
    let x_1772 : f32 = u_xlat59;
    let x_1774 : vec4<f32> = u_xlat6;
    let x_1776 : vec3<f32> = (vec3<f32>(x_1772, x_1772, x_1772) * vec3<f32>(x_1774.x, x_1774.y, x_1774.z));
    let x_1777 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1776.x, x_1776.y, x_1776.z, x_1777.w);
    let x_1779 : vec4<f32> = u_xlat1;
    let x_1781 : vec4<f32> = u_xlat5;
    u_xlat58 = dot(vec3<f32>(x_1779.x, x_1779.y, x_1779.z), vec3<f32>(x_1781.x, x_1781.y, x_1781.z));
    let x_1784 : f32 = u_xlat58;
    u_xlat58 = clamp(x_1784, 0.0f, 1.0f);
    let x_1786 : f32 = u_xlat58;
    let x_1788 : vec4<f32> = u_xlat6;
    let x_1790 : vec3<f32> = (vec3<f32>(x_1786, x_1786, x_1786) * vec3<f32>(x_1788.x, x_1788.y, x_1788.z));
    let x_1791 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1790.x, x_1790.y, x_1790.z, x_1791.w);
    let x_1793 : vec4<f32> = u_xlat5;
    let x_1795 : vec4<f32> = u_xlat0;
    let x_1798 : vec4<f32> = u_xlat4;
    let x_1800 : vec3<f32> = ((vec3<f32>(x_1793.x, x_1793.y, x_1793.z) * vec3<f32>(x_1795.y, x_1795.z, x_1795.w)) + vec3<f32>(x_1798.x, x_1798.y, x_1798.z));
    let x_1801 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1800.x, x_1800.y, x_1800.z, x_1801.w);

    continuing {
      let x_1803 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1803 + bitcast<u32>(1i));
    }
  }
  let x_1806 : vec3<f32> = u_xlat2;
  let x_1807 : vec4<f32> = u_xlat0;
  let x_1810 : vec4<f32> = u_xlat3;
  u_xlat18 = ((x_1806 * vec3<f32>(x_1807.y, x_1807.z, x_1807.w)) + vec3<f32>(x_1810.x, x_1810.y, x_1810.z));
  let x_1815 : vec4<f32> = u_xlat4;
  let x_1817 : vec3<f32> = u_xlat18;
  let x_1818 : vec3<f32> = (vec3<f32>(x_1815.x, x_1815.y, x_1815.z) + x_1817);
  let x_1819 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1818.x, x_1818.y, x_1818.z, x_1819.w);
  let x_1823 : f32 = x_55.x_Surface;
  u_xlatb18 = (x_1823 == 1.0f);
  let x_1825 : bool = u_xlatb18;
  if (x_1825) {
    let x_1830 : f32 = u_xlat0.x;
    x_1826 = x_1830;
  } else {
    x_1826 = 1.0f;
  }
  let x_1832 : f32 = x_1826;
  SV_Target0.w = x_1832;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

