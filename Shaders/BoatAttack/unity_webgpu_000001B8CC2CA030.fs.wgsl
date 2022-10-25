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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_87 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_227 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_1576 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_1816 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1926 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlatb21 : vec2<bool>;
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
  var x_1528 : f32;
  var x_1661 : f32;
  var x_1672 : vec3<f32>;
  var u_xlatu55 : u32;
  var u_xlatb4 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu40 : u32;
  var u_xlati58 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat58 : f32;
  var u_xlat59 : f32;
  var u_xlatu59 : u32;
  var u_xlati60 : i32;
  var u_xlati59 : i32;
  var u_xlati7 : i32;
  var u_xlat25 : vec3<f32>;
  var u_xlatb59 : bool;
  var u_xlatb7 : vec4<bool>;
  var x_2229 : f32;
  var x_2242 : f32;
  var x_2304 : f32;
  var x_2315 : vec3<f32>;
  var u_xlat18 : vec3<f32>;
  var u_xlatb18 : bool;
  var x_2404 : f32;
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
      let x_328 : f32 = x_227.x_MainLightShadowParams.y;
      u_xlatb21.x = (x_328 == 2.0f);
      let x_333 : bool = u_xlatb21.x;
      if (x_333) {
        let x_337 : vec4<f32> = vs_TEXCOORD6;
        let x_341 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_346 : vec2<f32> = ((vec2<f32>(x_337.x, x_337.y) * vec2<f32>(x_341.z, x_341.w)) + vec2<f32>(0.5f, 0.5f));
        let x_347 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_346.x, x_346.y, x_347.z);
        let x_349 : vec3<f32> = u_xlat21;
        let x_351 : vec2<f32> = floor(vec2<f32>(x_349.x, x_349.y));
        let x_352 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_351.x, x_351.y, x_352.z);
        let x_354 : vec4<f32> = vs_TEXCOORD6;
        let x_357 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_360 : vec3<f32> = u_xlat21;
        let x_363 : vec2<f32> = ((vec2<f32>(x_354.x, x_354.y) * vec2<f32>(x_357.z, x_357.w)) + -(vec2<f32>(x_360.x, x_360.y)));
        let x_364 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_363.x, x_363.y, x_364.z, x_364.w);
        let x_367 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_367.x, x_367.x, x_367.y, x_367.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_372 : vec4<f32> = u_xlat5;
        let x_374 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_372.x, x_372.x, x_372.z, x_372.z) * vec4<f32>(x_374.x, x_374.x, x_374.z, x_374.z));
        let x_379 : vec4<f32> = u_xlat6;
        u_xlat40 = (vec2<f32>(x_379.y, x_379.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_384 : vec4<f32> = u_xlat6;
        let x_387 : vec4<f32> = u_xlat4;
        let x_390 : vec2<f32> = ((vec2<f32>(x_384.x, x_384.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_387.x, x_387.y)));
        let x_391 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_390.x, x_391.y, x_390.y, x_391.w);
        let x_393 : vec4<f32> = u_xlat4;
        let x_396 : vec2<f32> = (-(vec2<f32>(x_393.x, x_393.y)) + vec2<f32>(1.0f, 1.0f));
        let x_397 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_396.x, x_396.y, x_397.z, x_397.w);
        let x_400 : vec4<f32> = u_xlat4;
        u_xlat42 = min(vec2<f32>(x_400.x, x_400.y), vec2<f32>(0.0f, 0.0f));
        let x_404 : vec2<f32> = u_xlat42;
        let x_406 : vec2<f32> = u_xlat42;
        let x_408 : vec4<f32> = u_xlat6;
        u_xlat42 = ((-(x_404) * x_406) + vec2<f32>(x_408.x, x_408.y));
        let x_411 : vec4<f32> = u_xlat4;
        let x_413 : vec2<f32> = max(vec2<f32>(x_411.x, x_411.y), vec2<f32>(0.0f, 0.0f));
        let x_414 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_413.x, x_413.y, x_414.z, x_414.w);
        let x_416 : vec4<f32> = u_xlat4;
        let x_419 : vec4<f32> = u_xlat4;
        let x_422 : vec4<f32> = u_xlat5;
        let x_424 : vec2<f32> = ((-(vec2<f32>(x_416.x, x_416.y)) * vec2<f32>(x_419.x, x_419.y)) + vec2<f32>(x_422.y, x_422.w));
        let x_425 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_424.x, x_424.y, x_425.z, x_425.w);
        let x_427 : vec2<f32> = u_xlat42;
        u_xlat42 = (x_427 + vec2<f32>(1.0f, 1.0f));
        let x_429 : vec4<f32> = u_xlat4;
        let x_431 : vec2<f32> = (vec2<f32>(x_429.x, x_429.y) + vec2<f32>(1.0f, 1.0f));
        let x_432 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_431.x, x_431.y, x_432.z, x_432.w);
        let x_435 : vec4<f32> = u_xlat5;
        let x_439 : vec2<f32> = (vec2<f32>(x_435.x, x_435.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_440 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
        let x_443 : vec4<f32> = u_xlat6;
        let x_445 : vec2<f32> = (vec2<f32>(x_443.x, x_443.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_446 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_445.x, x_445.y, x_446.z, x_446.w);
        let x_448 : vec2<f32> = u_xlat42;
        let x_449 : vec2<f32> = (x_448 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_450 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_449.x, x_449.y, x_450.z, x_450.w);
        let x_453 : vec4<f32> = u_xlat4;
        let x_455 : vec2<f32> = (vec2<f32>(x_453.x, x_453.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_456 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_455.x, x_455.y, x_456.z, x_456.w);
        let x_458 : vec4<f32> = u_xlat5;
        let x_460 : vec2<f32> = (vec2<f32>(x_458.y, x_458.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_461 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_460.x, x_460.y, x_461.z, x_461.w);
        let x_464 : f32 = u_xlat6.x;
        u_xlat7.z = x_464;
        let x_467 : f32 = u_xlat4.x;
        u_xlat7.w = x_467;
        let x_470 : f32 = u_xlat9.x;
        u_xlat8.z = x_470;
        let x_473 : f32 = u_xlat40.x;
        u_xlat8.w = x_473;
        let x_475 : vec4<f32> = u_xlat7;
        let x_477 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_475.z, x_475.w, x_475.x, x_475.z) + vec4<f32>(x_477.z, x_477.w, x_477.x, x_477.z));
        let x_481 : f32 = u_xlat7.y;
        u_xlat6.z = x_481;
        let x_484 : f32 = u_xlat4.y;
        u_xlat6.w = x_484;
        let x_487 : f32 = u_xlat8.y;
        u_xlat9.z = x_487;
        let x_490 : f32 = u_xlat40.y;
        u_xlat9.w = x_490;
        let x_492 : vec4<f32> = u_xlat6;
        let x_494 : vec4<f32> = u_xlat9;
        let x_496 : vec3<f32> = (vec3<f32>(x_492.z, x_492.y, x_492.w) + vec3<f32>(x_494.z, x_494.y, x_494.w));
        let x_497 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
        let x_499 : vec4<f32> = u_xlat8;
        let x_501 : vec4<f32> = u_xlat5;
        let x_503 : vec3<f32> = (vec3<f32>(x_499.x, x_499.z, x_499.w) / vec3<f32>(x_501.z, x_501.w, x_501.y));
        let x_504 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
        let x_506 : vec4<f32> = u_xlat6;
        let x_512 : vec3<f32> = (vec3<f32>(x_506.x, x_506.y, x_506.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_513 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
        let x_515 : vec4<f32> = u_xlat9;
        let x_517 : vec4<f32> = u_xlat4;
        let x_519 : vec3<f32> = (vec3<f32>(x_515.z, x_515.y, x_515.w) / vec3<f32>(x_517.x, x_517.y, x_517.z));
        let x_520 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
        let x_522 : vec4<f32> = u_xlat7;
        let x_524 : vec3<f32> = (vec3<f32>(x_522.x, x_522.y, x_522.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_525 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
        let x_527 : vec4<f32> = u_xlat6;
        let x_530 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_532 : vec3<f32> = (vec3<f32>(x_527.y, x_527.x, x_527.z) * vec3<f32>(x_530.x, x_530.x, x_530.x));
        let x_533 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
        let x_535 : vec4<f32> = u_xlat7;
        let x_538 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_540 : vec3<f32> = (vec3<f32>(x_535.x, x_535.y, x_535.z) * vec3<f32>(x_538.y, x_538.y, x_538.y));
        let x_541 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
        let x_544 : f32 = u_xlat7.x;
        u_xlat6.w = x_544;
        let x_546 : vec3<f32> = u_xlat21;
        let x_549 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_552 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_546.x, x_546.y, x_546.x, x_546.y) * vec4<f32>(x_549.x, x_549.y, x_549.x, x_549.y)) + vec4<f32>(x_552.y, x_552.w, x_552.x, x_552.w));
        let x_555 : vec3<f32> = u_xlat21;
        let x_558 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_561 : vec4<f32> = u_xlat6;
        let x_563 : vec2<f32> = ((vec2<f32>(x_555.x, x_555.y) * vec2<f32>(x_558.x, x_558.y)) + vec2<f32>(x_561.z, x_561.w));
        let x_564 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_563.x, x_563.y, x_564.z, x_564.w);
        let x_567 : f32 = u_xlat6.y;
        u_xlat7.w = x_567;
        let x_569 : vec4<f32> = u_xlat7;
        let x_570 : vec2<f32> = vec2<f32>(x_569.y, x_569.z);
        let x_571 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_571.x, x_570.x, x_571.z, x_570.y);
        let x_574 : vec3<f32> = u_xlat21;
        let x_577 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_580 : vec4<f32> = u_xlat6;
        u_xlat10 = ((vec4<f32>(x_574.x, x_574.y, x_574.x, x_574.y) * vec4<f32>(x_577.x, x_577.y, x_577.x, x_577.y)) + vec4<f32>(x_580.x, x_580.y, x_580.z, x_580.y));
        let x_583 : vec3<f32> = u_xlat21;
        let x_586 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_589 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_583.x, x_583.y, x_583.x, x_583.y) * vec4<f32>(x_586.x, x_586.y, x_586.x, x_586.y)) + vec4<f32>(x_589.w, x_589.y, x_589.w, x_589.z));
        let x_592 : vec3<f32> = u_xlat21;
        let x_595 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_598 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_592.x, x_592.y, x_592.x, x_592.y) * vec4<f32>(x_595.x, x_595.y, x_595.x, x_595.y)) + vec4<f32>(x_598.x, x_598.w, x_598.z, x_598.w));
        let x_602 : vec4<f32> = u_xlat4;
        let x_604 : vec4<f32> = u_xlat5;
        u_xlat11 = (vec4<f32>(x_602.x, x_602.x, x_602.x, x_602.y) * vec4<f32>(x_604.z, x_604.w, x_604.y, x_604.z));
        let x_608 : vec4<f32> = u_xlat4;
        let x_610 : vec4<f32> = u_xlat5;
        u_xlat12 = (vec4<f32>(x_608.y, x_608.y, x_608.z, x_608.z) * x_610);
        let x_613 : f32 = u_xlat4.z;
        let x_615 : f32 = u_xlat5.y;
        u_xlat21.x = (x_613 * x_615);
        let x_619 : vec4<f32> = u_xlat8;
        let x_620 : vec2<f32> = vec2<f32>(x_619.x, x_619.y);
        let x_622 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_620.x, x_620.y, x_622);
        let x_630 : vec3<f32> = txVec4;
        let x_632 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_630.xy, x_630.z);
        u_xlat39 = x_632;
        let x_634 : vec4<f32> = u_xlat8;
        let x_635 : vec2<f32> = vec2<f32>(x_634.z, x_634.w);
        let x_637 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_635.x, x_635.y, x_637);
        let x_645 : vec3<f32> = txVec5;
        let x_647 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_645.xy, x_645.z);
        u_xlat57 = x_647;
        let x_648 : f32 = u_xlat57;
        let x_650 : f32 = u_xlat11.y;
        u_xlat57 = (x_648 * x_650);
        let x_653 : f32 = u_xlat11.x;
        let x_654 : f32 = u_xlat39;
        let x_656 : f32 = u_xlat57;
        u_xlat39 = ((x_653 * x_654) + x_656);
        let x_659 : vec4<f32> = u_xlat9;
        let x_660 : vec2<f32> = vec2<f32>(x_659.x, x_659.y);
        let x_662 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_660.x, x_660.y, x_662);
        let x_669 : vec3<f32> = txVec6;
        let x_671 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_669.xy, x_669.z);
        u_xlat57 = x_671;
        let x_673 : f32 = u_xlat11.z;
        let x_674 : f32 = u_xlat57;
        let x_676 : f32 = u_xlat39;
        u_xlat39 = ((x_673 * x_674) + x_676);
        let x_679 : vec4<f32> = u_xlat7;
        let x_680 : vec2<f32> = vec2<f32>(x_679.x, x_679.y);
        let x_682 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_680.x, x_680.y, x_682);
        let x_689 : vec3<f32> = txVec7;
        let x_691 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_689.xy, x_689.z);
        u_xlat57 = x_691;
        let x_693 : f32 = u_xlat11.w;
        let x_694 : f32 = u_xlat57;
        let x_696 : f32 = u_xlat39;
        u_xlat39 = ((x_693 * x_694) + x_696);
        let x_699 : vec4<f32> = u_xlat10;
        let x_700 : vec2<f32> = vec2<f32>(x_699.x, x_699.y);
        let x_702 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_700.x, x_700.y, x_702);
        let x_709 : vec3<f32> = txVec8;
        let x_711 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_709.xy, x_709.z);
        u_xlat57 = x_711;
        let x_713 : f32 = u_xlat12.x;
        let x_714 : f32 = u_xlat57;
        let x_716 : f32 = u_xlat39;
        u_xlat39 = ((x_713 * x_714) + x_716);
        let x_719 : vec4<f32> = u_xlat10;
        let x_720 : vec2<f32> = vec2<f32>(x_719.z, x_719.w);
        let x_722 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_720.x, x_720.y, x_722);
        let x_729 : vec3<f32> = txVec9;
        let x_731 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_729.xy, x_729.z);
        u_xlat57 = x_731;
        let x_733 : f32 = u_xlat12.y;
        let x_734 : f32 = u_xlat57;
        let x_736 : f32 = u_xlat39;
        u_xlat39 = ((x_733 * x_734) + x_736);
        let x_739 : vec4<f32> = u_xlat7;
        let x_740 : vec2<f32> = vec2<f32>(x_739.z, x_739.w);
        let x_742 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_740.x, x_740.y, x_742);
        let x_749 : vec3<f32> = txVec10;
        let x_751 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_749.xy, x_749.z);
        u_xlat57 = x_751;
        let x_753 : f32 = u_xlat12.z;
        let x_754 : f32 = u_xlat57;
        let x_756 : f32 = u_xlat39;
        u_xlat39 = ((x_753 * x_754) + x_756);
        let x_759 : vec4<f32> = u_xlat6;
        let x_760 : vec2<f32> = vec2<f32>(x_759.x, x_759.y);
        let x_762 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_760.x, x_760.y, x_762);
        let x_769 : vec3<f32> = txVec11;
        let x_771 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_769.xy, x_769.z);
        u_xlat57 = x_771;
        let x_773 : f32 = u_xlat12.w;
        let x_774 : f32 = u_xlat57;
        let x_776 : f32 = u_xlat39;
        u_xlat39 = ((x_773 * x_774) + x_776);
        let x_779 : vec4<f32> = u_xlat6;
        let x_780 : vec2<f32> = vec2<f32>(x_779.z, x_779.w);
        let x_782 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_780.x, x_780.y, x_782);
        let x_789 : vec3<f32> = txVec12;
        let x_791 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_789.xy, x_789.z);
        u_xlat57 = x_791;
        let x_793 : f32 = u_xlat21.x;
        let x_794 : f32 = u_xlat57;
        let x_796 : f32 = u_xlat39;
        u_xlat3.x = ((x_793 * x_794) + x_796);
      } else {
        let x_800 : vec4<f32> = vs_TEXCOORD6;
        let x_803 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_806 : vec2<f32> = ((vec2<f32>(x_800.x, x_800.y) * vec2<f32>(x_803.z, x_803.w)) + vec2<f32>(0.5f, 0.5f));
        let x_807 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_806.x, x_806.y, x_807.z);
        let x_809 : vec3<f32> = u_xlat21;
        let x_811 : vec2<f32> = floor(vec2<f32>(x_809.x, x_809.y));
        let x_812 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_811.x, x_811.y, x_812.z);
        let x_814 : vec4<f32> = vs_TEXCOORD6;
        let x_817 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_820 : vec3<f32> = u_xlat21;
        let x_823 : vec2<f32> = ((vec2<f32>(x_814.x, x_814.y) * vec2<f32>(x_817.z, x_817.w)) + -(vec2<f32>(x_820.x, x_820.y)));
        let x_824 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_823.x, x_823.y, x_824.z, x_824.w);
        let x_826 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_826.x, x_826.x, x_826.y, x_826.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_829 : vec4<f32> = u_xlat5;
        let x_831 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_829.x, x_829.x, x_829.z, x_829.z) * vec4<f32>(x_831.x, x_831.x, x_831.z, x_831.z));
        let x_834 : vec4<f32> = u_xlat6;
        let x_838 : vec2<f32> = (vec2<f32>(x_834.y, x_834.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_839 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_839.x, x_838.x, x_839.z, x_838.y);
        let x_841 : vec4<f32> = u_xlat6;
        let x_844 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_841.x, x_841.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_844.x, x_844.y)));
        let x_848 : vec4<f32> = u_xlat4;
        let x_851 : vec2<f32> = (-(vec2<f32>(x_848.x, x_848.y)) + vec2<f32>(1.0f, 1.0f));
        let x_852 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_851.x, x_852.y, x_851.y, x_852.w);
        let x_854 : vec4<f32> = u_xlat4;
        let x_856 : vec2<f32> = min(vec2<f32>(x_854.x, x_854.y), vec2<f32>(0.0f, 0.0f));
        let x_857 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_856.x, x_856.y, x_857.z, x_857.w);
        let x_859 : vec4<f32> = u_xlat6;
        let x_862 : vec4<f32> = u_xlat6;
        let x_865 : vec4<f32> = u_xlat5;
        let x_867 : vec2<f32> = ((-(vec2<f32>(x_859.x, x_859.y)) * vec2<f32>(x_862.x, x_862.y)) + vec2<f32>(x_865.x, x_865.z));
        let x_868 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_867.x, x_868.y, x_867.y, x_868.w);
        let x_870 : vec4<f32> = u_xlat4;
        let x_872 : vec2<f32> = max(vec2<f32>(x_870.x, x_870.y), vec2<f32>(0.0f, 0.0f));
        let x_873 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_872.x, x_872.y, x_873.z, x_873.w);
        let x_875 : vec4<f32> = u_xlat6;
        let x_878 : vec4<f32> = u_xlat6;
        let x_881 : vec4<f32> = u_xlat5;
        let x_883 : vec2<f32> = ((-(vec2<f32>(x_875.x, x_875.y)) * vec2<f32>(x_878.x, x_878.y)) + vec2<f32>(x_881.y, x_881.w));
        let x_884 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_884.x, x_883.x, x_884.z, x_883.y);
        let x_886 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_886 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_890 : f32 = u_xlat5.y;
        u_xlat6.z = (x_890 * 0.081632003f);
        let x_894 : vec2<f32> = u_xlat40;
        let x_897 : vec2<f32> = (vec2<f32>(x_894.y, x_894.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_898 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_897.x, x_897.y, x_898.z, x_898.w);
        let x_900 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_900.x, x_900.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_904 : f32 = u_xlat5.w;
        u_xlat8.z = (x_904 * 0.081632003f);
        let x_908 : f32 = u_xlat8.y;
        u_xlat6.x = x_908;
        let x_910 : vec4<f32> = u_xlat4;
        let x_917 : vec2<f32> = ((vec2<f32>(x_910.x, x_910.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_918 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_918.x, x_917.x, x_918.z, x_917.y);
        let x_920 : vec4<f32> = u_xlat4;
        let x_924 : vec2<f32> = ((vec2<f32>(x_920.x, x_920.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_925 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_924.x, x_925.y, x_924.y, x_925.w);
        let x_928 : f32 = u_xlat40.x;
        u_xlat5.y = x_928;
        let x_931 : f32 = u_xlat7.y;
        u_xlat5.w = x_931;
        let x_933 : vec4<f32> = u_xlat5;
        let x_934 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_933 + x_934);
        let x_936 : vec4<f32> = u_xlat4;
        let x_939 : vec2<f32> = ((vec2<f32>(x_936.y, x_936.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_940 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_940.x, x_939.x, x_940.z, x_939.y);
        let x_942 : vec4<f32> = u_xlat4;
        let x_945 : vec2<f32> = ((vec2<f32>(x_942.y, x_942.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_946 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_945.x, x_946.y, x_945.y, x_946.w);
        let x_949 : f32 = u_xlat40.y;
        u_xlat7.y = x_949;
        let x_951 : vec4<f32> = u_xlat7;
        let x_952 : vec4<f32> = u_xlat8;
        u_xlat4 = (x_951 + x_952);
        let x_954 : vec4<f32> = u_xlat5;
        let x_955 : vec4<f32> = u_xlat6;
        u_xlat5 = (x_954 / x_955);
        let x_957 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_957 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_963 : vec4<f32> = u_xlat7;
        let x_964 : vec4<f32> = u_xlat4;
        u_xlat7 = (x_963 / x_964);
        let x_966 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_966 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_968 : vec4<f32> = u_xlat5;
        let x_971 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        u_xlat5 = (vec4<f32>(x_968.w, x_968.x, x_968.y, x_968.z) * vec4<f32>(x_971.x, x_971.x, x_971.x, x_971.x));
        let x_974 : vec4<f32> = u_xlat7;
        let x_977 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_974.x, x_974.w, x_974.y, x_974.z) * vec4<f32>(x_977.y, x_977.y, x_977.y, x_977.y));
        let x_980 : vec4<f32> = u_xlat5;
        let x_981 : vec3<f32> = vec3<f32>(x_980.y, x_980.z, x_980.w);
        let x_982 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_981.x, x_982.y, x_981.y, x_981.z);
        let x_985 : f32 = u_xlat7.x;
        u_xlat8.y = x_985;
        let x_987 : vec3<f32> = u_xlat21;
        let x_990 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_993 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_987.x, x_987.y, x_987.x, x_987.y) * vec4<f32>(x_990.x, x_990.y, x_990.x, x_990.y)) + vec4<f32>(x_993.x, x_993.y, x_993.z, x_993.y));
        let x_996 : vec3<f32> = u_xlat21;
        let x_999 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_1002 : vec4<f32> = u_xlat8;
        let x_1004 : vec2<f32> = ((vec2<f32>(x_996.x, x_996.y) * vec2<f32>(x_999.x, x_999.y)) + vec2<f32>(x_1002.w, x_1002.y));
        let x_1005 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1004.x, x_1004.y, x_1005.z, x_1005.w);
        let x_1008 : f32 = u_xlat8.y;
        u_xlat5.y = x_1008;
        let x_1011 : f32 = u_xlat7.z;
        u_xlat8.y = x_1011;
        let x_1013 : vec3<f32> = u_xlat21;
        let x_1016 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_1019 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1013.x, x_1013.y, x_1013.x, x_1013.y) * vec4<f32>(x_1016.x, x_1016.y, x_1016.x, x_1016.y)) + vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1019.y));
        let x_1023 : vec3<f32> = u_xlat21;
        let x_1026 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_1029 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1023.x, x_1023.y) * vec2<f32>(x_1026.x, x_1026.y)) + vec2<f32>(x_1029.w, x_1029.y));
        let x_1033 : f32 = u_xlat8.y;
        u_xlat5.z = x_1033;
        let x_1035 : vec3<f32> = u_xlat21;
        let x_1038 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_1041 : vec4<f32> = u_xlat5;
        u_xlat12 = ((vec4<f32>(x_1035.x, x_1035.y, x_1035.x, x_1035.y) * vec4<f32>(x_1038.x, x_1038.y, x_1038.x, x_1038.y)) + vec4<f32>(x_1041.x, x_1041.y, x_1041.x, x_1041.z));
        let x_1045 : f32 = u_xlat7.w;
        u_xlat8.y = x_1045;
        let x_1048 : vec3<f32> = u_xlat21;
        let x_1051 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_1054 : vec4<f32> = u_xlat8;
        u_xlat13 = ((vec4<f32>(x_1048.x, x_1048.y, x_1048.x, x_1048.y) * vec4<f32>(x_1051.x, x_1051.y, x_1051.x, x_1051.y)) + vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1054.y));
        let x_1058 : vec3<f32> = u_xlat21;
        let x_1061 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_1064 : vec4<f32> = u_xlat8;
        u_xlat23 = ((vec2<f32>(x_1058.x, x_1058.y) * vec2<f32>(x_1061.x, x_1061.y)) + vec2<f32>(x_1064.w, x_1064.y));
        let x_1068 : f32 = u_xlat8.y;
        u_xlat5.w = x_1068;
        let x_1071 : vec3<f32> = u_xlat21;
        let x_1074 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_1077 : vec4<f32> = u_xlat5;
        u_xlat14 = ((vec2<f32>(x_1071.x, x_1071.y) * vec2<f32>(x_1074.x, x_1074.y)) + vec2<f32>(x_1077.x, x_1077.w));
        let x_1080 : vec4<f32> = u_xlat8;
        let x_1081 : vec3<f32> = vec3<f32>(x_1080.x, x_1080.z, x_1080.w);
        let x_1082 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1081.x, x_1082.y, x_1081.y, x_1081.z);
        let x_1084 : vec3<f32> = u_xlat21;
        let x_1087 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_1090 : vec4<f32> = u_xlat7;
        u_xlat8 = ((vec4<f32>(x_1084.x, x_1084.y, x_1084.x, x_1084.y) * vec4<f32>(x_1087.x, x_1087.y, x_1087.x, x_1087.y)) + vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1090.y));
        let x_1094 : vec3<f32> = u_xlat21;
        let x_1097 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_1100 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1094.x, x_1094.y) * vec2<f32>(x_1097.x, x_1097.y)) + vec2<f32>(x_1100.w, x_1100.y));
        let x_1104 : f32 = u_xlat5.x;
        u_xlat7.x = x_1104;
        let x_1106 : vec3<f32> = u_xlat21;
        let x_1109 : vec4<f32> = x_227.x_MainLightShadowmapSize;
        let x_1112 : vec4<f32> = u_xlat7;
        let x_1114 : vec2<f32> = ((vec2<f32>(x_1106.x, x_1106.y) * vec2<f32>(x_1109.x, x_1109.y)) + vec2<f32>(x_1112.x, x_1112.y));
        let x_1115 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_1114.x, x_1114.y, x_1115.z);
        let x_1118 : vec4<f32> = u_xlat4;
        let x_1120 : vec4<f32> = u_xlat6;
        u_xlat15 = (vec4<f32>(x_1118.x, x_1118.x, x_1118.x, x_1118.x) * x_1120);
        let x_1123 : vec4<f32> = u_xlat4;
        let x_1125 : vec4<f32> = u_xlat6;
        u_xlat16 = (vec4<f32>(x_1123.y, x_1123.y, x_1123.y, x_1123.y) * x_1125);
        let x_1128 : vec4<f32> = u_xlat4;
        let x_1130 : vec4<f32> = u_xlat6;
        u_xlat17 = (vec4<f32>(x_1128.z, x_1128.z, x_1128.z, x_1128.z) * x_1130);
        let x_1132 : vec4<f32> = u_xlat4;
        let x_1134 : vec4<f32> = u_xlat6;
        u_xlat4 = (vec4<f32>(x_1132.w, x_1132.w, x_1132.w, x_1132.w) * x_1134);
        let x_1137 : vec4<f32> = u_xlat9;
        let x_1138 : vec2<f32> = vec2<f32>(x_1137.x, x_1137.y);
        let x_1140 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1138.x, x_1138.y, x_1140);
        let x_1147 : vec3<f32> = txVec13;
        let x_1149 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1147.xy, x_1147.z);
        u_xlat57 = x_1149;
        let x_1151 : vec4<f32> = u_xlat9;
        let x_1152 : vec2<f32> = vec2<f32>(x_1151.z, x_1151.w);
        let x_1154 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1152.x, x_1152.y, x_1154);
        let x_1161 : vec3<f32> = txVec14;
        let x_1163 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1161.xy, x_1161.z);
        u_xlat5.x = x_1163;
        let x_1166 : f32 = u_xlat5.x;
        let x_1168 : f32 = u_xlat15.y;
        u_xlat5.x = (x_1166 * x_1168);
        let x_1172 : f32 = u_xlat15.x;
        let x_1173 : f32 = u_xlat57;
        let x_1176 : f32 = u_xlat5.x;
        u_xlat57 = ((x_1172 * x_1173) + x_1176);
        let x_1179 : vec4<f32> = u_xlat10;
        let x_1180 : vec2<f32> = vec2<f32>(x_1179.x, x_1179.y);
        let x_1182 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1180.x, x_1180.y, x_1182);
        let x_1189 : vec3<f32> = txVec15;
        let x_1191 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1189.xy, x_1189.z);
        u_xlat5.x = x_1191;
        let x_1194 : f32 = u_xlat15.z;
        let x_1196 : f32 = u_xlat5.x;
        let x_1198 : f32 = u_xlat57;
        u_xlat57 = ((x_1194 * x_1196) + x_1198);
        let x_1201 : vec4<f32> = u_xlat12;
        let x_1202 : vec2<f32> = vec2<f32>(x_1201.x, x_1201.y);
        let x_1204 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1202.x, x_1202.y, x_1204);
        let x_1211 : vec3<f32> = txVec16;
        let x_1213 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1211.xy, x_1211.z);
        u_xlat5.x = x_1213;
        let x_1216 : f32 = u_xlat15.w;
        let x_1218 : f32 = u_xlat5.x;
        let x_1220 : f32 = u_xlat57;
        u_xlat57 = ((x_1216 * x_1218) + x_1220);
        let x_1223 : vec4<f32> = u_xlat11;
        let x_1224 : vec2<f32> = vec2<f32>(x_1223.x, x_1223.y);
        let x_1226 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1224.x, x_1224.y, x_1226);
        let x_1233 : vec3<f32> = txVec17;
        let x_1235 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1233.xy, x_1233.z);
        u_xlat5.x = x_1235;
        let x_1238 : f32 = u_xlat16.x;
        let x_1240 : f32 = u_xlat5.x;
        let x_1242 : f32 = u_xlat57;
        u_xlat57 = ((x_1238 * x_1240) + x_1242);
        let x_1245 : vec4<f32> = u_xlat11;
        let x_1246 : vec2<f32> = vec2<f32>(x_1245.z, x_1245.w);
        let x_1248 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1246.x, x_1246.y, x_1248);
        let x_1255 : vec3<f32> = txVec18;
        let x_1257 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1255.xy, x_1255.z);
        u_xlat5.x = x_1257;
        let x_1260 : f32 = u_xlat16.y;
        let x_1262 : f32 = u_xlat5.x;
        let x_1264 : f32 = u_xlat57;
        u_xlat57 = ((x_1260 * x_1262) + x_1264);
        let x_1267 : vec2<f32> = u_xlat46;
        let x_1269 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1267.x, x_1267.y, x_1269);
        let x_1276 : vec3<f32> = txVec19;
        let x_1278 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1276.xy, x_1276.z);
        u_xlat5.x = x_1278;
        let x_1281 : f32 = u_xlat16.z;
        let x_1283 : f32 = u_xlat5.x;
        let x_1285 : f32 = u_xlat57;
        u_xlat57 = ((x_1281 * x_1283) + x_1285);
        let x_1288 : vec4<f32> = u_xlat12;
        let x_1289 : vec2<f32> = vec2<f32>(x_1288.z, x_1288.w);
        let x_1291 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1289.x, x_1289.y, x_1291);
        let x_1298 : vec3<f32> = txVec20;
        let x_1300 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1298.xy, x_1298.z);
        u_xlat5.x = x_1300;
        let x_1303 : f32 = u_xlat16.w;
        let x_1305 : f32 = u_xlat5.x;
        let x_1307 : f32 = u_xlat57;
        u_xlat57 = ((x_1303 * x_1305) + x_1307);
        let x_1310 : vec4<f32> = u_xlat13;
        let x_1311 : vec2<f32> = vec2<f32>(x_1310.x, x_1310.y);
        let x_1313 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1311.x, x_1311.y, x_1313);
        let x_1320 : vec3<f32> = txVec21;
        let x_1322 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1320.xy, x_1320.z);
        u_xlat5.x = x_1322;
        let x_1325 : f32 = u_xlat17.x;
        let x_1327 : f32 = u_xlat5.x;
        let x_1329 : f32 = u_xlat57;
        u_xlat57 = ((x_1325 * x_1327) + x_1329);
        let x_1332 : vec4<f32> = u_xlat13;
        let x_1333 : vec2<f32> = vec2<f32>(x_1332.z, x_1332.w);
        let x_1335 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1333.x, x_1333.y, x_1335);
        let x_1342 : vec3<f32> = txVec22;
        let x_1344 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1342.xy, x_1342.z);
        u_xlat5.x = x_1344;
        let x_1347 : f32 = u_xlat17.y;
        let x_1349 : f32 = u_xlat5.x;
        let x_1351 : f32 = u_xlat57;
        u_xlat57 = ((x_1347 * x_1349) + x_1351);
        let x_1354 : vec2<f32> = u_xlat23;
        let x_1356 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1354.x, x_1354.y, x_1356);
        let x_1363 : vec3<f32> = txVec23;
        let x_1365 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1363.xy, x_1363.z);
        u_xlat5.x = x_1365;
        let x_1368 : f32 = u_xlat17.z;
        let x_1370 : f32 = u_xlat5.x;
        let x_1372 : f32 = u_xlat57;
        u_xlat57 = ((x_1368 * x_1370) + x_1372);
        let x_1375 : vec2<f32> = u_xlat14;
        let x_1377 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1375.x, x_1375.y, x_1377);
        let x_1384 : vec3<f32> = txVec24;
        let x_1386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1384.xy, x_1384.z);
        u_xlat5.x = x_1386;
        let x_1389 : f32 = u_xlat17.w;
        let x_1391 : f32 = u_xlat5.x;
        let x_1393 : f32 = u_xlat57;
        u_xlat57 = ((x_1389 * x_1391) + x_1393);
        let x_1396 : vec4<f32> = u_xlat8;
        let x_1397 : vec2<f32> = vec2<f32>(x_1396.x, x_1396.y);
        let x_1399 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1397.x, x_1397.y, x_1399);
        let x_1406 : vec3<f32> = txVec25;
        let x_1408 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1406.xy, x_1406.z);
        u_xlat5.x = x_1408;
        let x_1411 : f32 = u_xlat4.x;
        let x_1413 : f32 = u_xlat5.x;
        let x_1415 : f32 = u_xlat57;
        u_xlat57 = ((x_1411 * x_1413) + x_1415);
        let x_1418 : vec4<f32> = u_xlat8;
        let x_1419 : vec2<f32> = vec2<f32>(x_1418.z, x_1418.w);
        let x_1421 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1419.x, x_1419.y, x_1421);
        let x_1428 : vec3<f32> = txVec26;
        let x_1430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1428.xy, x_1428.z);
        u_xlat4.x = x_1430;
        let x_1433 : f32 = u_xlat4.y;
        let x_1435 : f32 = u_xlat4.x;
        let x_1437 : f32 = u_xlat57;
        u_xlat57 = ((x_1433 * x_1435) + x_1437);
        let x_1440 : vec2<f32> = u_xlat43;
        let x_1442 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1440.x, x_1440.y, x_1442);
        let x_1449 : vec3<f32> = txVec27;
        let x_1451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1449.xy, x_1449.z);
        u_xlat4.x = x_1451;
        let x_1454 : f32 = u_xlat4.z;
        let x_1456 : f32 = u_xlat4.x;
        let x_1458 : f32 = u_xlat57;
        u_xlat57 = ((x_1454 * x_1456) + x_1458);
        let x_1461 : vec3<f32> = u_xlat21;
        let x_1462 : vec2<f32> = vec2<f32>(x_1461.x, x_1461.y);
        let x_1464 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1462.x, x_1462.y, x_1464);
        let x_1471 : vec3<f32> = txVec28;
        let x_1473 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1471.xy, x_1471.z);
        u_xlat21.x = x_1473;
        let x_1476 : f32 = u_xlat4.w;
        let x_1478 : f32 = u_xlat21.x;
        let x_1480 : f32 = u_xlat57;
        u_xlat3.x = ((x_1476 * x_1478) + x_1480);
      }
    }
  } else {
    let x_1485 : vec4<f32> = vs_TEXCOORD6;
    let x_1486 : vec2<f32> = vec2<f32>(x_1485.x, x_1485.y);
    let x_1488 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1486.x, x_1486.y, x_1488);
    let x_1495 : vec3<f32> = txVec29;
    let x_1497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1495.xy, x_1495.z);
    u_xlat3.x = x_1497;
  }
  let x_1500 : f32 = x_227.x_MainLightShadowParams.x;
  u_xlat21.x = (-(x_1500) + 1.0f);
  let x_1505 : f32 = u_xlat3.x;
  let x_1507 : f32 = x_227.x_MainLightShadowParams.x;
  let x_1510 : f32 = u_xlat21.x;
  u_xlat3.x = ((x_1505 * x_1507) + x_1510);
  let x_1514 : f32 = vs_TEXCOORD6.z;
  u_xlatb21.x = (0.0f >= x_1514);
  let x_1519 : f32 = vs_TEXCOORD6.z;
  u_xlatb39 = (x_1519 >= 1.0f);
  let x_1521 : bool = u_xlatb39;
  let x_1523 : bool = u_xlatb21.x;
  u_xlatb21.x = (x_1521 | x_1523);
  let x_1527 : bool = u_xlatb21.x;
  if (x_1527) {
    x_1528 = 1.0f;
  } else {
    let x_1533 : f32 = u_xlat3.x;
    x_1528 = x_1533;
  }
  let x_1534 : f32 = x_1528;
  u_xlat3.x = x_1534;
  let x_1537 : vec3<f32> = vs_TEXCOORD1;
  let x_1540 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat21 = (x_1537 + -(x_1540));
  let x_1543 : vec3<f32> = u_xlat21;
  let x_1544 : vec3<f32> = u_xlat21;
  u_xlat21.x = dot(x_1543, x_1544);
  let x_1548 : f32 = u_xlat21.x;
  let x_1550 : f32 = x_227.x_MainLightShadowParams.z;
  let x_1553 : f32 = x_227.x_MainLightShadowParams.w;
  u_xlat21.x = ((x_1548 * x_1550) + x_1553);
  let x_1557 : f32 = u_xlat21.x;
  u_xlat21.x = clamp(x_1557, 0.0f, 1.0f);
  let x_1561 : f32 = u_xlat3.x;
  u_xlat39 = (-(x_1561) + 1.0f);
  let x_1565 : f32 = u_xlat21.x;
  let x_1566 : f32 = u_xlat39;
  let x_1569 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1565 * x_1566) + x_1569);
  let x_1579 : f32 = x_1576.x_MainLightCookieTextureFormat;
  u_xlatb21.x = !((x_1579 == -1.0f));
  let x_1583 : bool = u_xlatb21.x;
  if (x_1583) {
    let x_1586 : vec3<f32> = vs_TEXCOORD1;
    let x_1589 : vec4<f32> = x_1576.x_MainLightWorldToLight[1i];
    let x_1591 : vec2<f32> = (vec2<f32>(x_1586.y, x_1586.y) * vec2<f32>(x_1589.x, x_1589.y));
    let x_1592 : vec3<f32> = u_xlat21;
    u_xlat21 = vec3<f32>(x_1591.x, x_1591.y, x_1592.z);
    let x_1595 : vec4<f32> = x_1576.x_MainLightWorldToLight[0i];
    let x_1597 : vec3<f32> = vs_TEXCOORD1;
    let x_1600 : vec3<f32> = u_xlat21;
    let x_1602 : vec2<f32> = ((vec2<f32>(x_1595.x, x_1595.y) * vec2<f32>(x_1597.x, x_1597.x)) + vec2<f32>(x_1600.x, x_1600.y));
    let x_1603 : vec3<f32> = u_xlat21;
    u_xlat21 = vec3<f32>(x_1602.x, x_1602.y, x_1603.z);
    let x_1606 : vec4<f32> = x_1576.x_MainLightWorldToLight[2i];
    let x_1608 : vec3<f32> = vs_TEXCOORD1;
    let x_1611 : vec3<f32> = u_xlat21;
    let x_1613 : vec2<f32> = ((vec2<f32>(x_1606.x, x_1606.y) * vec2<f32>(x_1608.z, x_1608.z)) + vec2<f32>(x_1611.x, x_1611.y));
    let x_1614 : vec3<f32> = u_xlat21;
    u_xlat21 = vec3<f32>(x_1613.x, x_1613.y, x_1614.z);
    let x_1616 : vec3<f32> = u_xlat21;
    let x_1620 : vec4<f32> = x_1576.x_MainLightWorldToLight[3i];
    let x_1622 : vec2<f32> = (vec2<f32>(x_1616.x, x_1616.y) + vec2<f32>(x_1620.x, x_1620.y));
    let x_1623 : vec3<f32> = u_xlat21;
    u_xlat21 = vec3<f32>(x_1622.x, x_1622.y, x_1623.z);
    let x_1625 : vec3<f32> = u_xlat21;
    let x_1628 : vec2<f32> = ((vec2<f32>(x_1625.x, x_1625.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1629 : vec3<f32> = u_xlat21;
    u_xlat21 = vec3<f32>(x_1628.x, x_1628.y, x_1629.z);
    let x_1636 : vec3<f32> = u_xlat21;
    let x_1639 : f32 = x_43.x_GlobalMipBias.x;
    let x_1640 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1636.x, x_1636.y), x_1639);
    u_xlat4 = x_1640;
    let x_1642 : f32 = x_1576.x_MainLightCookieTextureFormat;
    let x_1644 : f32 = x_1576.x_MainLightCookieTextureFormat;
    let x_1646 : f32 = x_1576.x_MainLightCookieTextureFormat;
    let x_1648 : f32 = x_1576.x_MainLightCookieTextureFormat;
    let x_1649 : vec4<f32> = vec4<f32>(x_1642, x_1644, x_1646, x_1648);
    let x_1657 : vec4<bool> = (vec4<f32>(x_1649.x, x_1649.y, x_1649.z, x_1649.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb21 = vec2<bool>(x_1657.x, x_1657.y);
    let x_1660 : bool = u_xlatb21.y;
    if (x_1660) {
      let x_1665 : f32 = u_xlat4.w;
      x_1661 = x_1665;
    } else {
      let x_1668 : f32 = u_xlat4.x;
      x_1661 = x_1668;
    }
    let x_1669 : f32 = x_1661;
    u_xlat39 = x_1669;
    let x_1671 : bool = u_xlatb21.x;
    if (x_1671) {
      let x_1675 : vec4<f32> = u_xlat4;
      x_1672 = vec3<f32>(x_1675.x, x_1675.y, x_1675.z);
    } else {
      let x_1678 : f32 = u_xlat39;
      x_1672 = vec3<f32>(x_1678, x_1678, x_1678);
    }
    let x_1680 : vec3<f32> = x_1672;
    u_xlat21 = x_1680;
  } else {
    u_xlat21.x = 1.0f;
    u_xlat21.y = 1.0f;
    u_xlat21.z = 1.0f;
  }
  let x_1685 : vec3<f32> = u_xlat21;
  let x_1687 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat21 = (x_1685 * vec3<f32>(x_1687.x, x_1687.y, x_1687.z));
  let x_1690 : f32 = u_xlat56;
  let x_1692 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_1690, x_1690, x_1690) * x_1692);
  let x_1694 : f32 = u_xlat55;
  let x_1696 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1694, x_1694, x_1694) * x_1696);
  let x_1699 : f32 = u_xlat3.x;
  let x_1702 : f32 = x_87.unity_LightData.z;
  u_xlat55 = (x_1699 * x_1702);
  let x_1704 : f32 = u_xlat55;
  let x_1706 : vec3<f32> = u_xlat21;
  let x_1707 : vec3<f32> = (vec3<f32>(x_1704, x_1704, x_1704) * x_1706);
  let x_1708 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1707.x, x_1707.y, x_1707.z, x_1708.w);
  let x_1710 : vec4<f32> = u_xlat1;
  let x_1713 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat55 = dot(vec3<f32>(x_1710.x, x_1710.y, x_1710.z), vec3<f32>(x_1713.x, x_1713.y, x_1713.z));
  let x_1716 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1716, 0.0f, 1.0f);
  let x_1718 : f32 = u_xlat55;
  let x_1720 : vec4<f32> = u_xlat3;
  let x_1722 : vec3<f32> = (vec3<f32>(x_1718, x_1718, x_1718) * vec3<f32>(x_1720.x, x_1720.y, x_1720.z));
  let x_1723 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1722.x, x_1722.y, x_1722.z, x_1723.w);
  let x_1725 : vec4<f32> = u_xlat0;
  let x_1727 : vec4<f32> = u_xlat3;
  let x_1729 : vec3<f32> = (vec3<f32>(x_1725.y, x_1725.z, x_1725.w) * vec3<f32>(x_1727.x, x_1727.y, x_1727.z));
  let x_1730 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1729.x, x_1729.y, x_1729.z, x_1730.w);
  let x_1733 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1735 : f32 = x_87.unity_LightData.y;
  u_xlat55 = min(x_1733, x_1735);
  let x_1739 : f32 = u_xlat55;
  u_xlatu55 = bitcast<u32>(i32(x_1739));
  let x_1744 : f32 = x_1576.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1746 : f32 = x_1576.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1748 : f32 = x_1576.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1750 : f32 = x_1576.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1751 : vec4<f32> = vec4<f32>(x_1744, x_1746, x_1748, x_1750);
  let x_1757 : vec4<bool> = (vec4<f32>(x_1751.x, x_1751.y, x_1751.z, x_1751.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_1757.x, x_1757.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1768 : u32 = u_xlatu_loop_1;
    let x_1769 : u32 = u_xlatu55;
    if ((x_1768 < x_1769)) {
    } else {
      break;
    }
    let x_1772 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_1772 >> 2u);
    let x_1776 : u32 = u_xlatu_loop_1;
    u_xlati58 = bitcast<i32>((x_1776 & 3u));
    let x_1779 : u32 = u_xlatu40;
    let x_1782 : vec4<f32> = x_87.unity_LightIndices[bitcast<i32>(x_1779)];
    let x_1792 : i32 = u_xlati58;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1797 : vec4<u32> = indexable[x_1792];
    u_xlat40.x = dot(x_1782, bitcast<vec4<f32>>(x_1797));
    let x_1802 : f32 = u_xlat40.x;
    u_xlatu40 = bitcast<u32>(i32(x_1802));
    let x_1805 : vec3<f32> = vs_TEXCOORD1;
    let x_1817 : u32 = u_xlatu40;
    let x_1820 : vec4<f32> = x_1816.x_AdditionalLightsPosition[bitcast<i32>(x_1817)];
    let x_1823 : u32 = u_xlatu40;
    let x_1826 : vec4<f32> = x_1816.x_AdditionalLightsPosition[bitcast<i32>(x_1823)];
    let x_1828 : vec3<f32> = ((-(x_1805) * vec3<f32>(x_1820.w, x_1820.w, x_1820.w)) + vec3<f32>(x_1826.x, x_1826.y, x_1826.z));
    let x_1829 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1828.x, x_1828.y, x_1828.z, x_1829.w);
    let x_1832 : vec4<f32> = u_xlat6;
    let x_1834 : vec4<f32> = u_xlat6;
    u_xlat58 = dot(vec3<f32>(x_1832.x, x_1832.y, x_1832.z), vec3<f32>(x_1834.x, x_1834.y, x_1834.z));
    let x_1837 : f32 = u_xlat58;
    u_xlat58 = max(x_1837, 6.10351562e-05f);
    let x_1841 : f32 = u_xlat58;
    u_xlat59 = inverseSqrt(x_1841);
    let x_1843 : f32 = u_xlat59;
    let x_1845 : vec4<f32> = u_xlat6;
    let x_1847 : vec3<f32> = (vec3<f32>(x_1843, x_1843, x_1843) * vec3<f32>(x_1845.x, x_1845.y, x_1845.z));
    let x_1848 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1847.x, x_1847.y, x_1847.z, x_1848.w);
    let x_1850 : f32 = u_xlat58;
    u_xlat59 = (1.0f / x_1850);
    let x_1852 : f32 = u_xlat58;
    let x_1853 : u32 = u_xlatu40;
    let x_1856 : f32 = x_1816.x_AdditionalLightsAttenuation[bitcast<i32>(x_1853)].x;
    u_xlat58 = (x_1852 * x_1856);
    let x_1858 : f32 = u_xlat58;
    let x_1860 : f32 = u_xlat58;
    u_xlat58 = ((-(x_1858) * x_1860) + 1.0f);
    let x_1863 : f32 = u_xlat58;
    u_xlat58 = max(x_1863, 0.0f);
    let x_1865 : f32 = u_xlat58;
    let x_1866 : f32 = u_xlat58;
    u_xlat58 = (x_1865 * x_1866);
    let x_1868 : f32 = u_xlat58;
    let x_1869 : f32 = u_xlat59;
    u_xlat58 = (x_1868 * x_1869);
    let x_1871 : u32 = u_xlatu40;
    let x_1874 : vec4<f32> = x_1816.x_AdditionalLightsSpotDir[bitcast<i32>(x_1871)];
    let x_1876 : vec4<f32> = u_xlat6;
    u_xlat59 = dot(vec3<f32>(x_1874.x, x_1874.y, x_1874.z), vec3<f32>(x_1876.x, x_1876.y, x_1876.z));
    let x_1879 : f32 = u_xlat59;
    let x_1880 : u32 = u_xlatu40;
    let x_1883 : f32 = x_1816.x_AdditionalLightsAttenuation[bitcast<i32>(x_1880)].z;
    let x_1885 : u32 = u_xlatu40;
    let x_1888 : f32 = x_1816.x_AdditionalLightsAttenuation[bitcast<i32>(x_1885)].w;
    u_xlat59 = ((x_1879 * x_1883) + x_1888);
    let x_1890 : f32 = u_xlat59;
    u_xlat59 = clamp(x_1890, 0.0f, 1.0f);
    let x_1892 : f32 = u_xlat59;
    let x_1893 : f32 = u_xlat59;
    u_xlat59 = (x_1892 * x_1893);
    let x_1895 : f32 = u_xlat58;
    let x_1896 : f32 = u_xlat59;
    u_xlat58 = (x_1895 * x_1896);
    let x_1899 : u32 = u_xlatu40;
    u_xlatu59 = (x_1899 >> 5u);
    let x_1902 : u32 = u_xlatu40;
    u_xlati60 = (1i << bitcast<u32>((bitcast<i32>(x_1902) & 31i)));
    let x_1908 : i32 = u_xlati60;
    let x_1910 : u32 = u_xlatu59;
    let x_1913 : f32 = x_1576.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1910)].el;
    u_xlati59 = bitcast<i32>((bitcast<u32>(x_1908) & bitcast<u32>(x_1913)));
    let x_1917 : i32 = u_xlati59;
    if ((x_1917 != 0i)) {
      let x_1927 : u32 = u_xlatu40;
      let x_1930 : f32 = x_1926.x_AdditionalLightsLightTypes[bitcast<i32>(x_1927)].el;
      u_xlati59 = i32(x_1930);
      let x_1932 : i32 = u_xlati59;
      u_xlati60 = select(1i, 0i, (x_1932 != 0i));
      let x_1936 : u32 = u_xlatu40;
      u_xlati7 = (bitcast<i32>(x_1936) << bitcast<u32>(2i));
      let x_1939 : i32 = u_xlati60;
      if ((x_1939 != 0i)) {
        let x_1944 : vec3<f32> = vs_TEXCOORD1;
        let x_1946 : i32 = u_xlati7;
        let x_1949 : i32 = u_xlati7;
        let x_1953 : vec4<f32> = x_1926.x_AdditionalLightsWorldToLights[((x_1946 + 1i) / 4i)][((x_1949 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1944.y, x_1944.y, x_1944.y) * vec3<f32>(x_1953.x, x_1953.y, x_1953.w));
        let x_1956 : i32 = u_xlati7;
        let x_1958 : i32 = u_xlati7;
        let x_1961 : vec4<f32> = x_1926.x_AdditionalLightsWorldToLights[(x_1956 / 4i)][(x_1958 % 4i)];
        let x_1963 : vec3<f32> = vs_TEXCOORD1;
        let x_1966 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1961.x, x_1961.y, x_1961.w) * vec3<f32>(x_1963.x, x_1963.x, x_1963.x)) + x_1966);
        let x_1968 : i32 = u_xlati7;
        let x_1971 : i32 = u_xlati7;
        let x_1975 : vec4<f32> = x_1926.x_AdditionalLightsWorldToLights[((x_1968 + 2i) / 4i)][((x_1971 + 2i) % 4i)];
        let x_1977 : vec3<f32> = vs_TEXCOORD1;
        let x_1980 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1975.x, x_1975.y, x_1975.w) * vec3<f32>(x_1977.z, x_1977.z, x_1977.z)) + x_1980);
        let x_1982 : vec3<f32> = u_xlat25;
        let x_1983 : i32 = u_xlati7;
        let x_1986 : i32 = u_xlati7;
        let x_1990 : vec4<f32> = x_1926.x_AdditionalLightsWorldToLights[((x_1983 + 3i) / 4i)][((x_1986 + 3i) % 4i)];
        u_xlat25 = (x_1982 + vec3<f32>(x_1990.x, x_1990.y, x_1990.w));
        let x_1993 : vec3<f32> = u_xlat25;
        let x_1995 : vec3<f32> = u_xlat25;
        let x_1997 : vec2<f32> = (vec2<f32>(x_1993.x, x_1993.y) / vec2<f32>(x_1995.z, x_1995.z));
        let x_1998 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1997.x, x_1997.y, x_1998.z);
        let x_2000 : vec3<f32> = u_xlat25;
        let x_2003 : vec2<f32> = ((vec2<f32>(x_2000.x, x_2000.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2004 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2003.x, x_2003.y, x_2004.z);
        let x_2006 : vec3<f32> = u_xlat25;
        let x_2010 : vec2<f32> = clamp(vec2<f32>(x_2006.x, x_2006.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2011 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2010.x, x_2010.y, x_2011.z);
        let x_2013 : u32 = u_xlatu40;
        let x_2016 : vec4<f32> = x_1926.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2013)];
        let x_2018 : vec3<f32> = u_xlat25;
        let x_2021 : u32 = u_xlatu40;
        let x_2024 : vec4<f32> = x_1926.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2021)];
        let x_2026 : vec2<f32> = ((vec2<f32>(x_2016.x, x_2016.y) * vec2<f32>(x_2018.x, x_2018.y)) + vec2<f32>(x_2024.z, x_2024.w));
        let x_2027 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2026.x, x_2026.y, x_2027.z);
      } else {
        let x_2031 : i32 = u_xlati59;
        u_xlatb59 = (x_2031 == 1i);
        let x_2033 : bool = u_xlatb59;
        u_xlati59 = select(0i, 1i, x_2033);
        let x_2035 : i32 = u_xlati59;
        if ((x_2035 != 0i)) {
          let x_2039 : vec3<f32> = vs_TEXCOORD1;
          let x_2041 : i32 = u_xlati7;
          let x_2044 : i32 = u_xlati7;
          let x_2048 : vec4<f32> = x_1926.x_AdditionalLightsWorldToLights[((x_2041 + 1i) / 4i)][((x_2044 + 1i) % 4i)];
          let x_2050 : vec2<f32> = (vec2<f32>(x_2039.y, x_2039.y) * vec2<f32>(x_2048.x, x_2048.y));
          let x_2051 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2050.x, x_2050.y, x_2051.z, x_2051.w);
          let x_2053 : i32 = u_xlati7;
          let x_2055 : i32 = u_xlati7;
          let x_2058 : vec4<f32> = x_1926.x_AdditionalLightsWorldToLights[(x_2053 / 4i)][(x_2055 % 4i)];
          let x_2060 : vec3<f32> = vs_TEXCOORD1;
          let x_2063 : vec4<f32> = u_xlat8;
          let x_2065 : vec2<f32> = ((vec2<f32>(x_2058.x, x_2058.y) * vec2<f32>(x_2060.x, x_2060.x)) + vec2<f32>(x_2063.x, x_2063.y));
          let x_2066 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2065.x, x_2065.y, x_2066.z, x_2066.w);
          let x_2068 : i32 = u_xlati7;
          let x_2071 : i32 = u_xlati7;
          let x_2075 : vec4<f32> = x_1926.x_AdditionalLightsWorldToLights[((x_2068 + 2i) / 4i)][((x_2071 + 2i) % 4i)];
          let x_2077 : vec3<f32> = vs_TEXCOORD1;
          let x_2080 : vec4<f32> = u_xlat8;
          let x_2082 : vec2<f32> = ((vec2<f32>(x_2075.x, x_2075.y) * vec2<f32>(x_2077.z, x_2077.z)) + vec2<f32>(x_2080.x, x_2080.y));
          let x_2083 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2082.x, x_2082.y, x_2083.z, x_2083.w);
          let x_2085 : vec4<f32> = u_xlat8;
          let x_2087 : i32 = u_xlati7;
          let x_2090 : i32 = u_xlati7;
          let x_2094 : vec4<f32> = x_1926.x_AdditionalLightsWorldToLights[((x_2087 + 3i) / 4i)][((x_2090 + 3i) % 4i)];
          let x_2096 : vec2<f32> = (vec2<f32>(x_2085.x, x_2085.y) + vec2<f32>(x_2094.x, x_2094.y));
          let x_2097 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2096.x, x_2096.y, x_2097.z, x_2097.w);
          let x_2099 : vec4<f32> = u_xlat8;
          let x_2102 : vec2<f32> = ((vec2<f32>(x_2099.x, x_2099.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2103 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2102.x, x_2102.y, x_2103.z, x_2103.w);
          let x_2105 : vec4<f32> = u_xlat8;
          let x_2107 : vec2<f32> = fract(vec2<f32>(x_2105.x, x_2105.y));
          let x_2108 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2107.x, x_2107.y, x_2108.z, x_2108.w);
          let x_2110 : u32 = u_xlatu40;
          let x_2113 : vec4<f32> = x_1926.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2110)];
          let x_2115 : vec4<f32> = u_xlat8;
          let x_2118 : u32 = u_xlatu40;
          let x_2121 : vec4<f32> = x_1926.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2118)];
          let x_2123 : vec2<f32> = ((vec2<f32>(x_2113.x, x_2113.y) * vec2<f32>(x_2115.x, x_2115.y)) + vec2<f32>(x_2121.z, x_2121.w));
          let x_2124 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2123.x, x_2123.y, x_2124.z);
        } else {
          let x_2127 : vec3<f32> = vs_TEXCOORD1;
          let x_2129 : i32 = u_xlati7;
          let x_2132 : i32 = u_xlati7;
          let x_2136 : vec4<f32> = x_1926.x_AdditionalLightsWorldToLights[((x_2129 + 1i) / 4i)][((x_2132 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_2127.y, x_2127.y, x_2127.y, x_2127.y) * x_2136);
          let x_2138 : i32 = u_xlati7;
          let x_2140 : i32 = u_xlati7;
          let x_2143 : vec4<f32> = x_1926.x_AdditionalLightsWorldToLights[(x_2138 / 4i)][(x_2140 % 4i)];
          let x_2144 : vec3<f32> = vs_TEXCOORD1;
          let x_2147 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_2143 * vec4<f32>(x_2144.x, x_2144.x, x_2144.x, x_2144.x)) + x_2147);
          let x_2149 : i32 = u_xlati7;
          let x_2152 : i32 = u_xlati7;
          let x_2156 : vec4<f32> = x_1926.x_AdditionalLightsWorldToLights[((x_2149 + 2i) / 4i)][((x_2152 + 2i) % 4i)];
          let x_2157 : vec3<f32> = vs_TEXCOORD1;
          let x_2160 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_2156 * vec4<f32>(x_2157.z, x_2157.z, x_2157.z, x_2157.z)) + x_2160);
          let x_2162 : vec4<f32> = u_xlat8;
          let x_2163 : i32 = u_xlati7;
          let x_2166 : i32 = u_xlati7;
          let x_2170 : vec4<f32> = x_1926.x_AdditionalLightsWorldToLights[((x_2163 + 3i) / 4i)][((x_2166 + 3i) % 4i)];
          u_xlat8 = (x_2162 + x_2170);
          let x_2172 : vec4<f32> = u_xlat8;
          let x_2174 : vec4<f32> = u_xlat8;
          let x_2176 : vec3<f32> = (vec3<f32>(x_2172.x, x_2172.y, x_2172.z) / vec3<f32>(x_2174.w, x_2174.w, x_2174.w));
          let x_2177 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2176.x, x_2176.y, x_2176.z, x_2177.w);
          let x_2179 : vec4<f32> = u_xlat8;
          let x_2181 : vec4<f32> = u_xlat8;
          u_xlat59 = dot(vec3<f32>(x_2179.x, x_2179.y, x_2179.z), vec3<f32>(x_2181.x, x_2181.y, x_2181.z));
          let x_2184 : f32 = u_xlat59;
          u_xlat59 = inverseSqrt(x_2184);
          let x_2186 : f32 = u_xlat59;
          let x_2188 : vec4<f32> = u_xlat8;
          let x_2190 : vec3<f32> = (vec3<f32>(x_2186, x_2186, x_2186) * vec3<f32>(x_2188.x, x_2188.y, x_2188.z));
          let x_2191 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2190.x, x_2190.y, x_2190.z, x_2191.w);
          let x_2193 : vec4<f32> = u_xlat8;
          u_xlat59 = dot(abs(vec3<f32>(x_2193.x, x_2193.y, x_2193.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2198 : f32 = u_xlat59;
          u_xlat59 = max(x_2198, 0.000001f);
          let x_2201 : f32 = u_xlat59;
          u_xlat59 = (1.0f / x_2201);
          let x_2203 : f32 = u_xlat59;
          let x_2205 : vec4<f32> = u_xlat8;
          let x_2207 : vec3<f32> = (vec3<f32>(x_2203, x_2203, x_2203) * vec3<f32>(x_2205.z, x_2205.x, x_2205.y));
          let x_2208 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2207.x, x_2207.y, x_2207.z, x_2208.w);
          let x_2211 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_2211);
          let x_2215 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_2215, 0.0f, 1.0f);
          let x_2220 : vec4<f32> = u_xlat9;
          let x_2223 : vec4<bool> = (vec4<f32>(x_2220.y, x_2220.y, x_2220.y, x_2220.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2224 : vec2<bool> = vec2<bool>(x_2223.x, x_2223.w);
          let x_2225 : vec4<bool> = u_xlatb7;
          u_xlatb7 = vec4<bool>(x_2224.x, x_2225.y, x_2225.z, x_2224.y);
          let x_2228 : bool = u_xlatb7.x;
          if (x_2228) {
            let x_2233 : f32 = u_xlat9.x;
            x_2229 = x_2233;
          } else {
            let x_2236 : f32 = u_xlat9.x;
            x_2229 = -(x_2236);
          }
          let x_2238 : f32 = x_2229;
          u_xlat7.x = x_2238;
          let x_2241 : bool = u_xlatb7.w;
          if (x_2241) {
            let x_2246 : f32 = u_xlat9.x;
            x_2242 = x_2246;
          } else {
            let x_2249 : f32 = u_xlat9.x;
            x_2242 = -(x_2249);
          }
          let x_2251 : f32 = x_2242;
          u_xlat7.w = x_2251;
          let x_2253 : vec4<f32> = u_xlat8;
          let x_2255 : f32 = u_xlat59;
          let x_2258 : vec4<f32> = u_xlat7;
          let x_2260 : vec2<f32> = ((vec2<f32>(x_2253.x, x_2253.y) * vec2<f32>(x_2255, x_2255)) + vec2<f32>(x_2258.x, x_2258.w));
          let x_2261 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_2260.x, x_2261.y, x_2261.z, x_2260.y);
          let x_2263 : vec4<f32> = u_xlat7;
          let x_2266 : vec2<f32> = ((vec2<f32>(x_2263.x, x_2263.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2267 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_2266.x, x_2267.y, x_2267.z, x_2266.y);
          let x_2269 : vec4<f32> = u_xlat7;
          let x_2273 : vec2<f32> = clamp(vec2<f32>(x_2269.x, x_2269.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2274 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_2273.x, x_2274.y, x_2274.z, x_2273.y);
          let x_2276 : u32 = u_xlatu40;
          let x_2279 : vec4<f32> = x_1926.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2276)];
          let x_2281 : vec4<f32> = u_xlat7;
          let x_2284 : u32 = u_xlatu40;
          let x_2287 : vec4<f32> = x_1926.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2284)];
          let x_2289 : vec2<f32> = ((vec2<f32>(x_2279.x, x_2279.y) * vec2<f32>(x_2281.x, x_2281.w)) + vec2<f32>(x_2287.z, x_2287.w));
          let x_2290 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2289.x, x_2289.y, x_2290.z);
        }
      }
      let x_2297 : vec3<f32> = u_xlat25;
      let x_2300 : f32 = x_43.x_GlobalMipBias.x;
      let x_2301 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2297.x, x_2297.y), x_2300);
      u_xlat7 = x_2301;
      let x_2303 : bool = u_xlatb4.y;
      if (x_2303) {
        let x_2308 : f32 = u_xlat7.w;
        x_2304 = x_2308;
      } else {
        let x_2311 : f32 = u_xlat7.x;
        x_2304 = x_2311;
      }
      let x_2312 : f32 = x_2304;
      u_xlat59 = x_2312;
      let x_2314 : bool = u_xlatb4.x;
      if (x_2314) {
        let x_2318 : vec4<f32> = u_xlat7;
        x_2315 = vec3<f32>(x_2318.x, x_2318.y, x_2318.z);
      } else {
        let x_2321 : f32 = u_xlat59;
        x_2315 = vec3<f32>(x_2321, x_2321, x_2321);
      }
      let x_2323 : vec3<f32> = x_2315;
      let x_2324 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2323.x, x_2323.y, x_2323.z, x_2324.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_2330 : vec4<f32> = u_xlat7;
    let x_2332 : u32 = u_xlatu40;
    let x_2335 : vec4<f32> = x_1816.x_AdditionalLightsColor[bitcast<i32>(x_2332)];
    let x_2337 : vec3<f32> = (vec3<f32>(x_2330.x, x_2330.y, x_2330.z) * vec3<f32>(x_2335.x, x_2335.y, x_2335.z));
    let x_2338 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2337.x, x_2337.y, x_2337.z, x_2338.w);
    let x_2340 : f32 = u_xlat56;
    let x_2342 : vec4<f32> = u_xlat7;
    let x_2344 : vec3<f32> = (vec3<f32>(x_2340, x_2340, x_2340) * vec3<f32>(x_2342.x, x_2342.y, x_2342.z));
    let x_2345 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2344.x, x_2344.y, x_2344.z, x_2345.w);
    let x_2347 : f32 = u_xlat58;
    let x_2349 : vec4<f32> = u_xlat7;
    let x_2351 : vec3<f32> = (vec3<f32>(x_2347, x_2347, x_2347) * vec3<f32>(x_2349.x, x_2349.y, x_2349.z));
    let x_2352 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2351.x, x_2351.y, x_2351.z, x_2352.w);
    let x_2354 : vec4<f32> = u_xlat1;
    let x_2356 : vec4<f32> = u_xlat6;
    u_xlat40.x = dot(vec3<f32>(x_2354.x, x_2354.y, x_2354.z), vec3<f32>(x_2356.x, x_2356.y, x_2356.z));
    let x_2361 : f32 = u_xlat40.x;
    u_xlat40.x = clamp(x_2361, 0.0f, 1.0f);
    let x_2364 : vec2<f32> = u_xlat40;
    let x_2366 : vec4<f32> = u_xlat7;
    let x_2368 : vec3<f32> = (vec3<f32>(x_2364.x, x_2364.x, x_2364.x) * vec3<f32>(x_2366.x, x_2366.y, x_2366.z));
    let x_2369 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2368.x, x_2368.y, x_2368.z, x_2369.w);
    let x_2371 : vec4<f32> = u_xlat6;
    let x_2373 : vec4<f32> = u_xlat0;
    let x_2376 : vec4<f32> = u_xlat5;
    let x_2378 : vec3<f32> = ((vec3<f32>(x_2371.x, x_2371.y, x_2371.z) * vec3<f32>(x_2373.y, x_2373.z, x_2373.w)) + vec3<f32>(x_2376.x, x_2376.y, x_2376.z));
    let x_2379 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2378.x, x_2378.y, x_2378.z, x_2379.w);

    continuing {
      let x_2381 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2381 + bitcast<u32>(1i));
    }
  }
  let x_2384 : vec3<f32> = u_xlat2;
  let x_2385 : vec4<f32> = u_xlat0;
  let x_2388 : vec4<f32> = u_xlat3;
  u_xlat18 = ((x_2384 * vec3<f32>(x_2385.y, x_2385.z, x_2385.w)) + vec3<f32>(x_2388.x, x_2388.y, x_2388.z));
  let x_2393 : vec4<f32> = u_xlat5;
  let x_2395 : vec3<f32> = u_xlat18;
  let x_2396 : vec3<f32> = (vec3<f32>(x_2393.x, x_2393.y, x_2393.z) + x_2395);
  let x_2397 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2396.x, x_2396.y, x_2396.z, x_2397.w);
  let x_2401 : f32 = x_55.x_Surface;
  u_xlatb18 = (x_2401 == 1.0f);
  let x_2403 : bool = u_xlatb18;
  if (x_2403) {
    let x_2408 : f32 = u_xlat0.x;
    x_2404 = x_2408;
  } else {
    x_2404 = 1.0f;
  }
  let x_2410 : f32 = x_2404;
  SV_Target0.w = x_2410;
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

