struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
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

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
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

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_296 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_1613 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1717 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_73 : f32;
  var u_xlat18 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat54 : f32;
  var u_xlatb36 : bool;
  var x_130 : f32;
  var u_xlatb18 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb1 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb56 : bool;
  var u_xlat40 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat42 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat56 : f32;
  var txVec4 : vec3<f32>;
  var u_xlat57 : f32;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat24 : vec2<f32>;
  var u_xlat48 : vec2<f32>;
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
  var u_xlatb57 : bool;
  var x_1551 : f32;
  var u_xlatu18 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu56 : u32;
  var u_xlati57 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati56 : i32;
  var u_xlat58 : f32;
  var x_1859 : f32;
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
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_67 : f32 = u_xlat1.x;
  let x_70 : f32 = x_56.x_Cutoff;
  u_xlatb0 = (x_67 >= x_70);
  let x_72 : bool = u_xlatb0;
  if (x_72) {
    let x_77 : f32 = u_xlat1.x;
    x_73 = x_77;
  } else {
    x_73 = 0.0f;
  }
  let x_80 : f32 = x_73;
  u_xlat0.x = x_80;
  let x_85 : f32 = u_xlat0.w;
  let x_87 : f32 = x_56.x_BaseColor.w;
  let x_90 : f32 = x_56.x_Cutoff;
  u_xlat18.x = ((x_85 * x_87) + -(x_90));
  let x_96 : f32 = u_xlat1.x;
  u_xlat36 = dpdxCoarse(x_96);
  let x_100 : f32 = u_xlat1.x;
  u_xlat54 = dpdyCoarse(x_100);
  let x_102 : f32 = u_xlat54;
  let x_104 : f32 = u_xlat36;
  u_xlat36 = (abs(x_102) + abs(x_104));
  let x_107 : f32 = u_xlat36;
  u_xlat36 = max(x_107, 0.0001f);
  let x_111 : f32 = u_xlat18.x;
  let x_112 : f32 = u_xlat36;
  u_xlat18.x = (x_111 / x_112);
  let x_116 : f32 = u_xlat18.x;
  u_xlat18.x = (x_116 + 0.5f);
  let x_121 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_121, 0.0f, 1.0f);
  let x_127 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb36 = !((x_127 == 0.0f));
  let x_129 : bool = u_xlatb36;
  if (x_129) {
    let x_134 : f32 = u_xlat18.x;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat0.x;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.x = x_138;
  let x_141 : f32 = u_xlat0.x;
  u_xlat18.x = (x_141 + -0.0001f);
  let x_147 : f32 = u_xlat18.x;
  u_xlatb18 = (x_147 < 0.0f);
  let x_149 : bool = u_xlatb18;
  if (((select(0i, 1i, x_149) * -1i) != 0i)) {
    discard;
  }
  let x_160 : vec3<f32> = vs_TEXCOORD2;
  let x_161 : vec3<f32> = vs_TEXCOORD2;
  u_xlat18.x = dot(x_160, x_161);
  let x_165 : f32 = u_xlat18.x;
  u_xlat18.x = inverseSqrt(x_165);
  let x_169 : vec3<f32> = u_xlat18;
  let x_171 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_169.x, x_169.x, x_169.x) * x_171);
  let x_180 : vec2<f32> = vs_TEXCOORD7;
  let x_182 : f32 = x_43.x_GlobalMipBias.x;
  let x_183 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_180, x_182);
  u_xlat3 = x_183;
  let x_189 : vec2<f32> = vs_TEXCOORD7;
  let x_191 : f32 = x_43.x_GlobalMipBias.x;
  let x_192 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_189, x_191);
  let x_193 : vec3<f32> = vec3<f32>(x_192.x, x_192.y, x_192.z);
  let x_194 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec4<f32> = u_xlat3;
  let x_200 : vec3<f32> = (vec3<f32>(x_196.x, x_196.y, x_196.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_201 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
  let x_203 : vec3<f32> = u_xlat2;
  let x_204 : vec4<f32> = u_xlat3;
  u_xlat18.x = dot(x_203, vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_209 : f32 = u_xlat18.x;
  u_xlat18.x = (x_209 + 0.5f);
  let x_212 : vec3<f32> = u_xlat18;
  let x_214 : vec4<f32> = u_xlat4;
  let x_216 : vec3<f32> = (vec3<f32>(x_212.x, x_212.x, x_212.x) * vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_217 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_220 : f32 = u_xlat3.w;
  u_xlat18.x = max(x_220, 0.0001f);
  let x_223 : vec4<f32> = u_xlat3;
  let x_225 : vec3<f32> = u_xlat18;
  let x_227 : vec3<f32> = (vec3<f32>(x_223.x, x_223.y, x_223.z) / vec3<f32>(x_225.x, x_225.x, x_225.x));
  let x_228 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_232 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_233 : vec2<f32> = vec2<f32>(x_232.x, x_232.y);
  let x_237 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_233.x, x_233.y));
  let x_238 : vec3<f32> = u_xlat18;
  u_xlat18 = vec3<f32>(x_237.x, x_238.y, x_237.y);
  let x_240 : vec3<f32> = u_xlat18;
  let x_242 : vec4<f32> = hlslcc_FragCoord;
  let x_244 : vec2<f32> = (vec2<f32>(x_240.x, x_240.z) * vec2<f32>(x_242.x, x_242.y));
  let x_245 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_244.x, x_244.y, x_245.z, x_245.w);
  let x_249 : f32 = u_xlat4.y;
  let x_252 : f32 = x_43.x_ScaleBiasRt.x;
  let x_255 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat18.x = ((x_249 * x_252) + x_255);
  let x_259 : f32 = u_xlat18.x;
  u_xlat4.z = (-(x_259) + 1.0f);
  let x_269 : vec4<f32> = u_xlat4;
  let x_272 : f32 = x_43.x_GlobalMipBias.x;
  let x_273 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_269.x, x_269.z), x_272);
  u_xlat18.x = x_273.x;
  let x_277 : f32 = u_xlat18.x;
  u_xlat54 = (x_277 + -1.0f);
  let x_282 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_283 : f32 = u_xlat54;
  u_xlat54 = ((x_282 * x_283) + 1.0f);
  let x_287 : f32 = u_xlat18.x;
  u_xlat18.x = min(x_287, 1.0f);
  let x_298 : f32 = x_296.x_MainLightShadowParams.y;
  u_xlatb1 = (0.0f < x_298);
  let x_300 : bool = u_xlatb1;
  if (x_300) {
    let x_304 : f32 = x_296.x_MainLightShadowParams.y;
    u_xlatb1 = (x_304 == 1.0f);
    let x_306 : bool = u_xlatb1;
    if (x_306) {
      let x_310 : vec4<f32> = vs_TEXCOORD6;
      let x_314 : vec4<f32> = x_296.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_310.x, x_310.y, x_310.x, x_310.y) + x_314);
      let x_317 : vec4<f32> = u_xlat4;
      let x_318 : vec2<f32> = vec2<f32>(x_317.x, x_317.y);
      let x_320 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_318.x, x_318.y, x_320);
      let x_333 : vec3<f32> = txVec0;
      let x_335 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_333.xy, x_333.z);
      u_xlat5.x = x_335;
      let x_338 : vec4<f32> = u_xlat4;
      let x_339 : vec2<f32> = vec2<f32>(x_338.z, x_338.w);
      let x_341 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_339.x, x_339.y, x_341);
      let x_348 : vec3<f32> = txVec1;
      let x_350 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_348.xy, x_348.z);
      u_xlat5.y = x_350;
      let x_352 : vec4<f32> = vs_TEXCOORD6;
      let x_356 : vec4<f32> = x_296.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_352.x, x_352.y, x_352.x, x_352.y) + x_356);
      let x_359 : vec4<f32> = u_xlat4;
      let x_360 : vec2<f32> = vec2<f32>(x_359.x, x_359.y);
      let x_362 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_360.x, x_360.y, x_362);
      let x_369 : vec3<f32> = txVec2;
      let x_371 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_369.xy, x_369.z);
      u_xlat5.z = x_371;
      let x_374 : vec4<f32> = u_xlat4;
      let x_375 : vec2<f32> = vec2<f32>(x_374.z, x_374.w);
      let x_377 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_375.x, x_375.y, x_377);
      let x_384 : vec3<f32> = txVec3;
      let x_386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_384.xy, x_384.z);
      u_xlat5.w = x_386;
      let x_388 : vec4<f32> = u_xlat5;
      u_xlat1.x = dot(x_388, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_396 : f32 = x_296.x_MainLightShadowParams.y;
      u_xlatb56 = (x_396 == 2.0f);
      let x_399 : bool = u_xlatb56;
      if (x_399) {
        let x_402 : vec4<f32> = vs_TEXCOORD6;
        let x_406 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_410 : vec2<f32> = ((vec2<f32>(x_402.x, x_402.y) * vec2<f32>(x_406.z, x_406.w)) + vec2<f32>(0.5f, 0.5f));
        let x_411 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_410.x, x_410.y, x_411.z, x_411.w);
        let x_413 : vec4<f32> = u_xlat4;
        let x_415 : vec2<f32> = floor(vec2<f32>(x_413.x, x_413.y));
        let x_416 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
        let x_420 : vec4<f32> = vs_TEXCOORD6;
        let x_423 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_426 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_420.x, x_420.y) * vec2<f32>(x_423.z, x_423.w)) + -(vec2<f32>(x_426.x, x_426.y)));
        let x_430 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_430.x, x_430.x, x_430.y, x_430.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_435 : vec4<f32> = u_xlat5;
        let x_437 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_435.x, x_435.x, x_435.z, x_435.z) * vec4<f32>(x_437.x, x_437.x, x_437.z, x_437.z));
        let x_440 : vec4<f32> = u_xlat6;
        let x_444 : vec2<f32> = (vec2<f32>(x_440.y, x_440.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_445 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_444.x, x_445.y, x_444.y, x_445.w);
        let x_447 : vec4<f32> = u_xlat6;
        let x_450 : vec2<f32> = u_xlat40;
        let x_452 : vec2<f32> = ((vec2<f32>(x_447.x, x_447.z) * vec2<f32>(0.5f, 0.5f)) + -(x_450));
        let x_453 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_452.x, x_452.y, x_453.z, x_453.w);
        let x_456 : vec2<f32> = u_xlat40;
        u_xlat42 = (-(x_456) + vec2<f32>(1.0f, 1.0f));
        let x_460 : vec2<f32> = u_xlat40;
        let x_462 : vec2<f32> = min(x_460, vec2<f32>(0.0f, 0.0f));
        let x_463 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_462.x, x_462.y, x_463.z, x_463.w);
        let x_465 : vec4<f32> = u_xlat7;
        let x_468 : vec4<f32> = u_xlat7;
        let x_471 : vec2<f32> = u_xlat42;
        let x_472 : vec2<f32> = ((-(vec2<f32>(x_465.x, x_465.y)) * vec2<f32>(x_468.x, x_468.y)) + x_471);
        let x_473 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_472.x, x_472.y, x_473.z, x_473.w);
        let x_475 : vec2<f32> = u_xlat40;
        u_xlat40 = max(x_475, vec2<f32>(0.0f, 0.0f));
        let x_477 : vec2<f32> = u_xlat40;
        let x_479 : vec2<f32> = u_xlat40;
        let x_481 : vec4<f32> = u_xlat5;
        u_xlat40 = ((-(x_477) * x_479) + vec2<f32>(x_481.y, x_481.w));
        let x_484 : vec4<f32> = u_xlat7;
        let x_486 : vec2<f32> = (vec2<f32>(x_484.x, x_484.y) + vec2<f32>(1.0f, 1.0f));
        let x_487 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_486.x, x_486.y, x_487.z, x_487.w);
        let x_489 : vec2<f32> = u_xlat40;
        u_xlat40 = (x_489 + vec2<f32>(1.0f, 1.0f));
        let x_492 : vec4<f32> = u_xlat6;
        let x_496 : vec2<f32> = (vec2<f32>(x_492.x, x_492.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_497 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_496.x, x_496.y, x_497.z, x_497.w);
        let x_499 : vec2<f32> = u_xlat42;
        let x_500 : vec2<f32> = (x_499 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_501 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_500.x, x_500.y, x_501.z, x_501.w);
        let x_503 : vec4<f32> = u_xlat7;
        let x_505 : vec2<f32> = (vec2<f32>(x_503.x, x_503.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_506 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_505.x, x_505.y, x_506.z, x_506.w);
        let x_509 : vec2<f32> = u_xlat40;
        let x_510 : vec2<f32> = (x_509 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_511 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_510.x, x_510.y, x_511.z, x_511.w);
        let x_513 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_513.y, x_513.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_517 : f32 = u_xlat7.x;
        u_xlat8.z = x_517;
        let x_520 : f32 = u_xlat40.x;
        u_xlat8.w = x_520;
        let x_523 : f32 = u_xlat9.x;
        u_xlat6.z = x_523;
        let x_526 : f32 = u_xlat5.x;
        u_xlat6.w = x_526;
        let x_529 : vec4<f32> = u_xlat6;
        let x_531 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_529.z, x_529.w, x_529.x, x_529.z) + vec4<f32>(x_531.z, x_531.w, x_531.x, x_531.z));
        let x_535 : f32 = u_xlat8.y;
        u_xlat7.z = x_535;
        let x_538 : f32 = u_xlat40.y;
        u_xlat7.w = x_538;
        let x_541 : f32 = u_xlat6.y;
        u_xlat9.z = x_541;
        let x_544 : f32 = u_xlat5.z;
        u_xlat9.w = x_544;
        let x_546 : vec4<f32> = u_xlat7;
        let x_548 : vec4<f32> = u_xlat9;
        let x_550 : vec3<f32> = (vec3<f32>(x_546.z, x_546.y, x_546.w) + vec3<f32>(x_548.z, x_548.y, x_548.w));
        let x_551 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
        let x_553 : vec4<f32> = u_xlat6;
        let x_555 : vec4<f32> = u_xlat10;
        let x_557 : vec3<f32> = (vec3<f32>(x_553.x, x_553.z, x_553.w) / vec3<f32>(x_555.z, x_555.w, x_555.y));
        let x_558 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
        let x_560 : vec4<f32> = u_xlat6;
        let x_565 : vec3<f32> = (vec3<f32>(x_560.x, x_560.y, x_560.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_566 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
        let x_568 : vec4<f32> = u_xlat9;
        let x_570 : vec4<f32> = u_xlat5;
        let x_572 : vec3<f32> = (vec3<f32>(x_568.z, x_568.y, x_568.w) / vec3<f32>(x_570.x, x_570.y, x_570.z));
        let x_573 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
        let x_575 : vec4<f32> = u_xlat7;
        let x_577 : vec3<f32> = (vec3<f32>(x_575.x, x_575.y, x_575.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_578 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
        let x_580 : vec4<f32> = u_xlat6;
        let x_583 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_585 : vec3<f32> = (vec3<f32>(x_580.y, x_580.x, x_580.z) * vec3<f32>(x_583.x, x_583.x, x_583.x));
        let x_586 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
        let x_588 : vec4<f32> = u_xlat7;
        let x_591 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_593 : vec3<f32> = (vec3<f32>(x_588.x, x_588.y, x_588.z) * vec3<f32>(x_591.y, x_591.y, x_591.y));
        let x_594 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
        let x_597 : f32 = u_xlat7.x;
        u_xlat6.w = x_597;
        let x_599 : vec4<f32> = u_xlat4;
        let x_602 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_605 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_599.x, x_599.y, x_599.x, x_599.y) * vec4<f32>(x_602.x, x_602.y, x_602.x, x_602.y)) + vec4<f32>(x_605.y, x_605.w, x_605.x, x_605.w));
        let x_608 : vec4<f32> = u_xlat4;
        let x_611 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_614 : vec4<f32> = u_xlat6;
        u_xlat40 = ((vec2<f32>(x_608.x, x_608.y) * vec2<f32>(x_611.x, x_611.y)) + vec2<f32>(x_614.z, x_614.w));
        let x_618 : f32 = u_xlat6.y;
        u_xlat7.w = x_618;
        let x_620 : vec4<f32> = u_xlat7;
        let x_621 : vec2<f32> = vec2<f32>(x_620.y, x_620.z);
        let x_622 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_622.x, x_621.x, x_622.z, x_621.y);
        let x_624 : vec4<f32> = u_xlat4;
        let x_627 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_630 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_624.x, x_624.y, x_624.x, x_624.y) * vec4<f32>(x_627.x, x_627.y, x_627.x, x_627.y)) + vec4<f32>(x_630.x, x_630.y, x_630.z, x_630.y));
        let x_633 : vec4<f32> = u_xlat4;
        let x_636 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_639 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_633.x, x_633.y, x_633.x, x_633.y) * vec4<f32>(x_636.x, x_636.y, x_636.x, x_636.y)) + vec4<f32>(x_639.w, x_639.y, x_639.w, x_639.z));
        let x_642 : vec4<f32> = u_xlat4;
        let x_645 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_648 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_642.x, x_642.y, x_642.x, x_642.y) * vec4<f32>(x_645.x, x_645.y, x_645.x, x_645.y)) + vec4<f32>(x_648.x, x_648.w, x_648.z, x_648.w));
        let x_652 : vec4<f32> = u_xlat5;
        let x_654 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_652.x, x_652.x, x_652.x, x_652.y) * vec4<f32>(x_654.z, x_654.w, x_654.y, x_654.z));
        let x_658 : vec4<f32> = u_xlat5;
        let x_660 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_658.y, x_658.y, x_658.z, x_658.z) * x_660);
        let x_664 : f32 = u_xlat5.z;
        let x_666 : f32 = u_xlat10.y;
        u_xlat56 = (x_664 * x_666);
        let x_669 : vec4<f32> = u_xlat8;
        let x_670 : vec2<f32> = vec2<f32>(x_669.x, x_669.y);
        let x_672 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_670.x, x_670.y, x_672);
        let x_680 : vec3<f32> = txVec4;
        let x_682 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_680.xy, x_680.z);
        u_xlat57 = x_682;
        let x_684 : vec4<f32> = u_xlat8;
        let x_685 : vec2<f32> = vec2<f32>(x_684.z, x_684.w);
        let x_687 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_685.x, x_685.y, x_687);
        let x_694 : vec3<f32> = txVec5;
        let x_696 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_694.xy, x_694.z);
        u_xlat4.x = x_696;
        let x_699 : f32 = u_xlat4.x;
        let x_701 : f32 = u_xlat11.y;
        u_xlat4.x = (x_699 * x_701);
        let x_705 : f32 = u_xlat11.x;
        let x_706 : f32 = u_xlat57;
        let x_709 : f32 = u_xlat4.x;
        u_xlat57 = ((x_705 * x_706) + x_709);
        let x_712 : vec2<f32> = u_xlat40;
        let x_714 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_712.x, x_712.y, x_714);
        let x_721 : vec3<f32> = txVec6;
        let x_723 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_721.xy, x_721.z);
        u_xlat4.x = x_723;
        let x_726 : f32 = u_xlat11.z;
        let x_728 : f32 = u_xlat4.x;
        let x_730 : f32 = u_xlat57;
        u_xlat57 = ((x_726 * x_728) + x_730);
        let x_733 : vec4<f32> = u_xlat7;
        let x_734 : vec2<f32> = vec2<f32>(x_733.x, x_733.y);
        let x_736 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_734.x, x_734.y, x_736);
        let x_743 : vec3<f32> = txVec7;
        let x_745 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_743.xy, x_743.z);
        u_xlat4.x = x_745;
        let x_748 : f32 = u_xlat11.w;
        let x_750 : f32 = u_xlat4.x;
        let x_752 : f32 = u_xlat57;
        u_xlat57 = ((x_748 * x_750) + x_752);
        let x_755 : vec4<f32> = u_xlat9;
        let x_756 : vec2<f32> = vec2<f32>(x_755.x, x_755.y);
        let x_758 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_756.x, x_756.y, x_758);
        let x_765 : vec3<f32> = txVec8;
        let x_767 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_765.xy, x_765.z);
        u_xlat4.x = x_767;
        let x_770 : f32 = u_xlat12.x;
        let x_772 : f32 = u_xlat4.x;
        let x_774 : f32 = u_xlat57;
        u_xlat57 = ((x_770 * x_772) + x_774);
        let x_777 : vec4<f32> = u_xlat9;
        let x_778 : vec2<f32> = vec2<f32>(x_777.z, x_777.w);
        let x_780 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_778.x, x_778.y, x_780);
        let x_787 : vec3<f32> = txVec9;
        let x_789 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_787.xy, x_787.z);
        u_xlat4.x = x_789;
        let x_792 : f32 = u_xlat12.y;
        let x_794 : f32 = u_xlat4.x;
        let x_796 : f32 = u_xlat57;
        u_xlat57 = ((x_792 * x_794) + x_796);
        let x_799 : vec4<f32> = u_xlat7;
        let x_800 : vec2<f32> = vec2<f32>(x_799.z, x_799.w);
        let x_802 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_800.x, x_800.y, x_802);
        let x_809 : vec3<f32> = txVec10;
        let x_811 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_809.xy, x_809.z);
        u_xlat4.x = x_811;
        let x_814 : f32 = u_xlat12.z;
        let x_816 : f32 = u_xlat4.x;
        let x_818 : f32 = u_xlat57;
        u_xlat57 = ((x_814 * x_816) + x_818);
        let x_821 : vec4<f32> = u_xlat6;
        let x_822 : vec2<f32> = vec2<f32>(x_821.x, x_821.y);
        let x_824 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_822.x, x_822.y, x_824);
        let x_831 : vec3<f32> = txVec11;
        let x_833 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_831.xy, x_831.z);
        u_xlat4.x = x_833;
        let x_836 : f32 = u_xlat12.w;
        let x_838 : f32 = u_xlat4.x;
        let x_840 : f32 = u_xlat57;
        u_xlat57 = ((x_836 * x_838) + x_840);
        let x_843 : vec4<f32> = u_xlat6;
        let x_844 : vec2<f32> = vec2<f32>(x_843.z, x_843.w);
        let x_846 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_844.x, x_844.y, x_846);
        let x_853 : vec3<f32> = txVec12;
        let x_855 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_853.xy, x_853.z);
        u_xlat4.x = x_855;
        let x_857 : f32 = u_xlat56;
        let x_859 : f32 = u_xlat4.x;
        let x_861 : f32 = u_xlat57;
        u_xlat1.x = ((x_857 * x_859) + x_861);
      } else {
        let x_865 : vec4<f32> = vs_TEXCOORD6;
        let x_868 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_871 : vec2<f32> = ((vec2<f32>(x_865.x, x_865.y) * vec2<f32>(x_868.z, x_868.w)) + vec2<f32>(0.5f, 0.5f));
        let x_872 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_871.x, x_871.y, x_872.z, x_872.w);
        let x_874 : vec4<f32> = u_xlat4;
        let x_876 : vec2<f32> = floor(vec2<f32>(x_874.x, x_874.y));
        let x_877 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_876.x, x_876.y, x_877.z, x_877.w);
        let x_879 : vec4<f32> = vs_TEXCOORD6;
        let x_882 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_885 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_879.x, x_879.y) * vec2<f32>(x_882.z, x_882.w)) + -(vec2<f32>(x_885.x, x_885.y)));
        let x_889 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_889.x, x_889.x, x_889.y, x_889.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_892 : vec4<f32> = u_xlat5;
        let x_894 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_892.x, x_892.x, x_892.z, x_892.z) * vec4<f32>(x_894.x, x_894.x, x_894.z, x_894.z));
        let x_897 : vec4<f32> = u_xlat6;
        let x_901 : vec2<f32> = (vec2<f32>(x_897.y, x_897.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_902 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_902.x, x_901.x, x_902.z, x_901.y);
        let x_904 : vec4<f32> = u_xlat6;
        let x_907 : vec2<f32> = u_xlat40;
        let x_909 : vec2<f32> = ((vec2<f32>(x_904.x, x_904.z) * vec2<f32>(0.5f, 0.5f)) + -(x_907));
        let x_910 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_909.x, x_910.y, x_909.y, x_910.w);
        let x_912 : vec2<f32> = u_xlat40;
        let x_914 : vec2<f32> = (-(x_912) + vec2<f32>(1.0f, 1.0f));
        let x_915 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_914.x, x_914.y, x_915.z, x_915.w);
        let x_917 : vec2<f32> = u_xlat40;
        u_xlat42 = min(x_917, vec2<f32>(0.0f, 0.0f));
        let x_919 : vec2<f32> = u_xlat42;
        let x_921 : vec2<f32> = u_xlat42;
        let x_923 : vec4<f32> = u_xlat6;
        let x_925 : vec2<f32> = ((-(x_919) * x_921) + vec2<f32>(x_923.x, x_923.y));
        let x_926 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_925.x, x_925.y, x_926.z, x_926.w);
        let x_928 : vec2<f32> = u_xlat40;
        u_xlat42 = max(x_928, vec2<f32>(0.0f, 0.0f));
        let x_931 : vec2<f32> = u_xlat42;
        let x_933 : vec2<f32> = u_xlat42;
        let x_935 : vec4<f32> = u_xlat5;
        let x_937 : vec2<f32> = ((-(x_931) * x_933) + vec2<f32>(x_935.y, x_935.w));
        let x_938 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_937.x, x_938.y, x_937.y);
        let x_940 : vec4<f32> = u_xlat6;
        let x_943 : vec2<f32> = (vec2<f32>(x_940.x, x_940.y) + vec2<f32>(2.0f, 2.0f));
        let x_944 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_943.x, x_943.y, x_944.z, x_944.w);
        let x_946 : vec3<f32> = u_xlat23;
        let x_948 : vec2<f32> = (vec2<f32>(x_946.x, x_946.z) + vec2<f32>(2.0f, 2.0f));
        let x_949 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_949.x, x_948.x, x_949.z, x_948.y);
        let x_952 : f32 = u_xlat5.y;
        u_xlat8.z = (x_952 * 0.081632003f);
        let x_956 : vec4<f32> = u_xlat5;
        let x_959 : vec3<f32> = (vec3<f32>(x_956.z, x_956.x, x_956.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_960 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
        let x_962 : vec4<f32> = u_xlat6;
        let x_965 : vec2<f32> = (vec2<f32>(x_962.x, x_962.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_966 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_965.x, x_965.y, x_966.z, x_966.w);
        let x_969 : f32 = u_xlat9.y;
        u_xlat8.x = x_969;
        let x_971 : vec2<f32> = u_xlat40;
        let x_978 : vec2<f32> = ((vec2<f32>(x_971.x, x_971.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_979 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_979.x, x_978.x, x_979.z, x_978.y);
        let x_981 : vec2<f32> = u_xlat40;
        let x_985 : vec2<f32> = ((vec2<f32>(x_981.x, x_981.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_986 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_985.x, x_986.y, x_985.y, x_986.w);
        let x_989 : f32 = u_xlat5.x;
        u_xlat6.y = x_989;
        let x_992 : f32 = u_xlat7.y;
        u_xlat6.w = x_992;
        let x_994 : vec4<f32> = u_xlat6;
        let x_995 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_994 + x_995);
        let x_997 : vec2<f32> = u_xlat40;
        let x_1000 : vec2<f32> = ((vec2<f32>(x_997.y, x_997.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1001 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1001.x, x_1000.x, x_1001.z, x_1000.y);
        let x_1003 : vec2<f32> = u_xlat40;
        let x_1006 : vec2<f32> = ((vec2<f32>(x_1003.y, x_1003.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1007 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1006.x, x_1007.y, x_1006.y, x_1007.w);
        let x_1010 : f32 = u_xlat5.y;
        u_xlat7.y = x_1010;
        let x_1012 : vec4<f32> = u_xlat7;
        let x_1013 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1012 + x_1013);
        let x_1015 : vec4<f32> = u_xlat6;
        let x_1016 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1015 / x_1016);
        let x_1018 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1018 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1024 : vec4<f32> = u_xlat7;
        let x_1025 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1024 / x_1025);
        let x_1027 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1027 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1029 : vec4<f32> = u_xlat6;
        let x_1032 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1029.w, x_1029.x, x_1029.y, x_1029.z) * vec4<f32>(x_1032.x, x_1032.x, x_1032.x, x_1032.x));
        let x_1035 : vec4<f32> = u_xlat7;
        let x_1038 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1035.x, x_1035.w, x_1035.y, x_1035.z) * vec4<f32>(x_1038.y, x_1038.y, x_1038.y, x_1038.y));
        let x_1041 : vec4<f32> = u_xlat6;
        let x_1042 : vec3<f32> = vec3<f32>(x_1041.y, x_1041.z, x_1041.w);
        let x_1043 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1042.x, x_1043.y, x_1042.y, x_1042.z);
        let x_1046 : f32 = u_xlat7.x;
        u_xlat9.y = x_1046;
        let x_1048 : vec4<f32> = u_xlat4;
        let x_1051 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_1054 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1048.x, x_1048.y, x_1048.x, x_1048.y) * vec4<f32>(x_1051.x, x_1051.y, x_1051.x, x_1051.y)) + vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1054.y));
        let x_1057 : vec4<f32> = u_xlat4;
        let x_1060 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_1063 : vec4<f32> = u_xlat9;
        u_xlat40 = ((vec2<f32>(x_1057.x, x_1057.y) * vec2<f32>(x_1060.x, x_1060.y)) + vec2<f32>(x_1063.w, x_1063.y));
        let x_1067 : f32 = u_xlat9.y;
        u_xlat6.y = x_1067;
        let x_1070 : f32 = u_xlat7.z;
        u_xlat9.y = x_1070;
        let x_1072 : vec4<f32> = u_xlat4;
        let x_1075 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_1078 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1072.x, x_1072.y, x_1072.x, x_1072.y) * vec4<f32>(x_1075.x, x_1075.y, x_1075.x, x_1075.y)) + vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1078.y));
        let x_1081 : vec4<f32> = u_xlat4;
        let x_1084 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_1087 : vec4<f32> = u_xlat9;
        let x_1089 : vec2<f32> = ((vec2<f32>(x_1081.x, x_1081.y) * vec2<f32>(x_1084.x, x_1084.y)) + vec2<f32>(x_1087.w, x_1087.y));
        let x_1090 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1089.x, x_1089.y, x_1090.z, x_1090.w);
        let x_1093 : f32 = u_xlat9.y;
        u_xlat6.z = x_1093;
        let x_1096 : vec4<f32> = u_xlat4;
        let x_1099 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_1102 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1096.x, x_1096.y, x_1096.x, x_1096.y) * vec4<f32>(x_1099.x, x_1099.y, x_1099.x, x_1099.y)) + vec4<f32>(x_1102.x, x_1102.y, x_1102.x, x_1102.z));
        let x_1106 : f32 = u_xlat7.w;
        u_xlat9.y = x_1106;
        let x_1109 : vec4<f32> = u_xlat4;
        let x_1112 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_1115 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1109.x, x_1109.y, x_1109.x, x_1109.y) * vec4<f32>(x_1112.x, x_1112.y, x_1112.x, x_1112.y)) + vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1115.y));
        let x_1119 : vec4<f32> = u_xlat4;
        let x_1122 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_1125 : vec4<f32> = u_xlat9;
        u_xlat24 = ((vec2<f32>(x_1119.x, x_1119.y) * vec2<f32>(x_1122.x, x_1122.y)) + vec2<f32>(x_1125.w, x_1125.y));
        let x_1129 : f32 = u_xlat9.y;
        u_xlat6.w = x_1129;
        let x_1132 : vec4<f32> = u_xlat4;
        let x_1135 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_1138 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1132.x, x_1132.y) * vec2<f32>(x_1135.x, x_1135.y)) + vec2<f32>(x_1138.x, x_1138.w));
        let x_1141 : vec4<f32> = u_xlat9;
        let x_1142 : vec3<f32> = vec3<f32>(x_1141.x, x_1141.z, x_1141.w);
        let x_1143 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1142.x, x_1143.y, x_1142.y, x_1142.z);
        let x_1145 : vec4<f32> = u_xlat4;
        let x_1148 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_1151 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1145.x, x_1145.y, x_1145.x, x_1145.y) * vec4<f32>(x_1148.x, x_1148.y, x_1148.x, x_1148.y)) + vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1151.y));
        let x_1155 : vec4<f32> = u_xlat4;
        let x_1158 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_1161 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1155.x, x_1155.y) * vec2<f32>(x_1158.x, x_1158.y)) + vec2<f32>(x_1161.w, x_1161.y));
        let x_1165 : f32 = u_xlat6.x;
        u_xlat7.x = x_1165;
        let x_1167 : vec4<f32> = u_xlat4;
        let x_1170 : vec4<f32> = x_296.x_MainLightShadowmapSize;
        let x_1173 : vec4<f32> = u_xlat7;
        let x_1175 : vec2<f32> = ((vec2<f32>(x_1167.x, x_1167.y) * vec2<f32>(x_1170.x, x_1170.y)) + vec2<f32>(x_1173.x, x_1173.y));
        let x_1176 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1175.x, x_1175.y, x_1176.z, x_1176.w);
        let x_1179 : vec4<f32> = u_xlat5;
        let x_1181 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1179.x, x_1179.x, x_1179.x, x_1179.x) * x_1181);
        let x_1184 : vec4<f32> = u_xlat5;
        let x_1186 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1184.y, x_1184.y, x_1184.y, x_1184.y) * x_1186);
        let x_1189 : vec4<f32> = u_xlat5;
        let x_1191 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1189.z, x_1189.z, x_1189.z, x_1189.z) * x_1191);
        let x_1193 : vec4<f32> = u_xlat5;
        let x_1195 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1193.w, x_1193.w, x_1193.w, x_1193.w) * x_1195);
        let x_1198 : vec4<f32> = u_xlat10;
        let x_1199 : vec2<f32> = vec2<f32>(x_1198.x, x_1198.y);
        let x_1201 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1199.x, x_1199.y, x_1201);
        let x_1208 : vec3<f32> = txVec13;
        let x_1210 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1208.xy, x_1208.z);
        u_xlat56 = x_1210;
        let x_1212 : vec4<f32> = u_xlat10;
        let x_1213 : vec2<f32> = vec2<f32>(x_1212.z, x_1212.w);
        let x_1215 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1213.x, x_1213.y, x_1215);
        let x_1222 : vec3<f32> = txVec14;
        let x_1224 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1222.xy, x_1222.z);
        u_xlat57 = x_1224;
        let x_1225 : f32 = u_xlat57;
        let x_1227 : f32 = u_xlat15.y;
        u_xlat57 = (x_1225 * x_1227);
        let x_1230 : f32 = u_xlat15.x;
        let x_1231 : f32 = u_xlat56;
        let x_1233 : f32 = u_xlat57;
        u_xlat56 = ((x_1230 * x_1231) + x_1233);
        let x_1236 : vec2<f32> = u_xlat40;
        let x_1238 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1236.x, x_1236.y, x_1238);
        let x_1245 : vec3<f32> = txVec15;
        let x_1247 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1245.xy, x_1245.z);
        u_xlat57 = x_1247;
        let x_1249 : f32 = u_xlat15.z;
        let x_1250 : f32 = u_xlat57;
        let x_1252 : f32 = u_xlat56;
        u_xlat56 = ((x_1249 * x_1250) + x_1252);
        let x_1255 : vec4<f32> = u_xlat13;
        let x_1256 : vec2<f32> = vec2<f32>(x_1255.x, x_1255.y);
        let x_1258 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1256.x, x_1256.y, x_1258);
        let x_1265 : vec3<f32> = txVec16;
        let x_1267 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1265.xy, x_1265.z);
        u_xlat57 = x_1267;
        let x_1269 : f32 = u_xlat15.w;
        let x_1270 : f32 = u_xlat57;
        let x_1272 : f32 = u_xlat56;
        u_xlat56 = ((x_1269 * x_1270) + x_1272);
        let x_1275 : vec4<f32> = u_xlat11;
        let x_1276 : vec2<f32> = vec2<f32>(x_1275.x, x_1275.y);
        let x_1278 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1276.x, x_1276.y, x_1278);
        let x_1285 : vec3<f32> = txVec17;
        let x_1287 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1285.xy, x_1285.z);
        u_xlat57 = x_1287;
        let x_1289 : f32 = u_xlat16.x;
        let x_1290 : f32 = u_xlat57;
        let x_1292 : f32 = u_xlat56;
        u_xlat56 = ((x_1289 * x_1290) + x_1292);
        let x_1295 : vec4<f32> = u_xlat11;
        let x_1296 : vec2<f32> = vec2<f32>(x_1295.z, x_1295.w);
        let x_1298 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1296.x, x_1296.y, x_1298);
        let x_1305 : vec3<f32> = txVec18;
        let x_1307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1305.xy, x_1305.z);
        u_xlat57 = x_1307;
        let x_1309 : f32 = u_xlat16.y;
        let x_1310 : f32 = u_xlat57;
        let x_1312 : f32 = u_xlat56;
        u_xlat56 = ((x_1309 * x_1310) + x_1312);
        let x_1315 : vec4<f32> = u_xlat12;
        let x_1316 : vec2<f32> = vec2<f32>(x_1315.x, x_1315.y);
        let x_1318 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1316.x, x_1316.y, x_1318);
        let x_1325 : vec3<f32> = txVec19;
        let x_1327 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1325.xy, x_1325.z);
        u_xlat57 = x_1327;
        let x_1329 : f32 = u_xlat16.z;
        let x_1330 : f32 = u_xlat57;
        let x_1332 : f32 = u_xlat56;
        u_xlat56 = ((x_1329 * x_1330) + x_1332);
        let x_1335 : vec4<f32> = u_xlat13;
        let x_1336 : vec2<f32> = vec2<f32>(x_1335.z, x_1335.w);
        let x_1338 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1336.x, x_1336.y, x_1338);
        let x_1345 : vec3<f32> = txVec20;
        let x_1347 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1345.xy, x_1345.z);
        u_xlat57 = x_1347;
        let x_1349 : f32 = u_xlat16.w;
        let x_1350 : f32 = u_xlat57;
        let x_1352 : f32 = u_xlat56;
        u_xlat56 = ((x_1349 * x_1350) + x_1352);
        let x_1355 : vec4<f32> = u_xlat14;
        let x_1356 : vec2<f32> = vec2<f32>(x_1355.x, x_1355.y);
        let x_1358 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1356.x, x_1356.y, x_1358);
        let x_1365 : vec3<f32> = txVec21;
        let x_1367 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1365.xy, x_1365.z);
        u_xlat57 = x_1367;
        let x_1369 : f32 = u_xlat17.x;
        let x_1370 : f32 = u_xlat57;
        let x_1372 : f32 = u_xlat56;
        u_xlat56 = ((x_1369 * x_1370) + x_1372);
        let x_1375 : vec4<f32> = u_xlat14;
        let x_1376 : vec2<f32> = vec2<f32>(x_1375.z, x_1375.w);
        let x_1378 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1376.x, x_1376.y, x_1378);
        let x_1385 : vec3<f32> = txVec22;
        let x_1387 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1385.xy, x_1385.z);
        u_xlat57 = x_1387;
        let x_1389 : f32 = u_xlat17.y;
        let x_1390 : f32 = u_xlat57;
        let x_1392 : f32 = u_xlat56;
        u_xlat56 = ((x_1389 * x_1390) + x_1392);
        let x_1395 : vec2<f32> = u_xlat24;
        let x_1397 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1395.x, x_1395.y, x_1397);
        let x_1404 : vec3<f32> = txVec23;
        let x_1406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1404.xy, x_1404.z);
        u_xlat57 = x_1406;
        let x_1408 : f32 = u_xlat17.z;
        let x_1409 : f32 = u_xlat57;
        let x_1411 : f32 = u_xlat56;
        u_xlat56 = ((x_1408 * x_1409) + x_1411);
        let x_1414 : vec2<f32> = u_xlat48;
        let x_1416 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1414.x, x_1414.y, x_1416);
        let x_1423 : vec3<f32> = txVec24;
        let x_1425 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1423.xy, x_1423.z);
        u_xlat57 = x_1425;
        let x_1427 : f32 = u_xlat17.w;
        let x_1428 : f32 = u_xlat57;
        let x_1430 : f32 = u_xlat56;
        u_xlat56 = ((x_1427 * x_1428) + x_1430);
        let x_1433 : vec4<f32> = u_xlat9;
        let x_1434 : vec2<f32> = vec2<f32>(x_1433.x, x_1433.y);
        let x_1436 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1434.x, x_1434.y, x_1436);
        let x_1443 : vec3<f32> = txVec25;
        let x_1445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1443.xy, x_1443.z);
        u_xlat57 = x_1445;
        let x_1447 : f32 = u_xlat5.x;
        let x_1448 : f32 = u_xlat57;
        let x_1450 : f32 = u_xlat56;
        u_xlat56 = ((x_1447 * x_1448) + x_1450);
        let x_1453 : vec4<f32> = u_xlat9;
        let x_1454 : vec2<f32> = vec2<f32>(x_1453.z, x_1453.w);
        let x_1456 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1454.x, x_1454.y, x_1456);
        let x_1463 : vec3<f32> = txVec26;
        let x_1465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1463.xy, x_1463.z);
        u_xlat57 = x_1465;
        let x_1467 : f32 = u_xlat5.y;
        let x_1468 : f32 = u_xlat57;
        let x_1470 : f32 = u_xlat56;
        u_xlat56 = ((x_1467 * x_1468) + x_1470);
        let x_1473 : vec2<f32> = u_xlat43;
        let x_1475 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1473.x, x_1473.y, x_1475);
        let x_1482 : vec3<f32> = txVec27;
        let x_1484 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1482.xy, x_1482.z);
        u_xlat57 = x_1484;
        let x_1486 : f32 = u_xlat5.z;
        let x_1487 : f32 = u_xlat57;
        let x_1489 : f32 = u_xlat56;
        u_xlat56 = ((x_1486 * x_1487) + x_1489);
        let x_1492 : vec4<f32> = u_xlat4;
        let x_1493 : vec2<f32> = vec2<f32>(x_1492.x, x_1492.y);
        let x_1495 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1493.x, x_1493.y, x_1495);
        let x_1502 : vec3<f32> = txVec28;
        let x_1504 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1502.xy, x_1502.z);
        u_xlat57 = x_1504;
        let x_1506 : f32 = u_xlat5.w;
        let x_1507 : f32 = u_xlat57;
        let x_1509 : f32 = u_xlat56;
        u_xlat1.x = ((x_1506 * x_1507) + x_1509);
      }
    }
  } else {
    let x_1514 : vec4<f32> = vs_TEXCOORD6;
    let x_1515 : vec2<f32> = vec2<f32>(x_1514.x, x_1514.y);
    let x_1517 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1515.x, x_1515.y, x_1517);
    let x_1524 : vec3<f32> = txVec29;
    let x_1526 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1524.xy, x_1524.z);
    u_xlat1.x = x_1526;
  }
  let x_1529 : f32 = x_296.x_MainLightShadowParams.x;
  u_xlat56 = (-(x_1529) + 1.0f);
  let x_1533 : f32 = u_xlat1.x;
  let x_1535 : f32 = x_296.x_MainLightShadowParams.x;
  let x_1537 : f32 = u_xlat56;
  u_xlat1.x = ((x_1533 * x_1535) + x_1537);
  let x_1541 : f32 = vs_TEXCOORD6.z;
  u_xlatb56 = (0.0f >= x_1541);
  let x_1545 : f32 = vs_TEXCOORD6.z;
  u_xlatb57 = (x_1545 >= 1.0f);
  let x_1547 : bool = u_xlatb56;
  let x_1548 : bool = u_xlatb57;
  u_xlatb56 = (x_1547 | x_1548);
  let x_1550 : bool = u_xlatb56;
  if (x_1550) {
    x_1551 = 1.0f;
  } else {
    let x_1556 : f32 = u_xlat1.x;
    x_1551 = x_1556;
  }
  let x_1557 : f32 = x_1551;
  u_xlat1.x = x_1557;
  let x_1560 : vec3<f32> = vs_TEXCOORD1;
  let x_1563 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1565 : vec3<f32> = (x_1560 + -(x_1563));
  let x_1566 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1565.x, x_1565.y, x_1565.z, x_1566.w);
  let x_1568 : vec4<f32> = u_xlat4;
  let x_1570 : vec4<f32> = u_xlat4;
  u_xlat56 = dot(vec3<f32>(x_1568.x, x_1568.y, x_1568.z), vec3<f32>(x_1570.x, x_1570.y, x_1570.z));
  let x_1573 : f32 = u_xlat56;
  let x_1575 : f32 = x_296.x_MainLightShadowParams.z;
  let x_1578 : f32 = x_296.x_MainLightShadowParams.w;
  u_xlat56 = ((x_1573 * x_1575) + x_1578);
  let x_1580 : f32 = u_xlat56;
  u_xlat56 = clamp(x_1580, 0.0f, 1.0f);
  let x_1583 : f32 = u_xlat1.x;
  u_xlat57 = (-(x_1583) + 1.0f);
  let x_1586 : f32 = u_xlat56;
  let x_1587 : f32 = u_xlat57;
  let x_1590 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1586 * x_1587) + x_1590);
  let x_1593 : f32 = u_xlat54;
  let x_1596 : vec4<f32> = x_43.x_MainLightColor;
  let x_1598 : vec3<f32> = (vec3<f32>(x_1593, x_1593, x_1593) * vec3<f32>(x_1596.x, x_1596.y, x_1596.z));
  let x_1599 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1598.x, x_1598.y, x_1598.z, x_1599.w);
  let x_1601 : vec3<f32> = u_xlat18;
  let x_1603 : vec4<f32> = u_xlat3;
  let x_1605 : vec3<f32> = (vec3<f32>(x_1601.x, x_1601.x, x_1601.x) * vec3<f32>(x_1603.x, x_1603.y, x_1603.z));
  let x_1606 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1605.x, x_1605.y, x_1605.z, x_1606.w);
  let x_1609 : f32 = u_xlat1.x;
  let x_1615 : f32 = x_1613.unity_LightData.z;
  u_xlat18.x = (x_1609 * x_1615);
  let x_1618 : vec3<f32> = u_xlat18;
  let x_1620 : vec4<f32> = u_xlat4;
  let x_1622 : vec3<f32> = (vec3<f32>(x_1618.x, x_1618.x, x_1618.x) * vec3<f32>(x_1620.x, x_1620.y, x_1620.z));
  let x_1623 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1622.x, x_1622.y, x_1622.z, x_1623.w);
  let x_1625 : vec3<f32> = u_xlat2;
  let x_1628 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat18.x = dot(x_1625, vec3<f32>(x_1628.x, x_1628.y, x_1628.z));
  let x_1633 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_1633, 0.0f, 1.0f);
  let x_1636 : vec3<f32> = u_xlat18;
  let x_1638 : vec4<f32> = u_xlat4;
  let x_1640 : vec3<f32> = (vec3<f32>(x_1636.x, x_1636.x, x_1636.x) * vec3<f32>(x_1638.x, x_1638.y, x_1638.z));
  let x_1641 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1640.x, x_1640.y, x_1640.z, x_1641.w);
  let x_1643 : vec4<f32> = u_xlat1;
  let x_1645 : vec4<f32> = u_xlat4;
  let x_1647 : vec3<f32> = (vec3<f32>(x_1643.y, x_1643.z, x_1643.w) * vec3<f32>(x_1645.x, x_1645.y, x_1645.z));
  let x_1648 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1647.x, x_1647.y, x_1647.z, x_1648.w);
  let x_1651 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1653 : f32 = x_1613.unity_LightData.y;
  u_xlat18.x = min(x_1651, x_1653);
  let x_1659 : f32 = u_xlat18.x;
  u_xlatu18 = bitcast<u32>(i32(x_1659));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1671 : u32 = u_xlatu_loop_1;
    let x_1672 : u32 = u_xlatu18;
    if ((x_1671 < x_1672)) {
    } else {
      break;
    }
    let x_1675 : u32 = u_xlatu_loop_1;
    u_xlatu56 = (x_1675 >> 2u);
    let x_1679 : u32 = u_xlatu_loop_1;
    u_xlati57 = bitcast<i32>((x_1679 & 3u));
    let x_1682 : u32 = u_xlatu56;
    let x_1685 : vec4<f32> = x_1613.unity_LightIndices[bitcast<i32>(x_1682)];
    let x_1695 : i32 = u_xlati57;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1700 : vec4<u32> = indexable[x_1695];
    u_xlat56 = dot(x_1685, bitcast<vec4<f32>>(x_1700));
    let x_1704 : f32 = u_xlat56;
    u_xlati56 = i32(x_1704);
    let x_1706 : vec3<f32> = vs_TEXCOORD1;
    let x_1718 : i32 = u_xlati56;
    let x_1720 : vec4<f32> = x_1717.x_AdditionalLightsPosition[x_1718];
    let x_1723 : i32 = u_xlati56;
    let x_1725 : vec4<f32> = x_1717.x_AdditionalLightsPosition[x_1723];
    let x_1727 : vec3<f32> = ((-(x_1706) * vec3<f32>(x_1720.w, x_1720.w, x_1720.w)) + vec3<f32>(x_1725.x, x_1725.y, x_1725.z));
    let x_1728 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1727.x, x_1727.y, x_1727.z, x_1728.w);
    let x_1730 : vec4<f32> = u_xlat6;
    let x_1732 : vec4<f32> = u_xlat6;
    u_xlat57 = dot(vec3<f32>(x_1730.x, x_1730.y, x_1730.z), vec3<f32>(x_1732.x, x_1732.y, x_1732.z));
    let x_1735 : f32 = u_xlat57;
    u_xlat57 = max(x_1735, 6.10351562e-05f);
    let x_1739 : f32 = u_xlat57;
    u_xlat58 = inverseSqrt(x_1739);
    let x_1741 : f32 = u_xlat58;
    let x_1743 : vec4<f32> = u_xlat6;
    let x_1745 : vec3<f32> = (vec3<f32>(x_1741, x_1741, x_1741) * vec3<f32>(x_1743.x, x_1743.y, x_1743.z));
    let x_1746 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1745.x, x_1745.y, x_1745.z, x_1746.w);
    let x_1748 : f32 = u_xlat57;
    u_xlat58 = (1.0f / x_1748);
    let x_1750 : f32 = u_xlat57;
    let x_1751 : i32 = u_xlati56;
    let x_1753 : f32 = x_1717.x_AdditionalLightsAttenuation[x_1751].x;
    u_xlat57 = (x_1750 * x_1753);
    let x_1755 : f32 = u_xlat57;
    let x_1757 : f32 = u_xlat57;
    u_xlat57 = ((-(x_1755) * x_1757) + 1.0f);
    let x_1760 : f32 = u_xlat57;
    u_xlat57 = max(x_1760, 0.0f);
    let x_1762 : f32 = u_xlat57;
    let x_1763 : f32 = u_xlat57;
    u_xlat57 = (x_1762 * x_1763);
    let x_1765 : f32 = u_xlat57;
    let x_1766 : f32 = u_xlat58;
    u_xlat57 = (x_1765 * x_1766);
    let x_1768 : i32 = u_xlati56;
    let x_1770 : vec4<f32> = x_1717.x_AdditionalLightsSpotDir[x_1768];
    let x_1772 : vec4<f32> = u_xlat6;
    u_xlat58 = dot(vec3<f32>(x_1770.x, x_1770.y, x_1770.z), vec3<f32>(x_1772.x, x_1772.y, x_1772.z));
    let x_1775 : f32 = u_xlat58;
    let x_1776 : i32 = u_xlati56;
    let x_1778 : f32 = x_1717.x_AdditionalLightsAttenuation[x_1776].z;
    let x_1780 : i32 = u_xlati56;
    let x_1782 : f32 = x_1717.x_AdditionalLightsAttenuation[x_1780].w;
    u_xlat58 = ((x_1775 * x_1778) + x_1782);
    let x_1784 : f32 = u_xlat58;
    u_xlat58 = clamp(x_1784, 0.0f, 1.0f);
    let x_1786 : f32 = u_xlat58;
    let x_1787 : f32 = u_xlat58;
    u_xlat58 = (x_1786 * x_1787);
    let x_1789 : f32 = u_xlat57;
    let x_1790 : f32 = u_xlat58;
    u_xlat57 = (x_1789 * x_1790);
    let x_1792 : f32 = u_xlat54;
    let x_1794 : i32 = u_xlati56;
    let x_1796 : vec4<f32> = x_1717.x_AdditionalLightsColor[x_1794];
    let x_1798 : vec3<f32> = (vec3<f32>(x_1792, x_1792, x_1792) * vec3<f32>(x_1796.x, x_1796.y, x_1796.z));
    let x_1799 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1798.x, x_1798.y, x_1798.z, x_1799.w);
    let x_1801 : f32 = u_xlat57;
    let x_1803 : vec4<f32> = u_xlat7;
    let x_1805 : vec3<f32> = (vec3<f32>(x_1801, x_1801, x_1801) * vec3<f32>(x_1803.x, x_1803.y, x_1803.z));
    let x_1806 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1805.x, x_1805.y, x_1805.z, x_1806.w);
    let x_1808 : vec3<f32> = u_xlat2;
    let x_1809 : vec4<f32> = u_xlat6;
    u_xlat56 = dot(x_1808, vec3<f32>(x_1809.x, x_1809.y, x_1809.z));
    let x_1812 : f32 = u_xlat56;
    u_xlat56 = clamp(x_1812, 0.0f, 1.0f);
    let x_1814 : f32 = u_xlat56;
    let x_1816 : vec4<f32> = u_xlat7;
    let x_1818 : vec3<f32> = (vec3<f32>(x_1814, x_1814, x_1814) * vec3<f32>(x_1816.x, x_1816.y, x_1816.z));
    let x_1819 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1818.x, x_1818.y, x_1818.z, x_1819.w);
    let x_1821 : vec4<f32> = u_xlat6;
    let x_1823 : vec4<f32> = u_xlat1;
    let x_1826 : vec4<f32> = u_xlat5;
    let x_1828 : vec3<f32> = ((vec3<f32>(x_1821.x, x_1821.y, x_1821.z) * vec3<f32>(x_1823.y, x_1823.z, x_1823.w)) + vec3<f32>(x_1826.x, x_1826.y, x_1826.z));
    let x_1829 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1828.x, x_1828.y, x_1828.z, x_1829.w);

    continuing {
      let x_1831 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1831 + bitcast<u32>(1i));
    }
  }
  let x_1833 : vec4<f32> = u_xlat3;
  let x_1835 : vec4<f32> = u_xlat1;
  let x_1838 : vec4<f32> = u_xlat4;
  let x_1840 : vec3<f32> = ((vec3<f32>(x_1833.x, x_1833.y, x_1833.z) * vec3<f32>(x_1835.y, x_1835.z, x_1835.w)) + vec3<f32>(x_1838.x, x_1838.y, x_1838.z));
  let x_1841 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1840.x, x_1840.y, x_1840.z, x_1841.w);
  let x_1845 : vec4<f32> = u_xlat5;
  let x_1847 : vec4<f32> = u_xlat1;
  let x_1849 : vec3<f32> = (vec3<f32>(x_1845.x, x_1845.y, x_1845.z) + vec3<f32>(x_1847.x, x_1847.y, x_1847.z));
  let x_1850 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1849.x, x_1849.y, x_1849.z, x_1850.w);
  let x_1853 : f32 = x_56.x_Surface;
  u_xlatb18 = (x_1853 == 1.0f);
  let x_1855 : bool = u_xlatb18;
  let x_1856 : bool = u_xlatb36;
  u_xlatb18 = (x_1855 | x_1856);
  let x_1858 : bool = u_xlatb18;
  if (x_1858) {
    let x_1863 : f32 = u_xlat0.x;
    x_1859 = x_1863;
  } else {
    x_1859 = 1.0f;
  }
  let x_1865 : f32 = x_1859;
  SV_Target0.w = x_1865;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

