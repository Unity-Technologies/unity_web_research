struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  x_DitheringTextureInvSize : f32,
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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_184 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(1) @binding(4) var<uniform> x_251 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_1587 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_1836 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1945 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat18 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat54 : f32;
  var u_xlatb36 : bool;
  var x_130 : f32;
  var u_xlatb18 : bool;
  var u_xlatb54 : bool;
  var x_190 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat40 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat42 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat56 : f32;
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
  var u_xlatb1 : bool;
  var x_1538 : f32;
  var u_xlatb5 : vec2<bool>;
  var x_1673 : f32;
  var x_1684 : vec3<f32>;
  var u_xlatu18 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu1 : u32;
  var u_xlati56 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat57 : f32;
  var u_xlatu57 : u32;
  var u_xlati58 : i32;
  var u_xlati57 : i32;
  var u_xlati41 : i32;
  var u_xlatb57 : bool;
  var u_xlat44 : vec2<f32>;
  var u_xlatb41 : vec2<bool>;
  var u_xlat41 : vec2<f32>;
  var x_2239 : f32;
  var x_2252 : f32;
  var x_2304 : f32;
  var x_2315 : vec3<f32>;
  var x_2407 : f32;
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
  let x_60 : vec4<f32> = x_56.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_60.w, x_60.x, x_60.y, x_60.z));
  let x_68 : f32 = u_xlat1.x;
  let x_71 : f32 = x_56.x_Cutoff;
  u_xlatb0 = (x_68 >= x_71);
  let x_73 : bool = u_xlatb0;
  if (x_73) {
    let x_78 : f32 = u_xlat1.x;
    x_74 = x_78;
  } else {
    x_74 = 0.0f;
  }
  let x_81 : f32 = x_74;
  u_xlat0.x = x_81;
  let x_86 : f32 = u_xlat0.w;
  let x_88 : f32 = x_56.x_BaseColor.w;
  let x_91 : f32 = x_56.x_Cutoff;
  u_xlat18.x = ((x_86 * x_88) + -(x_91));
  let x_97 : f32 = u_xlat1.x;
  u_xlat36 = dpdxCoarse(x_97);
  let x_101 : f32 = u_xlat1.x;
  u_xlat54 = dpdyCoarse(x_101);
  let x_103 : f32 = u_xlat54;
  let x_105 : f32 = u_xlat36;
  u_xlat36 = (abs(x_103) + abs(x_105));
  let x_108 : f32 = u_xlat36;
  u_xlat36 = max(x_108, 0.0001f);
  let x_112 : f32 = u_xlat18.x;
  let x_113 : f32 = u_xlat36;
  u_xlat18.x = (x_112 / x_113);
  let x_117 : f32 = u_xlat18.x;
  u_xlat18.x = (x_117 + 0.5f);
  let x_122 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_122, 0.0f, 1.0f);
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
  let x_157 : vec4<f32> = hlslcc_FragCoord;
  let x_161 : f32 = x_43.x_DitheringTextureInvSize;
  let x_163 : vec2<f32> = (vec2<f32>(x_157.x, x_157.y) * vec2<f32>(x_161, x_161));
  let x_164 : vec3<f32> = u_xlat18;
  u_xlat18 = vec3<f32>(x_163.x, x_164.y, x_163.y);
  let x_171 : vec3<f32> = u_xlat18;
  let x_174 : f32 = x_43.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_171.x, x_171.z), x_174);
  u_xlat18.x = x_175.w;
  let x_187 : f32 = x_184.unity_LODFade.x;
  u_xlatb54 = (x_187 >= 0.0f);
  let x_189 : bool = u_xlatb54;
  if (x_189) {
    let x_194 : f32 = u_xlat18.x;
    x_190 = abs(x_194);
  } else {
    let x_198 : f32 = u_xlat18.x;
    x_190 = -(abs(x_198));
  }
  let x_201 : f32 = x_190;
  u_xlat18.x = x_201;
  let x_204 : f32 = u_xlat18.x;
  let x_207 : f32 = x_184.unity_LODFade.x;
  u_xlat18.x = (-(x_204) + x_207);
  let x_211 : f32 = u_xlat18.x;
  u_xlatb18 = (x_211 < 0.0f);
  let x_213 : bool = u_xlatb18;
  if (((select(0i, 1i, x_213) * -1i) != 0i)) {
    discard;
  }
  let x_222 : vec3<f32> = vs_TEXCOORD2;
  let x_223 : vec3<f32> = vs_TEXCOORD2;
  u_xlat18.x = dot(x_222, x_223);
  let x_227 : f32 = u_xlat18.x;
  u_xlat18.x = inverseSqrt(x_227);
  let x_231 : vec3<f32> = u_xlat18;
  let x_233 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_231.x, x_231.x, x_231.x) * x_233);
  let x_242 : vec2<f32> = vs_TEXCOORD7;
  let x_244 : f32 = x_43.x_GlobalMipBias.x;
  let x_245 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_242, x_244);
  u_xlat3 = vec3<f32>(x_245.x, x_245.y, x_245.z);
  let x_255 : f32 = x_251.x_MainLightShadowParams.y;
  u_xlatb18 = (0.0f < x_255);
  let x_257 : bool = u_xlatb18;
  if (x_257) {
    let x_261 : f32 = x_251.x_MainLightShadowParams.y;
    u_xlatb18 = (x_261 == 1.0f);
    let x_263 : bool = u_xlatb18;
    if (x_263) {
      let x_268 : vec4<f32> = vs_TEXCOORD6;
      let x_271 : vec4<f32> = x_251.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_268.x, x_268.y, x_268.x, x_268.y) + x_271);
      let x_274 : vec4<f32> = u_xlat4;
      let x_275 : vec2<f32> = vec2<f32>(x_274.x, x_274.y);
      let x_277 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_275.x, x_275.y, x_277);
      let x_290 : vec3<f32> = txVec0;
      let x_292 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_290.xy, x_290.z);
      u_xlat5.x = x_292;
      let x_295 : vec4<f32> = u_xlat4;
      let x_296 : vec2<f32> = vec2<f32>(x_295.z, x_295.w);
      let x_298 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_296.x, x_296.y, x_298);
      let x_305 : vec3<f32> = txVec1;
      let x_307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_305.xy, x_305.z);
      u_xlat5.y = x_307;
      let x_309 : vec4<f32> = vs_TEXCOORD6;
      let x_313 : vec4<f32> = x_251.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_309.x, x_309.y, x_309.x, x_309.y) + x_313);
      let x_316 : vec4<f32> = u_xlat4;
      let x_317 : vec2<f32> = vec2<f32>(x_316.x, x_316.y);
      let x_319 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_317.x, x_317.y, x_319);
      let x_326 : vec3<f32> = txVec2;
      let x_328 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_326.xy, x_326.z);
      u_xlat5.z = x_328;
      let x_331 : vec4<f32> = u_xlat4;
      let x_332 : vec2<f32> = vec2<f32>(x_331.z, x_331.w);
      let x_334 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_332.x, x_332.y, x_334);
      let x_341 : vec3<f32> = txVec3;
      let x_343 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_341.xy, x_341.z);
      u_xlat5.w = x_343;
      let x_345 : vec4<f32> = u_xlat5;
      u_xlat18.x = dot(x_345, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_352 : f32 = x_251.x_MainLightShadowParams.y;
      u_xlatb54 = (x_352 == 2.0f);
      let x_355 : bool = u_xlatb54;
      if (x_355) {
        let x_358 : vec4<f32> = vs_TEXCOORD6;
        let x_362 : vec4<f32> = x_251.x_MainLightShadowmapSize;
        let x_366 : vec2<f32> = ((vec2<f32>(x_358.x, x_358.y) * vec2<f32>(x_362.z, x_362.w)) + vec2<f32>(0.5f, 0.5f));
        let x_367 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_366.x, x_366.y, x_367.z, x_367.w);
        let x_369 : vec4<f32> = u_xlat4;
        let x_371 : vec2<f32> = floor(vec2<f32>(x_369.x, x_369.y));
        let x_372 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_371.x, x_371.y, x_372.z, x_372.w);
        let x_376 : vec4<f32> = vs_TEXCOORD6;
        let x_379 : vec4<f32> = x_251.x_MainLightShadowmapSize;
        let x_382 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_376.x, x_376.y) * vec2<f32>(x_379.z, x_379.w)) + -(vec2<f32>(x_382.x, x_382.y)));
        let x_386 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_386.x, x_386.x, x_386.y, x_386.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_391 : vec4<f32> = u_xlat5;
        let x_393 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_391.x, x_391.x, x_391.z, x_391.z) * vec4<f32>(x_393.x, x_393.x, x_393.z, x_393.z));
        let x_396 : vec4<f32> = u_xlat6;
        let x_400 : vec2<f32> = (vec2<f32>(x_396.y, x_396.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_401 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_400.x, x_401.y, x_400.y, x_401.w);
        let x_403 : vec4<f32> = u_xlat6;
        let x_406 : vec2<f32> = u_xlat40;
        let x_408 : vec2<f32> = ((vec2<f32>(x_403.x, x_403.z) * vec2<f32>(0.5f, 0.5f)) + -(x_406));
        let x_409 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_408.x, x_408.y, x_409.z, x_409.w);
        let x_412 : vec2<f32> = u_xlat40;
        u_xlat42 = (-(x_412) + vec2<f32>(1.0f, 1.0f));
        let x_417 : vec2<f32> = u_xlat40;
        let x_419 : vec2<f32> = min(x_417, vec2<f32>(0.0f, 0.0f));
        let x_420 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_419.x, x_419.y, x_420.z, x_420.w);
        let x_422 : vec4<f32> = u_xlat7;
        let x_425 : vec4<f32> = u_xlat7;
        let x_428 : vec2<f32> = u_xlat42;
        let x_429 : vec2<f32> = ((-(vec2<f32>(x_422.x, x_422.y)) * vec2<f32>(x_425.x, x_425.y)) + x_428);
        let x_430 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_429.x, x_429.y, x_430.z, x_430.w);
        let x_432 : vec2<f32> = u_xlat40;
        u_xlat40 = max(x_432, vec2<f32>(0.0f, 0.0f));
        let x_434 : vec2<f32> = u_xlat40;
        let x_436 : vec2<f32> = u_xlat40;
        let x_438 : vec4<f32> = u_xlat5;
        u_xlat40 = ((-(x_434) * x_436) + vec2<f32>(x_438.y, x_438.w));
        let x_441 : vec4<f32> = u_xlat7;
        let x_443 : vec2<f32> = (vec2<f32>(x_441.x, x_441.y) + vec2<f32>(1.0f, 1.0f));
        let x_444 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_443.x, x_443.y, x_444.z, x_444.w);
        let x_446 : vec2<f32> = u_xlat40;
        u_xlat40 = (x_446 + vec2<f32>(1.0f, 1.0f));
        let x_449 : vec4<f32> = u_xlat6;
        let x_453 : vec2<f32> = (vec2<f32>(x_449.x, x_449.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_454 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_453.x, x_453.y, x_454.z, x_454.w);
        let x_456 : vec2<f32> = u_xlat42;
        let x_457 : vec2<f32> = (x_456 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_458 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_457.x, x_457.y, x_458.z, x_458.w);
        let x_460 : vec4<f32> = u_xlat7;
        let x_462 : vec2<f32> = (vec2<f32>(x_460.x, x_460.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_463 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_462.x, x_462.y, x_463.z, x_463.w);
        let x_466 : vec2<f32> = u_xlat40;
        let x_467 : vec2<f32> = (x_466 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_468 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_467.x, x_467.y, x_468.z, x_468.w);
        let x_470 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_470.y, x_470.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_474 : f32 = u_xlat7.x;
        u_xlat8.z = x_474;
        let x_477 : f32 = u_xlat40.x;
        u_xlat8.w = x_477;
        let x_480 : f32 = u_xlat9.x;
        u_xlat6.z = x_480;
        let x_483 : f32 = u_xlat5.x;
        u_xlat6.w = x_483;
        let x_486 : vec4<f32> = u_xlat6;
        let x_488 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_486.z, x_486.w, x_486.x, x_486.z) + vec4<f32>(x_488.z, x_488.w, x_488.x, x_488.z));
        let x_492 : f32 = u_xlat8.y;
        u_xlat7.z = x_492;
        let x_495 : f32 = u_xlat40.y;
        u_xlat7.w = x_495;
        let x_498 : f32 = u_xlat6.y;
        u_xlat9.z = x_498;
        let x_501 : f32 = u_xlat5.z;
        u_xlat9.w = x_501;
        let x_503 : vec4<f32> = u_xlat7;
        let x_505 : vec4<f32> = u_xlat9;
        let x_507 : vec3<f32> = (vec3<f32>(x_503.z, x_503.y, x_503.w) + vec3<f32>(x_505.z, x_505.y, x_505.w));
        let x_508 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
        let x_510 : vec4<f32> = u_xlat6;
        let x_512 : vec4<f32> = u_xlat10;
        let x_514 : vec3<f32> = (vec3<f32>(x_510.x, x_510.z, x_510.w) / vec3<f32>(x_512.z, x_512.w, x_512.y));
        let x_515 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
        let x_517 : vec4<f32> = u_xlat6;
        let x_523 : vec3<f32> = (vec3<f32>(x_517.x, x_517.y, x_517.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_524 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
        let x_526 : vec4<f32> = u_xlat9;
        let x_528 : vec4<f32> = u_xlat5;
        let x_530 : vec3<f32> = (vec3<f32>(x_526.z, x_526.y, x_526.w) / vec3<f32>(x_528.x, x_528.y, x_528.z));
        let x_531 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
        let x_533 : vec4<f32> = u_xlat7;
        let x_535 : vec3<f32> = (vec3<f32>(x_533.x, x_533.y, x_533.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_536 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
        let x_538 : vec4<f32> = u_xlat6;
        let x_541 : vec4<f32> = x_251.x_MainLightShadowmapSize;
        let x_543 : vec3<f32> = (vec3<f32>(x_538.y, x_538.x, x_538.z) * vec3<f32>(x_541.x, x_541.x, x_541.x));
        let x_544 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
        let x_546 : vec4<f32> = u_xlat7;
        let x_549 : vec4<f32> = x_251.x_MainLightShadowmapSize;
        let x_551 : vec3<f32> = (vec3<f32>(x_546.x, x_546.y, x_546.z) * vec3<f32>(x_549.y, x_549.y, x_549.y));
        let x_552 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
        let x_555 : f32 = u_xlat7.x;
        u_xlat6.w = x_555;
        let x_557 : vec4<f32> = u_xlat4;
        let x_560 : vec4<f32> = x_251.x_MainLightShadowmapSize;
        let x_563 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_557.x, x_557.y, x_557.x, x_557.y) * vec4<f32>(x_560.x, x_560.y, x_560.x, x_560.y)) + vec4<f32>(x_563.y, x_563.w, x_563.x, x_563.w));
        let x_566 : vec4<f32> = u_xlat4;
        let x_569 : vec4<f32> = x_251.x_MainLightShadowmapSize;
        let x_572 : vec4<f32> = u_xlat6;
        u_xlat40 = ((vec2<f32>(x_566.x, x_566.y) * vec2<f32>(x_569.x, x_569.y)) + vec2<f32>(x_572.z, x_572.w));
        let x_576 : f32 = u_xlat6.y;
        u_xlat7.w = x_576;
        let x_578 : vec4<f32> = u_xlat7;
        let x_579 : vec2<f32> = vec2<f32>(x_578.y, x_578.z);
        let x_580 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_580.x, x_579.x, x_580.z, x_579.y);
        let x_582 : vec4<f32> = u_xlat4;
        let x_585 : vec4<f32> = x_251.x_MainLightShadowmapSize;
        let x_588 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_582.x, x_582.y, x_582.x, x_582.y) * vec4<f32>(x_585.x, x_585.y, x_585.x, x_585.y)) + vec4<f32>(x_588.x, x_588.y, x_588.z, x_588.y));
        let x_591 : vec4<f32> = u_xlat4;
        let x_594 : vec4<f32> = x_251.x_MainLightShadowmapSize;
        let x_597 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_591.x, x_591.y, x_591.x, x_591.y) * vec4<f32>(x_594.x, x_594.y, x_594.x, x_594.y)) + vec4<f32>(x_597.w, x_597.y, x_597.w, x_597.z));
        let x_600 : vec4<f32> = u_xlat4;
        let x_603 : vec4<f32> = x_251.x_MainLightShadowmapSize;
        let x_606 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_600.x, x_600.y, x_600.x, x_600.y) * vec4<f32>(x_603.x, x_603.y, x_603.x, x_603.y)) + vec4<f32>(x_606.x, x_606.w, x_606.z, x_606.w));
        let x_610 : vec4<f32> = u_xlat5;
        let x_612 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_610.x, x_610.x, x_610.x, x_610.y) * vec4<f32>(x_612.z, x_612.w, x_612.y, x_612.z));
        let x_616 : vec4<f32> = u_xlat5;
        let x_618 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_616.y, x_616.y, x_616.z, x_616.z) * x_618);
        let x_621 : f32 = u_xlat5.z;
        let x_623 : f32 = u_xlat10.y;
        u_xlat54 = (x_621 * x_623);
        let x_626 : vec4<f32> = u_xlat8;
        let x_627 : vec2<f32> = vec2<f32>(x_626.x, x_626.y);
        let x_629 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_627.x, x_627.y, x_629);
        let x_636 : vec3<f32> = txVec4;
        let x_638 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_636.xy, x_636.z);
        u_xlat1.x = x_638;
        let x_641 : vec4<f32> = u_xlat8;
        let x_642 : vec2<f32> = vec2<f32>(x_641.z, x_641.w);
        let x_644 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_642.x, x_642.y, x_644);
        let x_652 : vec3<f32> = txVec5;
        let x_654 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_652.xy, x_652.z);
        u_xlat56 = x_654;
        let x_655 : f32 = u_xlat56;
        let x_657 : f32 = u_xlat11.y;
        u_xlat56 = (x_655 * x_657);
        let x_660 : f32 = u_xlat11.x;
        let x_662 : f32 = u_xlat1.x;
        let x_664 : f32 = u_xlat56;
        u_xlat1.x = ((x_660 * x_662) + x_664);
        let x_668 : vec2<f32> = u_xlat40;
        let x_670 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_668.x, x_668.y, x_670);
        let x_677 : vec3<f32> = txVec6;
        let x_679 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_677.xy, x_677.z);
        u_xlat56 = x_679;
        let x_681 : f32 = u_xlat11.z;
        let x_682 : f32 = u_xlat56;
        let x_685 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_681 * x_682) + x_685);
        let x_689 : vec4<f32> = u_xlat7;
        let x_690 : vec2<f32> = vec2<f32>(x_689.x, x_689.y);
        let x_692 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_690.x, x_690.y, x_692);
        let x_699 : vec3<f32> = txVec7;
        let x_701 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_699.xy, x_699.z);
        u_xlat56 = x_701;
        let x_703 : f32 = u_xlat11.w;
        let x_704 : f32 = u_xlat56;
        let x_707 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_703 * x_704) + x_707);
        let x_711 : vec4<f32> = u_xlat9;
        let x_712 : vec2<f32> = vec2<f32>(x_711.x, x_711.y);
        let x_714 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_712.x, x_712.y, x_714);
        let x_721 : vec3<f32> = txVec8;
        let x_723 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_721.xy, x_721.z);
        u_xlat56 = x_723;
        let x_725 : f32 = u_xlat12.x;
        let x_726 : f32 = u_xlat56;
        let x_729 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_725 * x_726) + x_729);
        let x_733 : vec4<f32> = u_xlat9;
        let x_734 : vec2<f32> = vec2<f32>(x_733.z, x_733.w);
        let x_736 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_734.x, x_734.y, x_736);
        let x_743 : vec3<f32> = txVec9;
        let x_745 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_743.xy, x_743.z);
        u_xlat56 = x_745;
        let x_747 : f32 = u_xlat12.y;
        let x_748 : f32 = u_xlat56;
        let x_751 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_747 * x_748) + x_751);
        let x_755 : vec4<f32> = u_xlat7;
        let x_756 : vec2<f32> = vec2<f32>(x_755.z, x_755.w);
        let x_758 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_756.x, x_756.y, x_758);
        let x_765 : vec3<f32> = txVec10;
        let x_767 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_765.xy, x_765.z);
        u_xlat56 = x_767;
        let x_769 : f32 = u_xlat12.z;
        let x_770 : f32 = u_xlat56;
        let x_773 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_769 * x_770) + x_773);
        let x_777 : vec4<f32> = u_xlat6;
        let x_778 : vec2<f32> = vec2<f32>(x_777.x, x_777.y);
        let x_780 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_778.x, x_778.y, x_780);
        let x_787 : vec3<f32> = txVec11;
        let x_789 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_787.xy, x_787.z);
        u_xlat56 = x_789;
        let x_791 : f32 = u_xlat12.w;
        let x_792 : f32 = u_xlat56;
        let x_795 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_791 * x_792) + x_795);
        let x_799 : vec4<f32> = u_xlat6;
        let x_800 : vec2<f32> = vec2<f32>(x_799.z, x_799.w);
        let x_802 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_800.x, x_800.y, x_802);
        let x_809 : vec3<f32> = txVec12;
        let x_811 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_809.xy, x_809.z);
        u_xlat56 = x_811;
        let x_812 : f32 = u_xlat54;
        let x_813 : f32 = u_xlat56;
        let x_816 : f32 = u_xlat1.x;
        u_xlat18.x = ((x_812 * x_813) + x_816);
      } else {
        let x_820 : vec4<f32> = vs_TEXCOORD6;
        let x_823 : vec4<f32> = x_251.x_MainLightShadowmapSize;
        let x_826 : vec2<f32> = ((vec2<f32>(x_820.x, x_820.y) * vec2<f32>(x_823.z, x_823.w)) + vec2<f32>(0.5f, 0.5f));
        let x_827 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_826.x, x_826.y, x_827.z, x_827.w);
        let x_829 : vec4<f32> = u_xlat4;
        let x_831 : vec2<f32> = floor(vec2<f32>(x_829.x, x_829.y));
        let x_832 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_831.x, x_831.y, x_832.z, x_832.w);
        let x_834 : vec4<f32> = vs_TEXCOORD6;
        let x_837 : vec4<f32> = x_251.x_MainLightShadowmapSize;
        let x_840 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_834.x, x_834.y) * vec2<f32>(x_837.z, x_837.w)) + -(vec2<f32>(x_840.x, x_840.y)));
        let x_844 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_844.x, x_844.x, x_844.y, x_844.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_847 : vec4<f32> = u_xlat5;
        let x_849 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_847.x, x_847.x, x_847.z, x_847.z) * vec4<f32>(x_849.x, x_849.x, x_849.z, x_849.z));
        let x_852 : vec4<f32> = u_xlat6;
        let x_856 : vec2<f32> = (vec2<f32>(x_852.y, x_852.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_857 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_857.x, x_856.x, x_857.z, x_856.y);
        let x_859 : vec4<f32> = u_xlat6;
        let x_862 : vec2<f32> = u_xlat40;
        let x_864 : vec2<f32> = ((vec2<f32>(x_859.x, x_859.z) * vec2<f32>(0.5f, 0.5f)) + -(x_862));
        let x_865 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_864.x, x_865.y, x_864.y, x_865.w);
        let x_867 : vec2<f32> = u_xlat40;
        let x_869 : vec2<f32> = (-(x_867) + vec2<f32>(1.0f, 1.0f));
        let x_870 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_869.x, x_869.y, x_870.z, x_870.w);
        let x_872 : vec2<f32> = u_xlat40;
        u_xlat42 = min(x_872, vec2<f32>(0.0f, 0.0f));
        let x_874 : vec2<f32> = u_xlat42;
        let x_876 : vec2<f32> = u_xlat42;
        let x_878 : vec4<f32> = u_xlat6;
        let x_880 : vec2<f32> = ((-(x_874) * x_876) + vec2<f32>(x_878.x, x_878.y));
        let x_881 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_880.x, x_880.y, x_881.z, x_881.w);
        let x_883 : vec2<f32> = u_xlat40;
        u_xlat42 = max(x_883, vec2<f32>(0.0f, 0.0f));
        let x_886 : vec2<f32> = u_xlat42;
        let x_888 : vec2<f32> = u_xlat42;
        let x_890 : vec4<f32> = u_xlat5;
        let x_892 : vec2<f32> = ((-(x_886) * x_888) + vec2<f32>(x_890.y, x_890.w));
        let x_893 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_892.x, x_893.y, x_892.y);
        let x_895 : vec4<f32> = u_xlat6;
        let x_898 : vec2<f32> = (vec2<f32>(x_895.x, x_895.y) + vec2<f32>(2.0f, 2.0f));
        let x_899 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_898.x, x_898.y, x_899.z, x_899.w);
        let x_901 : vec3<f32> = u_xlat23;
        let x_903 : vec2<f32> = (vec2<f32>(x_901.x, x_901.z) + vec2<f32>(2.0f, 2.0f));
        let x_904 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_904.x, x_903.x, x_904.z, x_903.y);
        let x_907 : f32 = u_xlat5.y;
        u_xlat8.z = (x_907 * 0.081632003f);
        let x_911 : vec4<f32> = u_xlat5;
        let x_914 : vec3<f32> = (vec3<f32>(x_911.z, x_911.x, x_911.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_915 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_914.x, x_914.y, x_914.z, x_915.w);
        let x_917 : vec4<f32> = u_xlat6;
        let x_920 : vec2<f32> = (vec2<f32>(x_917.x, x_917.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_921 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_920.x, x_920.y, x_921.z, x_921.w);
        let x_924 : f32 = u_xlat9.y;
        u_xlat8.x = x_924;
        let x_926 : vec2<f32> = u_xlat40;
        let x_933 : vec2<f32> = ((vec2<f32>(x_926.x, x_926.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_934 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_934.x, x_933.x, x_934.z, x_933.y);
        let x_936 : vec2<f32> = u_xlat40;
        let x_940 : vec2<f32> = ((vec2<f32>(x_936.x, x_936.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_941 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_940.x, x_941.y, x_940.y, x_941.w);
        let x_944 : f32 = u_xlat5.x;
        u_xlat6.y = x_944;
        let x_947 : f32 = u_xlat7.y;
        u_xlat6.w = x_947;
        let x_949 : vec4<f32> = u_xlat6;
        let x_950 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_949 + x_950);
        let x_952 : vec2<f32> = u_xlat40;
        let x_955 : vec2<f32> = ((vec2<f32>(x_952.y, x_952.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_956 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_956.x, x_955.x, x_956.z, x_955.y);
        let x_958 : vec2<f32> = u_xlat40;
        let x_961 : vec2<f32> = ((vec2<f32>(x_958.y, x_958.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_962 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_961.x, x_962.y, x_961.y, x_962.w);
        let x_965 : f32 = u_xlat5.y;
        u_xlat7.y = x_965;
        let x_967 : vec4<f32> = u_xlat7;
        let x_968 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_967 + x_968);
        let x_970 : vec4<f32> = u_xlat6;
        let x_971 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_970 / x_971);
        let x_973 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_973 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_979 : vec4<f32> = u_xlat7;
        let x_980 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_979 / x_980);
        let x_982 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_982 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_984 : vec4<f32> = u_xlat6;
        let x_987 : vec4<f32> = x_251.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_984.w, x_984.x, x_984.y, x_984.z) * vec4<f32>(x_987.x, x_987.x, x_987.x, x_987.x));
        let x_990 : vec4<f32> = u_xlat7;
        let x_993 : vec4<f32> = x_251.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_990.x, x_990.w, x_990.y, x_990.z) * vec4<f32>(x_993.y, x_993.y, x_993.y, x_993.y));
        let x_996 : vec4<f32> = u_xlat6;
        let x_997 : vec3<f32> = vec3<f32>(x_996.y, x_996.z, x_996.w);
        let x_998 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_997.x, x_998.y, x_997.y, x_997.z);
        let x_1001 : f32 = u_xlat7.x;
        u_xlat9.y = x_1001;
        let x_1003 : vec4<f32> = u_xlat4;
        let x_1006 : vec4<f32> = x_251.x_MainLightShadowmapSize;
        let x_1009 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1003.x, x_1003.y, x_1003.x, x_1003.y) * vec4<f32>(x_1006.x, x_1006.y, x_1006.x, x_1006.y)) + vec4<f32>(x_1009.x, x_1009.y, x_1009.z, x_1009.y));
        let x_1012 : vec4<f32> = u_xlat4;
        let x_1015 : vec4<f32> = x_251.x_MainLightShadowmapSize;
        let x_1018 : vec4<f32> = u_xlat9;
        u_xlat40 = ((vec2<f32>(x_1012.x, x_1012.y) * vec2<f32>(x_1015.x, x_1015.y)) + vec2<f32>(x_1018.w, x_1018.y));
        let x_1022 : f32 = u_xlat9.y;
        u_xlat6.y = x_1022;
        let x_1025 : f32 = u_xlat7.z;
        u_xlat9.y = x_1025;
        let x_1027 : vec4<f32> = u_xlat4;
        let x_1030 : vec4<f32> = x_251.x_MainLightShadowmapSize;
        let x_1033 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1027.x, x_1027.y, x_1027.x, x_1027.y) * vec4<f32>(x_1030.x, x_1030.y, x_1030.x, x_1030.y)) + vec4<f32>(x_1033.x, x_1033.y, x_1033.z, x_1033.y));
        let x_1036 : vec4<f32> = u_xlat4;
        let x_1039 : vec4<f32> = x_251.x_MainLightShadowmapSize;
        let x_1042 : vec4<f32> = u_xlat9;
        let x_1044 : vec2<f32> = ((vec2<f32>(x_1036.x, x_1036.y) * vec2<f32>(x_1039.x, x_1039.y)) + vec2<f32>(x_1042.w, x_1042.y));
        let x_1045 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1044.x, x_1044.y, x_1045.z, x_1045.w);
        let x_1048 : f32 = u_xlat9.y;
        u_xlat6.z = x_1048;
        let x_1051 : vec4<f32> = u_xlat4;
        let x_1054 : vec4<f32> = x_251.x_MainLightShadowmapSize;
        let x_1057 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1051.x, x_1051.y, x_1051.x, x_1051.y) * vec4<f32>(x_1054.x, x_1054.y, x_1054.x, x_1054.y)) + vec4<f32>(x_1057.x, x_1057.y, x_1057.x, x_1057.z));
        let x_1061 : f32 = u_xlat7.w;
        u_xlat9.y = x_1061;
        let x_1064 : vec4<f32> = u_xlat4;
        let x_1067 : vec4<f32> = x_251.x_MainLightShadowmapSize;
        let x_1070 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1064.x, x_1064.y, x_1064.x, x_1064.y) * vec4<f32>(x_1067.x, x_1067.y, x_1067.x, x_1067.y)) + vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1070.y));
        let x_1074 : vec4<f32> = u_xlat4;
        let x_1077 : vec4<f32> = x_251.x_MainLightShadowmapSize;
        let x_1080 : vec4<f32> = u_xlat9;
        u_xlat24 = ((vec2<f32>(x_1074.x, x_1074.y) * vec2<f32>(x_1077.x, x_1077.y)) + vec2<f32>(x_1080.w, x_1080.y));
        let x_1084 : f32 = u_xlat9.y;
        u_xlat6.w = x_1084;
        let x_1087 : vec4<f32> = u_xlat4;
        let x_1090 : vec4<f32> = x_251.x_MainLightShadowmapSize;
        let x_1093 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1087.x, x_1087.y) * vec2<f32>(x_1090.x, x_1090.y)) + vec2<f32>(x_1093.x, x_1093.w));
        let x_1096 : vec4<f32> = u_xlat9;
        let x_1097 : vec3<f32> = vec3<f32>(x_1096.x, x_1096.z, x_1096.w);
        let x_1098 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1097.x, x_1098.y, x_1097.y, x_1097.z);
        let x_1100 : vec4<f32> = u_xlat4;
        let x_1103 : vec4<f32> = x_251.x_MainLightShadowmapSize;
        let x_1106 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1100.x, x_1100.y, x_1100.x, x_1100.y) * vec4<f32>(x_1103.x, x_1103.y, x_1103.x, x_1103.y)) + vec4<f32>(x_1106.x, x_1106.y, x_1106.z, x_1106.y));
        let x_1110 : vec4<f32> = u_xlat4;
        let x_1113 : vec4<f32> = x_251.x_MainLightShadowmapSize;
        let x_1116 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1110.x, x_1110.y) * vec2<f32>(x_1113.x, x_1113.y)) + vec2<f32>(x_1116.w, x_1116.y));
        let x_1120 : f32 = u_xlat6.x;
        u_xlat7.x = x_1120;
        let x_1122 : vec4<f32> = u_xlat4;
        let x_1125 : vec4<f32> = x_251.x_MainLightShadowmapSize;
        let x_1128 : vec4<f32> = u_xlat7;
        let x_1130 : vec2<f32> = ((vec2<f32>(x_1122.x, x_1122.y) * vec2<f32>(x_1125.x, x_1125.y)) + vec2<f32>(x_1128.x, x_1128.y));
        let x_1131 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1130.x, x_1130.y, x_1131.z, x_1131.w);
        let x_1134 : vec4<f32> = u_xlat5;
        let x_1136 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1134.x, x_1134.x, x_1134.x, x_1134.x) * x_1136);
        let x_1139 : vec4<f32> = u_xlat5;
        let x_1141 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1139.y, x_1139.y, x_1139.y, x_1139.y) * x_1141);
        let x_1144 : vec4<f32> = u_xlat5;
        let x_1146 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1144.z, x_1144.z, x_1144.z, x_1144.z) * x_1146);
        let x_1148 : vec4<f32> = u_xlat5;
        let x_1150 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1148.w, x_1148.w, x_1148.w, x_1148.w) * x_1150);
        let x_1153 : vec4<f32> = u_xlat10;
        let x_1154 : vec2<f32> = vec2<f32>(x_1153.x, x_1153.y);
        let x_1156 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1154.x, x_1154.y, x_1156);
        let x_1163 : vec3<f32> = txVec13;
        let x_1165 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1163.xy, x_1163.z);
        u_xlat54 = x_1165;
        let x_1167 : vec4<f32> = u_xlat10;
        let x_1168 : vec2<f32> = vec2<f32>(x_1167.z, x_1167.w);
        let x_1170 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1168.x, x_1168.y, x_1170);
        let x_1177 : vec3<f32> = txVec14;
        let x_1179 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1177.xy, x_1177.z);
        u_xlat1.x = x_1179;
        let x_1182 : f32 = u_xlat1.x;
        let x_1184 : f32 = u_xlat15.y;
        u_xlat1.x = (x_1182 * x_1184);
        let x_1188 : f32 = u_xlat15.x;
        let x_1189 : f32 = u_xlat54;
        let x_1192 : f32 = u_xlat1.x;
        u_xlat54 = ((x_1188 * x_1189) + x_1192);
        let x_1195 : vec2<f32> = u_xlat40;
        let x_1197 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1195.x, x_1195.y, x_1197);
        let x_1204 : vec3<f32> = txVec15;
        let x_1206 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1204.xy, x_1204.z);
        u_xlat1.x = x_1206;
        let x_1209 : f32 = u_xlat15.z;
        let x_1211 : f32 = u_xlat1.x;
        let x_1213 : f32 = u_xlat54;
        u_xlat54 = ((x_1209 * x_1211) + x_1213);
        let x_1216 : vec4<f32> = u_xlat13;
        let x_1217 : vec2<f32> = vec2<f32>(x_1216.x, x_1216.y);
        let x_1219 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1217.x, x_1217.y, x_1219);
        let x_1226 : vec3<f32> = txVec16;
        let x_1228 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1226.xy, x_1226.z);
        u_xlat1.x = x_1228;
        let x_1231 : f32 = u_xlat15.w;
        let x_1233 : f32 = u_xlat1.x;
        let x_1235 : f32 = u_xlat54;
        u_xlat54 = ((x_1231 * x_1233) + x_1235);
        let x_1238 : vec4<f32> = u_xlat11;
        let x_1239 : vec2<f32> = vec2<f32>(x_1238.x, x_1238.y);
        let x_1241 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1239.x, x_1239.y, x_1241);
        let x_1248 : vec3<f32> = txVec17;
        let x_1250 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1248.xy, x_1248.z);
        u_xlat1.x = x_1250;
        let x_1253 : f32 = u_xlat16.x;
        let x_1255 : f32 = u_xlat1.x;
        let x_1257 : f32 = u_xlat54;
        u_xlat54 = ((x_1253 * x_1255) + x_1257);
        let x_1260 : vec4<f32> = u_xlat11;
        let x_1261 : vec2<f32> = vec2<f32>(x_1260.z, x_1260.w);
        let x_1263 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1261.x, x_1261.y, x_1263);
        let x_1270 : vec3<f32> = txVec18;
        let x_1272 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1270.xy, x_1270.z);
        u_xlat1.x = x_1272;
        let x_1275 : f32 = u_xlat16.y;
        let x_1277 : f32 = u_xlat1.x;
        let x_1279 : f32 = u_xlat54;
        u_xlat54 = ((x_1275 * x_1277) + x_1279);
        let x_1282 : vec4<f32> = u_xlat12;
        let x_1283 : vec2<f32> = vec2<f32>(x_1282.x, x_1282.y);
        let x_1285 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1283.x, x_1283.y, x_1285);
        let x_1292 : vec3<f32> = txVec19;
        let x_1294 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1292.xy, x_1292.z);
        u_xlat1.x = x_1294;
        let x_1297 : f32 = u_xlat16.z;
        let x_1299 : f32 = u_xlat1.x;
        let x_1301 : f32 = u_xlat54;
        u_xlat54 = ((x_1297 * x_1299) + x_1301);
        let x_1304 : vec4<f32> = u_xlat13;
        let x_1305 : vec2<f32> = vec2<f32>(x_1304.z, x_1304.w);
        let x_1307 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1305.x, x_1305.y, x_1307);
        let x_1314 : vec3<f32> = txVec20;
        let x_1316 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1314.xy, x_1314.z);
        u_xlat1.x = x_1316;
        let x_1319 : f32 = u_xlat16.w;
        let x_1321 : f32 = u_xlat1.x;
        let x_1323 : f32 = u_xlat54;
        u_xlat54 = ((x_1319 * x_1321) + x_1323);
        let x_1326 : vec4<f32> = u_xlat14;
        let x_1327 : vec2<f32> = vec2<f32>(x_1326.x, x_1326.y);
        let x_1329 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1327.x, x_1327.y, x_1329);
        let x_1336 : vec3<f32> = txVec21;
        let x_1338 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1336.xy, x_1336.z);
        u_xlat1.x = x_1338;
        let x_1341 : f32 = u_xlat17.x;
        let x_1343 : f32 = u_xlat1.x;
        let x_1345 : f32 = u_xlat54;
        u_xlat54 = ((x_1341 * x_1343) + x_1345);
        let x_1348 : vec4<f32> = u_xlat14;
        let x_1349 : vec2<f32> = vec2<f32>(x_1348.z, x_1348.w);
        let x_1351 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1349.x, x_1349.y, x_1351);
        let x_1358 : vec3<f32> = txVec22;
        let x_1360 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1358.xy, x_1358.z);
        u_xlat1.x = x_1360;
        let x_1363 : f32 = u_xlat17.y;
        let x_1365 : f32 = u_xlat1.x;
        let x_1367 : f32 = u_xlat54;
        u_xlat54 = ((x_1363 * x_1365) + x_1367);
        let x_1370 : vec2<f32> = u_xlat24;
        let x_1372 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1370.x, x_1370.y, x_1372);
        let x_1379 : vec3<f32> = txVec23;
        let x_1381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1379.xy, x_1379.z);
        u_xlat1.x = x_1381;
        let x_1384 : f32 = u_xlat17.z;
        let x_1386 : f32 = u_xlat1.x;
        let x_1388 : f32 = u_xlat54;
        u_xlat54 = ((x_1384 * x_1386) + x_1388);
        let x_1391 : vec2<f32> = u_xlat48;
        let x_1393 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1391.x, x_1391.y, x_1393);
        let x_1400 : vec3<f32> = txVec24;
        let x_1402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1400.xy, x_1400.z);
        u_xlat1.x = x_1402;
        let x_1405 : f32 = u_xlat17.w;
        let x_1407 : f32 = u_xlat1.x;
        let x_1409 : f32 = u_xlat54;
        u_xlat54 = ((x_1405 * x_1407) + x_1409);
        let x_1412 : vec4<f32> = u_xlat9;
        let x_1413 : vec2<f32> = vec2<f32>(x_1412.x, x_1412.y);
        let x_1415 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1413.x, x_1413.y, x_1415);
        let x_1422 : vec3<f32> = txVec25;
        let x_1424 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1422.xy, x_1422.z);
        u_xlat1.x = x_1424;
        let x_1427 : f32 = u_xlat5.x;
        let x_1429 : f32 = u_xlat1.x;
        let x_1431 : f32 = u_xlat54;
        u_xlat54 = ((x_1427 * x_1429) + x_1431);
        let x_1434 : vec4<f32> = u_xlat9;
        let x_1435 : vec2<f32> = vec2<f32>(x_1434.z, x_1434.w);
        let x_1437 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1435.x, x_1435.y, x_1437);
        let x_1444 : vec3<f32> = txVec26;
        let x_1446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1444.xy, x_1444.z);
        u_xlat1.x = x_1446;
        let x_1449 : f32 = u_xlat5.y;
        let x_1451 : f32 = u_xlat1.x;
        let x_1453 : f32 = u_xlat54;
        u_xlat54 = ((x_1449 * x_1451) + x_1453);
        let x_1456 : vec2<f32> = u_xlat43;
        let x_1458 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1456.x, x_1456.y, x_1458);
        let x_1465 : vec3<f32> = txVec27;
        let x_1467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1465.xy, x_1465.z);
        u_xlat1.x = x_1467;
        let x_1470 : f32 = u_xlat5.z;
        let x_1472 : f32 = u_xlat1.x;
        let x_1474 : f32 = u_xlat54;
        u_xlat54 = ((x_1470 * x_1472) + x_1474);
        let x_1477 : vec4<f32> = u_xlat4;
        let x_1478 : vec2<f32> = vec2<f32>(x_1477.x, x_1477.y);
        let x_1480 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1478.x, x_1478.y, x_1480);
        let x_1487 : vec3<f32> = txVec28;
        let x_1489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1487.xy, x_1487.z);
        u_xlat1.x = x_1489;
        let x_1492 : f32 = u_xlat5.w;
        let x_1494 : f32 = u_xlat1.x;
        let x_1496 : f32 = u_xlat54;
        u_xlat18.x = ((x_1492 * x_1494) + x_1496);
      }
    }
  } else {
    let x_1501 : vec4<f32> = vs_TEXCOORD6;
    let x_1502 : vec2<f32> = vec2<f32>(x_1501.x, x_1501.y);
    let x_1504 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1502.x, x_1502.y, x_1504);
    let x_1511 : vec3<f32> = txVec29;
    let x_1513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1511.xy, x_1511.z);
    u_xlat18.x = x_1513;
  }
  let x_1516 : f32 = x_251.x_MainLightShadowParams.x;
  u_xlat54 = (-(x_1516) + 1.0f);
  let x_1520 : f32 = u_xlat18.x;
  let x_1522 : f32 = x_251.x_MainLightShadowParams.x;
  let x_1524 : f32 = u_xlat54;
  u_xlat18.x = ((x_1520 * x_1522) + x_1524);
  let x_1528 : f32 = vs_TEXCOORD6.z;
  u_xlatb54 = (0.0f >= x_1528);
  let x_1532 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (x_1532 >= 1.0f);
  let x_1534 : bool = u_xlatb54;
  let x_1535 : bool = u_xlatb1;
  u_xlatb54 = (x_1534 | x_1535);
  let x_1537 : bool = u_xlatb54;
  if (x_1537) {
    x_1538 = 1.0f;
  } else {
    let x_1543 : f32 = u_xlat18.x;
    x_1538 = x_1543;
  }
  let x_1544 : f32 = x_1538;
  u_xlat18.x = x_1544;
  let x_1547 : vec3<f32> = vs_TEXCOORD1;
  let x_1551 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1553 : vec3<f32> = (x_1547 + -(x_1551));
  let x_1554 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1553.x, x_1553.y, x_1553.z, x_1554.w);
  let x_1556 : vec4<f32> = u_xlat4;
  let x_1558 : vec4<f32> = u_xlat4;
  u_xlat54 = dot(vec3<f32>(x_1556.x, x_1556.y, x_1556.z), vec3<f32>(x_1558.x, x_1558.y, x_1558.z));
  let x_1561 : f32 = u_xlat54;
  let x_1563 : f32 = x_251.x_MainLightShadowParams.z;
  let x_1566 : f32 = x_251.x_MainLightShadowParams.w;
  u_xlat54 = ((x_1561 * x_1563) + x_1566);
  let x_1568 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1568, 0.0f, 1.0f);
  let x_1571 : f32 = u_xlat18.x;
  u_xlat1.x = (-(x_1571) + 1.0f);
  let x_1575 : f32 = u_xlat54;
  let x_1577 : f32 = u_xlat1.x;
  let x_1580 : f32 = u_xlat18.x;
  u_xlat18.x = ((x_1575 * x_1577) + x_1580);
  let x_1589 : f32 = x_1587.x_MainLightCookieTextureFormat;
  u_xlatb54 = !((x_1589 == -1.0f));
  let x_1592 : bool = u_xlatb54;
  if (x_1592) {
    let x_1595 : vec3<f32> = vs_TEXCOORD1;
    let x_1598 : vec4<f32> = x_1587.x_MainLightWorldToLight[1i];
    let x_1600 : vec2<f32> = (vec2<f32>(x_1595.y, x_1595.y) * vec2<f32>(x_1598.x, x_1598.y));
    let x_1601 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1600.x, x_1600.y, x_1601.z, x_1601.w);
    let x_1604 : vec4<f32> = x_1587.x_MainLightWorldToLight[0i];
    let x_1606 : vec3<f32> = vs_TEXCOORD1;
    let x_1609 : vec4<f32> = u_xlat4;
    let x_1611 : vec2<f32> = ((vec2<f32>(x_1604.x, x_1604.y) * vec2<f32>(x_1606.x, x_1606.x)) + vec2<f32>(x_1609.x, x_1609.y));
    let x_1612 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1611.x, x_1611.y, x_1612.z, x_1612.w);
    let x_1615 : vec4<f32> = x_1587.x_MainLightWorldToLight[2i];
    let x_1617 : vec3<f32> = vs_TEXCOORD1;
    let x_1620 : vec4<f32> = u_xlat4;
    let x_1622 : vec2<f32> = ((vec2<f32>(x_1615.x, x_1615.y) * vec2<f32>(x_1617.z, x_1617.z)) + vec2<f32>(x_1620.x, x_1620.y));
    let x_1623 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1622.x, x_1622.y, x_1623.z, x_1623.w);
    let x_1625 : vec4<f32> = u_xlat4;
    let x_1629 : vec4<f32> = x_1587.x_MainLightWorldToLight[3i];
    let x_1631 : vec2<f32> = (vec2<f32>(x_1625.x, x_1625.y) + vec2<f32>(x_1629.x, x_1629.y));
    let x_1632 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1631.x, x_1631.y, x_1632.z, x_1632.w);
    let x_1634 : vec4<f32> = u_xlat4;
    let x_1637 : vec2<f32> = ((vec2<f32>(x_1634.x, x_1634.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1638 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1637.x, x_1637.y, x_1638.z, x_1638.w);
    let x_1645 : vec4<f32> = u_xlat4;
    let x_1648 : f32 = x_43.x_GlobalMipBias.x;
    let x_1649 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1645.x, x_1645.y), x_1648);
    u_xlat4 = x_1649;
    let x_1654 : f32 = x_1587.x_MainLightCookieTextureFormat;
    let x_1656 : f32 = x_1587.x_MainLightCookieTextureFormat;
    let x_1658 : f32 = x_1587.x_MainLightCookieTextureFormat;
    let x_1660 : f32 = x_1587.x_MainLightCookieTextureFormat;
    let x_1661 : vec4<f32> = vec4<f32>(x_1654, x_1656, x_1658, x_1660);
    let x_1669 : vec4<bool> = (vec4<f32>(x_1661.x, x_1661.y, x_1661.z, x_1661.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1669.x, x_1669.y);
    let x_1672 : bool = u_xlatb5.y;
    if (x_1672) {
      let x_1677 : f32 = u_xlat4.w;
      x_1673 = x_1677;
    } else {
      let x_1680 : f32 = u_xlat4.x;
      x_1673 = x_1680;
    }
    let x_1681 : f32 = x_1673;
    u_xlat54 = x_1681;
    let x_1683 : bool = u_xlatb5.x;
    if (x_1683) {
      let x_1687 : vec4<f32> = u_xlat4;
      x_1684 = vec3<f32>(x_1687.x, x_1687.y, x_1687.z);
    } else {
      let x_1690 : f32 = u_xlat54;
      x_1684 = vec3<f32>(x_1690, x_1690, x_1690);
    }
    let x_1692 : vec3<f32> = x_1684;
    let x_1693 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1692.x, x_1692.y, x_1692.z, x_1693.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1699 : vec4<f32> = u_xlat4;
  let x_1702 : vec4<f32> = x_43.x_MainLightColor;
  let x_1704 : vec3<f32> = (vec3<f32>(x_1699.x, x_1699.y, x_1699.z) * vec3<f32>(x_1702.x, x_1702.y, x_1702.z));
  let x_1705 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1704.x, x_1704.y, x_1704.z, x_1705.w);
  let x_1708 : f32 = u_xlat18.x;
  let x_1710 : f32 = x_184.unity_LightData.z;
  u_xlat18.x = (x_1708 * x_1710);
  let x_1713 : vec3<f32> = u_xlat18;
  let x_1715 : vec4<f32> = u_xlat4;
  let x_1717 : vec3<f32> = (vec3<f32>(x_1713.x, x_1713.x, x_1713.x) * vec3<f32>(x_1715.x, x_1715.y, x_1715.z));
  let x_1718 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1717.x, x_1717.y, x_1717.z, x_1718.w);
  let x_1720 : vec3<f32> = u_xlat2;
  let x_1722 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat18.x = dot(x_1720, vec3<f32>(x_1722.x, x_1722.y, x_1722.z));
  let x_1727 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_1727, 0.0f, 1.0f);
  let x_1730 : vec3<f32> = u_xlat18;
  let x_1732 : vec4<f32> = u_xlat4;
  let x_1734 : vec3<f32> = (vec3<f32>(x_1730.x, x_1730.x, x_1730.x) * vec3<f32>(x_1732.x, x_1732.y, x_1732.z));
  let x_1735 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1734.x, x_1734.y, x_1734.z, x_1735.w);
  let x_1737 : vec4<f32> = u_xlat1;
  let x_1739 : vec4<f32> = u_xlat4;
  let x_1741 : vec3<f32> = (vec3<f32>(x_1737.y, x_1737.z, x_1737.w) * vec3<f32>(x_1739.x, x_1739.y, x_1739.z));
  let x_1742 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1741.x, x_1741.y, x_1741.z, x_1742.w);
  let x_1744 : vec4<f32> = u_xlat0;
  let x_1746 : vec4<f32> = u_xlat4;
  let x_1748 : vec3<f32> = (vec3<f32>(x_1744.x, x_1744.x, x_1744.x) * vec3<f32>(x_1746.x, x_1746.y, x_1746.z));
  let x_1749 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1748.x, x_1748.y, x_1748.z, x_1749.w);
  let x_1752 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1754 : f32 = x_184.unity_LightData.y;
  u_xlat18.x = min(x_1752, x_1754);
  let x_1760 : f32 = u_xlat18.x;
  u_xlatu18 = bitcast<u32>(i32(x_1760));
  let x_1764 : f32 = x_1587.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1766 : f32 = x_1587.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1768 : f32 = x_1587.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1770 : f32 = x_1587.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1771 : vec4<f32> = vec4<f32>(x_1764, x_1766, x_1768, x_1770);
  let x_1777 : vec4<bool> = (vec4<f32>(x_1771.x, x_1771.y, x_1771.z, x_1771.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1777.x, x_1777.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1788 : u32 = u_xlatu_loop_1;
    let x_1789 : u32 = u_xlatu18;
    if ((x_1788 < x_1789)) {
    } else {
      break;
    }
    let x_1792 : u32 = u_xlatu_loop_1;
    u_xlatu1 = (x_1792 >> 2u);
    let x_1796 : u32 = u_xlatu_loop_1;
    u_xlati56 = bitcast<i32>((x_1796 & 3u));
    let x_1799 : u32 = u_xlatu1;
    let x_1802 : vec4<f32> = x_184.unity_LightIndices[bitcast<i32>(x_1799)];
    let x_1812 : i32 = u_xlati56;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1817 : vec4<u32> = indexable[x_1812];
    u_xlat1.x = dot(x_1802, bitcast<vec4<f32>>(x_1817));
    let x_1822 : f32 = u_xlat1.x;
    u_xlatu1 = bitcast<u32>(i32(x_1822));
    let x_1825 : vec3<f32> = vs_TEXCOORD1;
    let x_1837 : u32 = u_xlatu1;
    let x_1840 : vec4<f32> = x_1836.x_AdditionalLightsPosition[bitcast<i32>(x_1837)];
    let x_1843 : u32 = u_xlatu1;
    let x_1846 : vec4<f32> = x_1836.x_AdditionalLightsPosition[bitcast<i32>(x_1843)];
    let x_1848 : vec3<f32> = ((-(x_1825) * vec3<f32>(x_1840.w, x_1840.w, x_1840.w)) + vec3<f32>(x_1846.x, x_1846.y, x_1846.z));
    let x_1849 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1848.x, x_1848.y, x_1848.z, x_1849.w);
    let x_1851 : vec4<f32> = u_xlat7;
    let x_1853 : vec4<f32> = u_xlat7;
    u_xlat56 = dot(vec3<f32>(x_1851.x, x_1851.y, x_1851.z), vec3<f32>(x_1853.x, x_1853.y, x_1853.z));
    let x_1856 : f32 = u_xlat56;
    u_xlat56 = max(x_1856, 6.10351562e-05f);
    let x_1860 : f32 = u_xlat56;
    u_xlat57 = inverseSqrt(x_1860);
    let x_1862 : f32 = u_xlat57;
    let x_1864 : vec4<f32> = u_xlat7;
    let x_1866 : vec3<f32> = (vec3<f32>(x_1862, x_1862, x_1862) * vec3<f32>(x_1864.x, x_1864.y, x_1864.z));
    let x_1867 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1866.x, x_1866.y, x_1866.z, x_1867.w);
    let x_1869 : f32 = u_xlat56;
    u_xlat57 = (1.0f / x_1869);
    let x_1871 : f32 = u_xlat56;
    let x_1872 : u32 = u_xlatu1;
    let x_1875 : f32 = x_1836.x_AdditionalLightsAttenuation[bitcast<i32>(x_1872)].x;
    u_xlat56 = (x_1871 * x_1875);
    let x_1877 : f32 = u_xlat56;
    let x_1879 : f32 = u_xlat56;
    u_xlat56 = ((-(x_1877) * x_1879) + 1.0f);
    let x_1882 : f32 = u_xlat56;
    u_xlat56 = max(x_1882, 0.0f);
    let x_1884 : f32 = u_xlat56;
    let x_1885 : f32 = u_xlat56;
    u_xlat56 = (x_1884 * x_1885);
    let x_1887 : f32 = u_xlat56;
    let x_1888 : f32 = u_xlat57;
    u_xlat56 = (x_1887 * x_1888);
    let x_1890 : u32 = u_xlatu1;
    let x_1893 : vec4<f32> = x_1836.x_AdditionalLightsSpotDir[bitcast<i32>(x_1890)];
    let x_1895 : vec4<f32> = u_xlat7;
    u_xlat57 = dot(vec3<f32>(x_1893.x, x_1893.y, x_1893.z), vec3<f32>(x_1895.x, x_1895.y, x_1895.z));
    let x_1898 : f32 = u_xlat57;
    let x_1899 : u32 = u_xlatu1;
    let x_1902 : f32 = x_1836.x_AdditionalLightsAttenuation[bitcast<i32>(x_1899)].z;
    let x_1904 : u32 = u_xlatu1;
    let x_1907 : f32 = x_1836.x_AdditionalLightsAttenuation[bitcast<i32>(x_1904)].w;
    u_xlat57 = ((x_1898 * x_1902) + x_1907);
    let x_1909 : f32 = u_xlat57;
    u_xlat57 = clamp(x_1909, 0.0f, 1.0f);
    let x_1911 : f32 = u_xlat57;
    let x_1912 : f32 = u_xlat57;
    u_xlat57 = (x_1911 * x_1912);
    let x_1914 : f32 = u_xlat56;
    let x_1915 : f32 = u_xlat57;
    u_xlat56 = (x_1914 * x_1915);
    let x_1918 : u32 = u_xlatu1;
    u_xlatu57 = (x_1918 >> 5u);
    let x_1921 : u32 = u_xlatu1;
    u_xlati58 = (1i << bitcast<u32>((bitcast<i32>(x_1921) & 31i)));
    let x_1927 : i32 = u_xlati58;
    let x_1929 : u32 = u_xlatu57;
    let x_1932 : f32 = x_1587.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1929)].el;
    u_xlati57 = bitcast<i32>((bitcast<u32>(x_1927) & bitcast<u32>(x_1932)));
    let x_1936 : i32 = u_xlati57;
    if ((x_1936 != 0i)) {
      let x_1946 : u32 = u_xlatu1;
      let x_1949 : f32 = x_1945.x_AdditionalLightsLightTypes[bitcast<i32>(x_1946)].el;
      u_xlati57 = i32(x_1949);
      let x_1951 : i32 = u_xlati57;
      u_xlati58 = select(1i, 0i, (x_1951 != 0i));
      let x_1955 : u32 = u_xlatu1;
      u_xlati41 = (bitcast<i32>(x_1955) << bitcast<u32>(2i));
      let x_1958 : i32 = u_xlati58;
      if ((x_1958 != 0i)) {
        let x_1962 : vec3<f32> = vs_TEXCOORD1;
        let x_1964 : i32 = u_xlati41;
        let x_1967 : i32 = u_xlati41;
        let x_1971 : vec4<f32> = x_1945.x_AdditionalLightsWorldToLights[((x_1964 + 1i) / 4i)][((x_1967 + 1i) % 4i)];
        let x_1973 : vec3<f32> = (vec3<f32>(x_1962.y, x_1962.y, x_1962.y) * vec3<f32>(x_1971.x, x_1971.y, x_1971.w));
        let x_1974 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1973.x, x_1973.y, x_1973.z, x_1974.w);
        let x_1976 : i32 = u_xlati41;
        let x_1978 : i32 = u_xlati41;
        let x_1981 : vec4<f32> = x_1945.x_AdditionalLightsWorldToLights[(x_1976 / 4i)][(x_1978 % 4i)];
        let x_1983 : vec3<f32> = vs_TEXCOORD1;
        let x_1986 : vec4<f32> = u_xlat8;
        let x_1988 : vec3<f32> = ((vec3<f32>(x_1981.x, x_1981.y, x_1981.w) * vec3<f32>(x_1983.x, x_1983.x, x_1983.x)) + vec3<f32>(x_1986.x, x_1986.y, x_1986.z));
        let x_1989 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1988.x, x_1988.y, x_1988.z, x_1989.w);
        let x_1991 : i32 = u_xlati41;
        let x_1994 : i32 = u_xlati41;
        let x_1998 : vec4<f32> = x_1945.x_AdditionalLightsWorldToLights[((x_1991 + 2i) / 4i)][((x_1994 + 2i) % 4i)];
        let x_2000 : vec3<f32> = vs_TEXCOORD1;
        let x_2003 : vec4<f32> = u_xlat8;
        let x_2005 : vec3<f32> = ((vec3<f32>(x_1998.x, x_1998.y, x_1998.w) * vec3<f32>(x_2000.z, x_2000.z, x_2000.z)) + vec3<f32>(x_2003.x, x_2003.y, x_2003.z));
        let x_2006 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2005.x, x_2005.y, x_2005.z, x_2006.w);
        let x_2008 : vec4<f32> = u_xlat8;
        let x_2010 : i32 = u_xlati41;
        let x_2013 : i32 = u_xlati41;
        let x_2017 : vec4<f32> = x_1945.x_AdditionalLightsWorldToLights[((x_2010 + 3i) / 4i)][((x_2013 + 3i) % 4i)];
        let x_2019 : vec3<f32> = (vec3<f32>(x_2008.x, x_2008.y, x_2008.z) + vec3<f32>(x_2017.x, x_2017.y, x_2017.w));
        let x_2020 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2019.x, x_2019.y, x_2019.z, x_2020.w);
        let x_2022 : vec4<f32> = u_xlat8;
        let x_2024 : vec4<f32> = u_xlat8;
        let x_2026 : vec2<f32> = (vec2<f32>(x_2022.x, x_2022.y) / vec2<f32>(x_2024.z, x_2024.z));
        let x_2027 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2026.x, x_2026.y, x_2027.z, x_2027.w);
        let x_2029 : vec4<f32> = u_xlat8;
        let x_2032 : vec2<f32> = ((vec2<f32>(x_2029.x, x_2029.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2033 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2032.x, x_2032.y, x_2033.z, x_2033.w);
        let x_2035 : vec4<f32> = u_xlat8;
        let x_2039 : vec2<f32> = clamp(vec2<f32>(x_2035.x, x_2035.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2040 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2039.x, x_2039.y, x_2040.z, x_2040.w);
        let x_2042 : u32 = u_xlatu1;
        let x_2045 : vec4<f32> = x_1945.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2042)];
        let x_2047 : vec4<f32> = u_xlat8;
        let x_2050 : u32 = u_xlatu1;
        let x_2053 : vec4<f32> = x_1945.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2050)];
        let x_2055 : vec2<f32> = ((vec2<f32>(x_2045.x, x_2045.y) * vec2<f32>(x_2047.x, x_2047.y)) + vec2<f32>(x_2053.z, x_2053.w));
        let x_2056 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2055.x, x_2055.y, x_2056.z, x_2056.w);
      } else {
        let x_2060 : i32 = u_xlati57;
        u_xlatb57 = (x_2060 == 1i);
        let x_2062 : bool = u_xlatb57;
        u_xlati57 = select(0i, 1i, x_2062);
        let x_2064 : i32 = u_xlati57;
        if ((x_2064 != 0i)) {
          let x_2069 : vec3<f32> = vs_TEXCOORD1;
          let x_2071 : i32 = u_xlati41;
          let x_2074 : i32 = u_xlati41;
          let x_2078 : vec4<f32> = x_1945.x_AdditionalLightsWorldToLights[((x_2071 + 1i) / 4i)][((x_2074 + 1i) % 4i)];
          u_xlat44 = (vec2<f32>(x_2069.y, x_2069.y) * vec2<f32>(x_2078.x, x_2078.y));
          let x_2081 : i32 = u_xlati41;
          let x_2083 : i32 = u_xlati41;
          let x_2086 : vec4<f32> = x_1945.x_AdditionalLightsWorldToLights[(x_2081 / 4i)][(x_2083 % 4i)];
          let x_2088 : vec3<f32> = vs_TEXCOORD1;
          let x_2091 : vec2<f32> = u_xlat44;
          u_xlat44 = ((vec2<f32>(x_2086.x, x_2086.y) * vec2<f32>(x_2088.x, x_2088.x)) + x_2091);
          let x_2093 : i32 = u_xlati41;
          let x_2096 : i32 = u_xlati41;
          let x_2100 : vec4<f32> = x_1945.x_AdditionalLightsWorldToLights[((x_2093 + 2i) / 4i)][((x_2096 + 2i) % 4i)];
          let x_2102 : vec3<f32> = vs_TEXCOORD1;
          let x_2105 : vec2<f32> = u_xlat44;
          u_xlat44 = ((vec2<f32>(x_2100.x, x_2100.y) * vec2<f32>(x_2102.z, x_2102.z)) + x_2105);
          let x_2107 : vec2<f32> = u_xlat44;
          let x_2108 : i32 = u_xlati41;
          let x_2111 : i32 = u_xlati41;
          let x_2115 : vec4<f32> = x_1945.x_AdditionalLightsWorldToLights[((x_2108 + 3i) / 4i)][((x_2111 + 3i) % 4i)];
          u_xlat44 = (x_2107 + vec2<f32>(x_2115.x, x_2115.y));
          let x_2118 : vec2<f32> = u_xlat44;
          u_xlat44 = ((x_2118 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2121 : vec2<f32> = u_xlat44;
          u_xlat44 = fract(x_2121);
          let x_2123 : u32 = u_xlatu1;
          let x_2126 : vec4<f32> = x_1945.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2123)];
          let x_2128 : vec2<f32> = u_xlat44;
          let x_2130 : u32 = u_xlatu1;
          let x_2133 : vec4<f32> = x_1945.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2130)];
          let x_2135 : vec2<f32> = ((vec2<f32>(x_2126.x, x_2126.y) * x_2128) + vec2<f32>(x_2133.z, x_2133.w));
          let x_2136 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2135.x, x_2135.y, x_2136.z, x_2136.w);
        } else {
          let x_2139 : vec3<f32> = vs_TEXCOORD1;
          let x_2141 : i32 = u_xlati41;
          let x_2144 : i32 = u_xlati41;
          let x_2148 : vec4<f32> = x_1945.x_AdditionalLightsWorldToLights[((x_2141 + 1i) / 4i)][((x_2144 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_2139.y, x_2139.y, x_2139.y, x_2139.y) * x_2148);
          let x_2150 : i32 = u_xlati41;
          let x_2152 : i32 = u_xlati41;
          let x_2155 : vec4<f32> = x_1945.x_AdditionalLightsWorldToLights[(x_2150 / 4i)][(x_2152 % 4i)];
          let x_2156 : vec3<f32> = vs_TEXCOORD1;
          let x_2159 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2155 * vec4<f32>(x_2156.x, x_2156.x, x_2156.x, x_2156.x)) + x_2159);
          let x_2161 : i32 = u_xlati41;
          let x_2164 : i32 = u_xlati41;
          let x_2168 : vec4<f32> = x_1945.x_AdditionalLightsWorldToLights[((x_2161 + 2i) / 4i)][((x_2164 + 2i) % 4i)];
          let x_2169 : vec3<f32> = vs_TEXCOORD1;
          let x_2172 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2168 * vec4<f32>(x_2169.z, x_2169.z, x_2169.z, x_2169.z)) + x_2172);
          let x_2174 : vec4<f32> = u_xlat9;
          let x_2175 : i32 = u_xlati41;
          let x_2178 : i32 = u_xlati41;
          let x_2182 : vec4<f32> = x_1945.x_AdditionalLightsWorldToLights[((x_2175 + 3i) / 4i)][((x_2178 + 3i) % 4i)];
          u_xlat9 = (x_2174 + x_2182);
          let x_2184 : vec4<f32> = u_xlat9;
          let x_2186 : vec4<f32> = u_xlat9;
          let x_2188 : vec3<f32> = (vec3<f32>(x_2184.x, x_2184.y, x_2184.z) / vec3<f32>(x_2186.w, x_2186.w, x_2186.w));
          let x_2189 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2188.x, x_2188.y, x_2188.z, x_2189.w);
          let x_2191 : vec4<f32> = u_xlat9;
          let x_2193 : vec4<f32> = u_xlat9;
          u_xlat57 = dot(vec3<f32>(x_2191.x, x_2191.y, x_2191.z), vec3<f32>(x_2193.x, x_2193.y, x_2193.z));
          let x_2196 : f32 = u_xlat57;
          u_xlat57 = inverseSqrt(x_2196);
          let x_2198 : f32 = u_xlat57;
          let x_2200 : vec4<f32> = u_xlat9;
          let x_2202 : vec3<f32> = (vec3<f32>(x_2198, x_2198, x_2198) * vec3<f32>(x_2200.x, x_2200.y, x_2200.z));
          let x_2203 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2202.x, x_2202.y, x_2202.z, x_2203.w);
          let x_2205 : vec4<f32> = u_xlat9;
          u_xlat57 = dot(abs(vec3<f32>(x_2205.x, x_2205.y, x_2205.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2210 : f32 = u_xlat57;
          u_xlat57 = max(x_2210, 0.000001f);
          let x_2213 : f32 = u_xlat57;
          u_xlat57 = (1.0f / x_2213);
          let x_2215 : f32 = u_xlat57;
          let x_2217 : vec4<f32> = u_xlat9;
          let x_2219 : vec3<f32> = (vec3<f32>(x_2215, x_2215, x_2215) * vec3<f32>(x_2217.z, x_2217.x, x_2217.y));
          let x_2220 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2219.x, x_2219.y, x_2219.z, x_2220.w);
          let x_2223 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_2223);
          let x_2227 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_2227, 0.0f, 1.0f);
          let x_2231 : vec4<f32> = u_xlat10;
          let x_2234 : vec4<bool> = (vec4<f32>(x_2231.y, x_2231.z, x_2231.y, x_2231.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb41 = vec2<bool>(x_2234.x, x_2234.y);
          let x_2238 : bool = u_xlatb41.x;
          if (x_2238) {
            let x_2243 : f32 = u_xlat10.x;
            x_2239 = x_2243;
          } else {
            let x_2246 : f32 = u_xlat10.x;
            x_2239 = -(x_2246);
          }
          let x_2248 : f32 = x_2239;
          u_xlat41.x = x_2248;
          let x_2251 : bool = u_xlatb41.y;
          if (x_2251) {
            let x_2256 : f32 = u_xlat10.x;
            x_2252 = x_2256;
          } else {
            let x_2259 : f32 = u_xlat10.x;
            x_2252 = -(x_2259);
          }
          let x_2261 : f32 = x_2252;
          u_xlat41.y = x_2261;
          let x_2263 : vec4<f32> = u_xlat9;
          let x_2265 : f32 = u_xlat57;
          let x_2268 : vec2<f32> = u_xlat41;
          u_xlat41 = ((vec2<f32>(x_2263.x, x_2263.y) * vec2<f32>(x_2265, x_2265)) + x_2268);
          let x_2270 : vec2<f32> = u_xlat41;
          u_xlat41 = ((x_2270 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2273 : vec2<f32> = u_xlat41;
          u_xlat41 = clamp(x_2273, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2277 : u32 = u_xlatu1;
          let x_2280 : vec4<f32> = x_1945.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2277)];
          let x_2282 : vec2<f32> = u_xlat41;
          let x_2284 : u32 = u_xlatu1;
          let x_2287 : vec4<f32> = x_1945.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2284)];
          let x_2289 : vec2<f32> = ((vec2<f32>(x_2280.x, x_2280.y) * x_2282) + vec2<f32>(x_2287.z, x_2287.w));
          let x_2290 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2289.x, x_2289.y, x_2290.z, x_2290.w);
        }
      }
      let x_2297 : vec4<f32> = u_xlat8;
      let x_2300 : f32 = x_43.x_GlobalMipBias.x;
      let x_2301 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2297.x, x_2297.y), x_2300);
      u_xlat8 = x_2301;
      let x_2303 : bool = u_xlatb5.y;
      if (x_2303) {
        let x_2308 : f32 = u_xlat8.w;
        x_2304 = x_2308;
      } else {
        let x_2311 : f32 = u_xlat8.x;
        x_2304 = x_2311;
      }
      let x_2312 : f32 = x_2304;
      u_xlat57 = x_2312;
      let x_2314 : bool = u_xlatb5.x;
      if (x_2314) {
        let x_2318 : vec4<f32> = u_xlat8;
        x_2315 = vec3<f32>(x_2318.x, x_2318.y, x_2318.z);
      } else {
        let x_2321 : f32 = u_xlat57;
        x_2315 = vec3<f32>(x_2321, x_2321, x_2321);
      }
      let x_2323 : vec3<f32> = x_2315;
      let x_2324 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2323.x, x_2323.y, x_2323.z, x_2324.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_2330 : vec4<f32> = u_xlat8;
    let x_2332 : u32 = u_xlatu1;
    let x_2335 : vec4<f32> = x_1836.x_AdditionalLightsColor[bitcast<i32>(x_2332)];
    let x_2337 : vec3<f32> = (vec3<f32>(x_2330.x, x_2330.y, x_2330.z) * vec3<f32>(x_2335.x, x_2335.y, x_2335.z));
    let x_2338 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2337.x, x_2337.y, x_2337.z, x_2338.w);
    let x_2340 : f32 = u_xlat56;
    let x_2342 : vec4<f32> = u_xlat8;
    let x_2344 : vec3<f32> = (vec3<f32>(x_2340, x_2340, x_2340) * vec3<f32>(x_2342.x, x_2342.y, x_2342.z));
    let x_2345 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2344.x, x_2344.y, x_2344.z, x_2345.w);
    let x_2347 : vec3<f32> = u_xlat2;
    let x_2348 : vec4<f32> = u_xlat7;
    u_xlat1.x = dot(x_2347, vec3<f32>(x_2348.x, x_2348.y, x_2348.z));
    let x_2353 : f32 = u_xlat1.x;
    u_xlat1.x = clamp(x_2353, 0.0f, 1.0f);
    let x_2356 : vec4<f32> = u_xlat1;
    let x_2358 : vec4<f32> = u_xlat8;
    let x_2360 : vec3<f32> = (vec3<f32>(x_2356.x, x_2356.x, x_2356.x) * vec3<f32>(x_2358.x, x_2358.y, x_2358.z));
    let x_2361 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2360.x, x_2360.y, x_2360.z, x_2361.w);
    let x_2363 : vec4<f32> = u_xlat1;
    let x_2365 : vec4<f32> = u_xlat7;
    let x_2367 : vec3<f32> = (vec3<f32>(x_2363.y, x_2363.z, x_2363.w) * vec3<f32>(x_2365.x, x_2365.y, x_2365.z));
    let x_2368 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2367.x, x_2367.y, x_2367.z, x_2368.w);
    let x_2370 : vec4<f32> = u_xlat7;
    let x_2372 : vec4<f32> = u_xlat0;
    let x_2375 : vec4<f32> = u_xlat6;
    let x_2377 : vec3<f32> = ((vec3<f32>(x_2370.x, x_2370.y, x_2370.z) * vec3<f32>(x_2372.x, x_2372.x, x_2372.x)) + vec3<f32>(x_2375.x, x_2375.y, x_2375.z));
    let x_2378 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2377.x, x_2377.y, x_2377.z, x_2378.w);

    continuing {
      let x_2380 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2380 + bitcast<u32>(1i));
    }
  }
  let x_2382 : vec3<f32> = u_xlat3;
  let x_2383 : vec4<f32> = u_xlat1;
  let x_2386 : vec4<f32> = u_xlat4;
  let x_2388 : vec3<f32> = ((x_2382 * vec3<f32>(x_2383.y, x_2383.z, x_2383.w)) + vec3<f32>(x_2386.x, x_2386.y, x_2386.z));
  let x_2389 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2388.x, x_2388.y, x_2388.z, x_2389.w);
  let x_2393 : vec4<f32> = u_xlat6;
  let x_2395 : vec4<f32> = u_xlat1;
  let x_2397 : vec3<f32> = (vec3<f32>(x_2393.x, x_2393.y, x_2393.z) + vec3<f32>(x_2395.x, x_2395.y, x_2395.z));
  let x_2398 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2397.x, x_2397.y, x_2397.z, x_2398.w);
  let x_2401 : f32 = x_56.x_Surface;
  u_xlatb18 = (x_2401 == 1.0f);
  let x_2403 : bool = u_xlatb18;
  let x_2404 : bool = u_xlatb36;
  u_xlatb18 = (x_2403 | x_2404);
  let x_2406 : bool = u_xlatb18;
  if (x_2406) {
    let x_2411 : f32 = u_xlat0.x;
    x_2407 = x_2411;
  } else {
    x_2407 = 1.0f;
  }
  let x_2413 : f32 = x_2407;
  SV_Target0.w = x_2413;
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

