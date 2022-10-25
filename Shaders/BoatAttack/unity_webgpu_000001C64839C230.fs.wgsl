struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_1 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_1,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_2 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_2,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(1) @binding(4) var<uniform> x_249 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1557 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_1681 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1801 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1910 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_60 : f32;
  var u_xlat18 : f32;
  var u_xlat36 : f32;
  var u_xlat54 : f32;
  var u_xlatb36 : bool;
  var x_110 : f32;
  var u_xlatb18 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb54 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb1 : bool;
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
  var u_xlat56 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat57 : f32;
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
  var u_xlatb56 : bool;
  var u_xlatb5 : vec2<bool>;
  var x_1642 : f32;
  var x_1654 : vec3<f32>;
  var u_xlatu54 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu56 : u32;
  var u_xlati57 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat58 : f32;
  var u_xlatu58 : u32;
  var u_xlati41 : i32;
  var u_xlati58 : i32;
  var u_xlati59 : i32;
  var u_xlatb58 : bool;
  var u_xlat44 : vec2<f32>;
  var u_xlatb41 : vec2<bool>;
  var u_xlat41 : vec2<f32>;
  var x_2204 : f32;
  var x_2217 : f32;
  var x_2269 : f32;
  var x_2280 : vec3<f32>;
  var x_2396 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_38 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_42.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z) * vec4<f32>(x_46.w, x_46.x, x_46.y, x_46.z));
  let x_54 : f32 = u_xlat1.x;
  let x_57 : f32 = x_42.x_Cutoff;
  u_xlatb0 = (x_54 >= x_57);
  let x_59 : bool = u_xlatb0;
  if (x_59) {
    let x_64 : f32 = u_xlat1.x;
    x_60 = x_64;
  } else {
    x_60 = 0.0f;
  }
  let x_67 : f32 = x_60;
  u_xlat0.x = x_67;
  let x_72 : f32 = u_xlat0.w;
  let x_74 : f32 = x_42.x_BaseColor.w;
  let x_77 : f32 = x_42.x_Cutoff;
  u_xlat18 = ((x_72 * x_74) + -(x_77));
  let x_82 : f32 = u_xlat1.x;
  u_xlat36 = dpdxCoarse(x_82);
  let x_86 : f32 = u_xlat1.x;
  u_xlat54 = dpdyCoarse(x_86);
  let x_88 : f32 = u_xlat54;
  let x_90 : f32 = u_xlat36;
  u_xlat36 = (abs(x_88) + abs(x_90));
  let x_93 : f32 = u_xlat36;
  u_xlat36 = max(x_93, 0.0001f);
  let x_96 : f32 = u_xlat18;
  let x_97 : f32 = u_xlat36;
  u_xlat18 = (x_96 / x_97);
  let x_99 : f32 = u_xlat18;
  u_xlat18 = (x_99 + 0.5f);
  let x_102 : f32 = u_xlat18;
  u_xlat18 = clamp(x_102, 0.0f, 1.0f);
  let x_107 : f32 = x_28.x_AlphaToMaskAvailable;
  u_xlatb36 = !((x_107 == 0.0f));
  let x_109 : bool = u_xlatb36;
  if (x_109) {
    let x_113 : f32 = u_xlat18;
    x_110 = x_113;
  } else {
    let x_116 : f32 = u_xlat0.x;
    x_110 = x_116;
  }
  let x_117 : f32 = x_110;
  u_xlat0.x = x_117;
  let x_120 : f32 = u_xlat0.x;
  u_xlat18 = (x_120 + -0.0001f);
  let x_124 : f32 = u_xlat18;
  u_xlatb18 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb18;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  u_xlat18 = dot(x_136, x_137);
  let x_139 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_139);
  let x_143 : f32 = u_xlat18;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_143, x_143, x_143) * x_145);
  let x_151 : f32 = vs_TEXCOORD1.y;
  let x_155 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat18 = (x_151 * x_155);
  let x_158 : f32 = x_28.unity_MatrixV[0i].z;
  let x_160 : f32 = vs_TEXCOORD1.x;
  let x_162 : f32 = u_xlat18;
  u_xlat18 = ((x_158 * x_160) + x_162);
  let x_166 : f32 = x_28.unity_MatrixV[2i].z;
  let x_168 : f32 = vs_TEXCOORD1.z;
  let x_170 : f32 = u_xlat18;
  u_xlat18 = ((x_166 * x_168) + x_170);
  let x_172 : f32 = u_xlat18;
  let x_175 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat18 = (x_172 + x_175);
  let x_177 : f32 = u_xlat18;
  let x_181 : f32 = x_28.x_ProjectionParams.y;
  u_xlat18 = (-(x_177) + -(x_181));
  let x_184 : f32 = u_xlat18;
  u_xlat18 = max(x_184, 0.0f);
  let x_186 : f32 = u_xlat18;
  let x_189 : f32 = x_28.unity_FogParams.x;
  u_xlat18 = (x_186 * x_189);
  let x_198 : vec2<f32> = vs_TEXCOORD7;
  let x_200 : f32 = x_28.x_GlobalMipBias.x;
  let x_201 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_198, x_200);
  u_xlat3 = x_201;
  let x_207 : vec2<f32> = vs_TEXCOORD7;
  let x_209 : f32 = x_28.x_GlobalMipBias.x;
  let x_210 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_207, x_209);
  let x_211 : vec3<f32> = vec3<f32>(x_210.x, x_210.y, x_210.z);
  let x_212 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
  let x_214 : vec4<f32> = u_xlat3;
  let x_218 : vec3<f32> = (vec3<f32>(x_214.x, x_214.y, x_214.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_219 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_221 : vec3<f32> = u_xlat2;
  let x_222 : vec4<f32> = u_xlat3;
  u_xlat54 = dot(x_221, vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_225 : f32 = u_xlat54;
  u_xlat54 = (x_225 + 0.5f);
  let x_227 : f32 = u_xlat54;
  let x_229 : vec4<f32> = u_xlat4;
  let x_231 : vec3<f32> = (vec3<f32>(x_227, x_227, x_227) * vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_232 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_235 : f32 = u_xlat3.w;
  u_xlat54 = max(x_235, 0.0001f);
  let x_237 : vec4<f32> = u_xlat3;
  let x_239 : f32 = u_xlat54;
  let x_241 : vec3<f32> = (vec3<f32>(x_237.x, x_237.y, x_237.z) / vec3<f32>(x_239, x_239, x_239));
  let x_242 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_252 : f32 = x_249.x_MainLightShadowParams.y;
  u_xlatb54 = (0.0f < x_252);
  let x_254 : bool = u_xlatb54;
  if (x_254) {
    let x_258 : f32 = x_249.x_MainLightShadowParams.y;
    u_xlatb54 = (x_258 == 1.0f);
    let x_260 : bool = u_xlatb54;
    if (x_260) {
      let x_265 : vec4<f32> = vs_TEXCOORD6;
      let x_268 : vec4<f32> = x_249.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_265.x, x_265.y, x_265.x, x_265.y) + x_268);
      let x_271 : vec4<f32> = u_xlat4;
      let x_272 : vec2<f32> = vec2<f32>(x_271.x, x_271.y);
      let x_274 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_272.x, x_272.y, x_274);
      let x_287 : vec3<f32> = txVec0;
      let x_289 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_287.xy, x_287.z);
      u_xlat5.x = x_289;
      let x_292 : vec4<f32> = u_xlat4;
      let x_293 : vec2<f32> = vec2<f32>(x_292.z, x_292.w);
      let x_295 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_293.x, x_293.y, x_295);
      let x_302 : vec3<f32> = txVec1;
      let x_304 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_302.xy, x_302.z);
      u_xlat5.y = x_304;
      let x_306 : vec4<f32> = vs_TEXCOORD6;
      let x_309 : vec4<f32> = x_249.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_306.x, x_306.y, x_306.x, x_306.y) + x_309);
      let x_312 : vec4<f32> = u_xlat4;
      let x_313 : vec2<f32> = vec2<f32>(x_312.x, x_312.y);
      let x_315 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_313.x, x_313.y, x_315);
      let x_322 : vec3<f32> = txVec2;
      let x_324 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_322.xy, x_322.z);
      u_xlat5.z = x_324;
      let x_327 : vec4<f32> = u_xlat4;
      let x_328 : vec2<f32> = vec2<f32>(x_327.z, x_327.w);
      let x_330 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_328.x, x_328.y, x_330);
      let x_337 : vec3<f32> = txVec3;
      let x_339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_337.xy, x_337.z);
      u_xlat5.w = x_339;
      let x_341 : vec4<f32> = u_xlat5;
      u_xlat54 = dot(x_341, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_348 : f32 = x_249.x_MainLightShadowParams.y;
      u_xlatb1 = (x_348 == 2.0f);
      let x_351 : bool = u_xlatb1;
      if (x_351) {
        let x_354 : vec4<f32> = vs_TEXCOORD6;
        let x_357 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_361 : vec2<f32> = ((vec2<f32>(x_354.x, x_354.y) * vec2<f32>(x_357.z, x_357.w)) + vec2<f32>(0.5f, 0.5f));
        let x_362 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_361.x, x_361.y, x_362.z, x_362.w);
        let x_364 : vec4<f32> = u_xlat4;
        let x_366 : vec2<f32> = floor(vec2<f32>(x_364.x, x_364.y));
        let x_367 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_366.x, x_366.y, x_367.z, x_367.w);
        let x_371 : vec4<f32> = vs_TEXCOORD6;
        let x_374 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_377 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_371.x, x_371.y) * vec2<f32>(x_374.z, x_374.w)) + -(vec2<f32>(x_377.x, x_377.y)));
        let x_381 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_381.x, x_381.x, x_381.y, x_381.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_386 : vec4<f32> = u_xlat5;
        let x_388 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_386.x, x_386.x, x_386.z, x_386.z) * vec4<f32>(x_388.x, x_388.x, x_388.z, x_388.z));
        let x_391 : vec4<f32> = u_xlat6;
        let x_395 : vec2<f32> = (vec2<f32>(x_391.y, x_391.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_396 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_395.x, x_396.y, x_395.y, x_396.w);
        let x_398 : vec4<f32> = u_xlat6;
        let x_401 : vec2<f32> = u_xlat40;
        let x_403 : vec2<f32> = ((vec2<f32>(x_398.x, x_398.z) * vec2<f32>(0.5f, 0.5f)) + -(x_401));
        let x_404 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_403.x, x_403.y, x_404.z, x_404.w);
        let x_407 : vec2<f32> = u_xlat40;
        u_xlat42 = (-(x_407) + vec2<f32>(1.0f, 1.0f));
        let x_412 : vec2<f32> = u_xlat40;
        let x_414 : vec2<f32> = min(x_412, vec2<f32>(0.0f, 0.0f));
        let x_415 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_414.x, x_414.y, x_415.z, x_415.w);
        let x_417 : vec4<f32> = u_xlat7;
        let x_420 : vec4<f32> = u_xlat7;
        let x_423 : vec2<f32> = u_xlat42;
        let x_424 : vec2<f32> = ((-(vec2<f32>(x_417.x, x_417.y)) * vec2<f32>(x_420.x, x_420.y)) + x_423);
        let x_425 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_424.x, x_424.y, x_425.z, x_425.w);
        let x_427 : vec2<f32> = u_xlat40;
        u_xlat40 = max(x_427, vec2<f32>(0.0f, 0.0f));
        let x_429 : vec2<f32> = u_xlat40;
        let x_431 : vec2<f32> = u_xlat40;
        let x_433 : vec4<f32> = u_xlat5;
        u_xlat40 = ((-(x_429) * x_431) + vec2<f32>(x_433.y, x_433.w));
        let x_436 : vec4<f32> = u_xlat7;
        let x_438 : vec2<f32> = (vec2<f32>(x_436.x, x_436.y) + vec2<f32>(1.0f, 1.0f));
        let x_439 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
        let x_441 : vec2<f32> = u_xlat40;
        u_xlat40 = (x_441 + vec2<f32>(1.0f, 1.0f));
        let x_444 : vec4<f32> = u_xlat6;
        let x_448 : vec2<f32> = (vec2<f32>(x_444.x, x_444.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_449 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_448.x, x_448.y, x_449.z, x_449.w);
        let x_451 : vec2<f32> = u_xlat42;
        let x_452 : vec2<f32> = (x_451 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_453 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_452.x, x_452.y, x_453.z, x_453.w);
        let x_455 : vec4<f32> = u_xlat7;
        let x_457 : vec2<f32> = (vec2<f32>(x_455.x, x_455.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_458 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_457.x, x_457.y, x_458.z, x_458.w);
        let x_461 : vec2<f32> = u_xlat40;
        let x_462 : vec2<f32> = (x_461 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_463 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_462.x, x_462.y, x_463.z, x_463.w);
        let x_465 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_465.y, x_465.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_469 : f32 = u_xlat7.x;
        u_xlat8.z = x_469;
        let x_472 : f32 = u_xlat40.x;
        u_xlat8.w = x_472;
        let x_475 : f32 = u_xlat9.x;
        u_xlat6.z = x_475;
        let x_478 : f32 = u_xlat5.x;
        u_xlat6.w = x_478;
        let x_481 : vec4<f32> = u_xlat6;
        let x_483 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_481.z, x_481.w, x_481.x, x_481.z) + vec4<f32>(x_483.z, x_483.w, x_483.x, x_483.z));
        let x_487 : f32 = u_xlat8.y;
        u_xlat7.z = x_487;
        let x_490 : f32 = u_xlat40.y;
        u_xlat7.w = x_490;
        let x_493 : f32 = u_xlat6.y;
        u_xlat9.z = x_493;
        let x_496 : f32 = u_xlat5.z;
        u_xlat9.w = x_496;
        let x_498 : vec4<f32> = u_xlat7;
        let x_500 : vec4<f32> = u_xlat9;
        let x_502 : vec3<f32> = (vec3<f32>(x_498.z, x_498.y, x_498.w) + vec3<f32>(x_500.z, x_500.y, x_500.w));
        let x_503 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
        let x_505 : vec4<f32> = u_xlat6;
        let x_507 : vec4<f32> = u_xlat10;
        let x_509 : vec3<f32> = (vec3<f32>(x_505.x, x_505.z, x_505.w) / vec3<f32>(x_507.z, x_507.w, x_507.y));
        let x_510 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
        let x_512 : vec4<f32> = u_xlat6;
        let x_517 : vec3<f32> = (vec3<f32>(x_512.x, x_512.y, x_512.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_518 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
        let x_520 : vec4<f32> = u_xlat9;
        let x_522 : vec4<f32> = u_xlat5;
        let x_524 : vec3<f32> = (vec3<f32>(x_520.z, x_520.y, x_520.w) / vec3<f32>(x_522.x, x_522.y, x_522.z));
        let x_525 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
        let x_527 : vec4<f32> = u_xlat7;
        let x_529 : vec3<f32> = (vec3<f32>(x_527.x, x_527.y, x_527.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_530 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
        let x_532 : vec4<f32> = u_xlat6;
        let x_535 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_537 : vec3<f32> = (vec3<f32>(x_532.y, x_532.x, x_532.z) * vec3<f32>(x_535.x, x_535.x, x_535.x));
        let x_538 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
        let x_540 : vec4<f32> = u_xlat7;
        let x_543 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_545 : vec3<f32> = (vec3<f32>(x_540.x, x_540.y, x_540.z) * vec3<f32>(x_543.y, x_543.y, x_543.y));
        let x_546 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
        let x_549 : f32 = u_xlat7.x;
        u_xlat6.w = x_549;
        let x_551 : vec4<f32> = u_xlat4;
        let x_554 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_557 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_551.x, x_551.y, x_551.x, x_551.y) * vec4<f32>(x_554.x, x_554.y, x_554.x, x_554.y)) + vec4<f32>(x_557.y, x_557.w, x_557.x, x_557.w));
        let x_560 : vec4<f32> = u_xlat4;
        let x_563 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_566 : vec4<f32> = u_xlat6;
        u_xlat40 = ((vec2<f32>(x_560.x, x_560.y) * vec2<f32>(x_563.x, x_563.y)) + vec2<f32>(x_566.z, x_566.w));
        let x_570 : f32 = u_xlat6.y;
        u_xlat7.w = x_570;
        let x_572 : vec4<f32> = u_xlat7;
        let x_573 : vec2<f32> = vec2<f32>(x_572.y, x_572.z);
        let x_574 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_574.x, x_573.x, x_574.z, x_573.y);
        let x_576 : vec4<f32> = u_xlat4;
        let x_579 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_582 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_576.x, x_576.y, x_576.x, x_576.y) * vec4<f32>(x_579.x, x_579.y, x_579.x, x_579.y)) + vec4<f32>(x_582.x, x_582.y, x_582.z, x_582.y));
        let x_585 : vec4<f32> = u_xlat4;
        let x_588 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_591 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_585.x, x_585.y, x_585.x, x_585.y) * vec4<f32>(x_588.x, x_588.y, x_588.x, x_588.y)) + vec4<f32>(x_591.w, x_591.y, x_591.w, x_591.z));
        let x_594 : vec4<f32> = u_xlat4;
        let x_597 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_600 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_594.x, x_594.y, x_594.x, x_594.y) * vec4<f32>(x_597.x, x_597.y, x_597.x, x_597.y)) + vec4<f32>(x_600.x, x_600.w, x_600.z, x_600.w));
        let x_604 : vec4<f32> = u_xlat5;
        let x_606 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_604.x, x_604.x, x_604.x, x_604.y) * vec4<f32>(x_606.z, x_606.w, x_606.y, x_606.z));
        let x_610 : vec4<f32> = u_xlat5;
        let x_612 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_610.y, x_610.y, x_610.z, x_610.z) * x_612);
        let x_615 : f32 = u_xlat5.z;
        let x_617 : f32 = u_xlat10.y;
        u_xlat1.x = (x_615 * x_617);
        let x_621 : vec4<f32> = u_xlat8;
        let x_622 : vec2<f32> = vec2<f32>(x_621.x, x_621.y);
        let x_624 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_622.x, x_622.y, x_624);
        let x_632 : vec3<f32> = txVec4;
        let x_634 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_632.xy, x_632.z);
        u_xlat56 = x_634;
        let x_636 : vec4<f32> = u_xlat8;
        let x_637 : vec2<f32> = vec2<f32>(x_636.z, x_636.w);
        let x_639 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_637.x, x_637.y, x_639);
        let x_647 : vec3<f32> = txVec5;
        let x_649 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_647.xy, x_647.z);
        u_xlat57 = x_649;
        let x_650 : f32 = u_xlat57;
        let x_652 : f32 = u_xlat11.y;
        u_xlat57 = (x_650 * x_652);
        let x_655 : f32 = u_xlat11.x;
        let x_656 : f32 = u_xlat56;
        let x_658 : f32 = u_xlat57;
        u_xlat56 = ((x_655 * x_656) + x_658);
        let x_661 : vec2<f32> = u_xlat40;
        let x_663 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_661.x, x_661.y, x_663);
        let x_670 : vec3<f32> = txVec6;
        let x_672 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_670.xy, x_670.z);
        u_xlat57 = x_672;
        let x_674 : f32 = u_xlat11.z;
        let x_675 : f32 = u_xlat57;
        let x_677 : f32 = u_xlat56;
        u_xlat56 = ((x_674 * x_675) + x_677);
        let x_680 : vec4<f32> = u_xlat7;
        let x_681 : vec2<f32> = vec2<f32>(x_680.x, x_680.y);
        let x_683 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_681.x, x_681.y, x_683);
        let x_690 : vec3<f32> = txVec7;
        let x_692 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_690.xy, x_690.z);
        u_xlat57 = x_692;
        let x_694 : f32 = u_xlat11.w;
        let x_695 : f32 = u_xlat57;
        let x_697 : f32 = u_xlat56;
        u_xlat56 = ((x_694 * x_695) + x_697);
        let x_700 : vec4<f32> = u_xlat9;
        let x_701 : vec2<f32> = vec2<f32>(x_700.x, x_700.y);
        let x_703 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_701.x, x_701.y, x_703);
        let x_710 : vec3<f32> = txVec8;
        let x_712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_710.xy, x_710.z);
        u_xlat57 = x_712;
        let x_714 : f32 = u_xlat12.x;
        let x_715 : f32 = u_xlat57;
        let x_717 : f32 = u_xlat56;
        u_xlat56 = ((x_714 * x_715) + x_717);
        let x_720 : vec4<f32> = u_xlat9;
        let x_721 : vec2<f32> = vec2<f32>(x_720.z, x_720.w);
        let x_723 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_721.x, x_721.y, x_723);
        let x_730 : vec3<f32> = txVec9;
        let x_732 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_730.xy, x_730.z);
        u_xlat57 = x_732;
        let x_734 : f32 = u_xlat12.y;
        let x_735 : f32 = u_xlat57;
        let x_737 : f32 = u_xlat56;
        u_xlat56 = ((x_734 * x_735) + x_737);
        let x_740 : vec4<f32> = u_xlat7;
        let x_741 : vec2<f32> = vec2<f32>(x_740.z, x_740.w);
        let x_743 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_741.x, x_741.y, x_743);
        let x_750 : vec3<f32> = txVec10;
        let x_752 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_750.xy, x_750.z);
        u_xlat57 = x_752;
        let x_754 : f32 = u_xlat12.z;
        let x_755 : f32 = u_xlat57;
        let x_757 : f32 = u_xlat56;
        u_xlat56 = ((x_754 * x_755) + x_757);
        let x_760 : vec4<f32> = u_xlat6;
        let x_761 : vec2<f32> = vec2<f32>(x_760.x, x_760.y);
        let x_763 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_761.x, x_761.y, x_763);
        let x_770 : vec3<f32> = txVec11;
        let x_772 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_770.xy, x_770.z);
        u_xlat57 = x_772;
        let x_774 : f32 = u_xlat12.w;
        let x_775 : f32 = u_xlat57;
        let x_777 : f32 = u_xlat56;
        u_xlat56 = ((x_774 * x_775) + x_777);
        let x_780 : vec4<f32> = u_xlat6;
        let x_781 : vec2<f32> = vec2<f32>(x_780.z, x_780.w);
        let x_783 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_781.x, x_781.y, x_783);
        let x_790 : vec3<f32> = txVec12;
        let x_792 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_790.xy, x_790.z);
        u_xlat57 = x_792;
        let x_794 : f32 = u_xlat1.x;
        let x_795 : f32 = u_xlat57;
        let x_797 : f32 = u_xlat56;
        u_xlat54 = ((x_794 * x_795) + x_797);
      } else {
        let x_800 : vec4<f32> = vs_TEXCOORD6;
        let x_803 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_806 : vec2<f32> = ((vec2<f32>(x_800.x, x_800.y) * vec2<f32>(x_803.z, x_803.w)) + vec2<f32>(0.5f, 0.5f));
        let x_807 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_806.x, x_806.y, x_807.z, x_807.w);
        let x_809 : vec4<f32> = u_xlat4;
        let x_811 : vec2<f32> = floor(vec2<f32>(x_809.x, x_809.y));
        let x_812 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_811.x, x_811.y, x_812.z, x_812.w);
        let x_814 : vec4<f32> = vs_TEXCOORD6;
        let x_817 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_820 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_814.x, x_814.y) * vec2<f32>(x_817.z, x_817.w)) + -(vec2<f32>(x_820.x, x_820.y)));
        let x_824 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_824.x, x_824.x, x_824.y, x_824.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_827 : vec4<f32> = u_xlat5;
        let x_829 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_827.x, x_827.x, x_827.z, x_827.z) * vec4<f32>(x_829.x, x_829.x, x_829.z, x_829.z));
        let x_832 : vec4<f32> = u_xlat6;
        let x_836 : vec2<f32> = (vec2<f32>(x_832.y, x_832.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_837 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_837.x, x_836.x, x_837.z, x_836.y);
        let x_839 : vec4<f32> = u_xlat6;
        let x_842 : vec2<f32> = u_xlat40;
        let x_844 : vec2<f32> = ((vec2<f32>(x_839.x, x_839.z) * vec2<f32>(0.5f, 0.5f)) + -(x_842));
        let x_845 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_844.x, x_845.y, x_844.y, x_845.w);
        let x_847 : vec2<f32> = u_xlat40;
        let x_849 : vec2<f32> = (-(x_847) + vec2<f32>(1.0f, 1.0f));
        let x_850 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_849.x, x_849.y, x_850.z, x_850.w);
        let x_852 : vec2<f32> = u_xlat40;
        u_xlat42 = min(x_852, vec2<f32>(0.0f, 0.0f));
        let x_854 : vec2<f32> = u_xlat42;
        let x_856 : vec2<f32> = u_xlat42;
        let x_858 : vec4<f32> = u_xlat6;
        let x_860 : vec2<f32> = ((-(x_854) * x_856) + vec2<f32>(x_858.x, x_858.y));
        let x_861 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_860.x, x_860.y, x_861.z, x_861.w);
        let x_863 : vec2<f32> = u_xlat40;
        u_xlat42 = max(x_863, vec2<f32>(0.0f, 0.0f));
        let x_866 : vec2<f32> = u_xlat42;
        let x_868 : vec2<f32> = u_xlat42;
        let x_870 : vec4<f32> = u_xlat5;
        let x_872 : vec2<f32> = ((-(x_866) * x_868) + vec2<f32>(x_870.y, x_870.w));
        let x_873 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_872.x, x_873.y, x_872.y);
        let x_875 : vec4<f32> = u_xlat6;
        let x_878 : vec2<f32> = (vec2<f32>(x_875.x, x_875.y) + vec2<f32>(2.0f, 2.0f));
        let x_879 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_878.x, x_878.y, x_879.z, x_879.w);
        let x_881 : vec3<f32> = u_xlat23;
        let x_883 : vec2<f32> = (vec2<f32>(x_881.x, x_881.z) + vec2<f32>(2.0f, 2.0f));
        let x_884 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_884.x, x_883.x, x_884.z, x_883.y);
        let x_887 : f32 = u_xlat5.y;
        u_xlat8.z = (x_887 * 0.081632003f);
        let x_891 : vec4<f32> = u_xlat5;
        let x_894 : vec3<f32> = (vec3<f32>(x_891.z, x_891.x, x_891.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_895 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
        let x_897 : vec4<f32> = u_xlat6;
        let x_900 : vec2<f32> = (vec2<f32>(x_897.x, x_897.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_901 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_900.x, x_900.y, x_901.z, x_901.w);
        let x_904 : f32 = u_xlat9.y;
        u_xlat8.x = x_904;
        let x_906 : vec2<f32> = u_xlat40;
        let x_913 : vec2<f32> = ((vec2<f32>(x_906.x, x_906.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_914 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_914.x, x_913.x, x_914.z, x_913.y);
        let x_916 : vec2<f32> = u_xlat40;
        let x_920 : vec2<f32> = ((vec2<f32>(x_916.x, x_916.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_921 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_920.x, x_921.y, x_920.y, x_921.w);
        let x_924 : f32 = u_xlat5.x;
        u_xlat6.y = x_924;
        let x_927 : f32 = u_xlat7.y;
        u_xlat6.w = x_927;
        let x_929 : vec4<f32> = u_xlat6;
        let x_930 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_929 + x_930);
        let x_932 : vec2<f32> = u_xlat40;
        let x_935 : vec2<f32> = ((vec2<f32>(x_932.y, x_932.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_936 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_936.x, x_935.x, x_936.z, x_935.y);
        let x_938 : vec2<f32> = u_xlat40;
        let x_941 : vec2<f32> = ((vec2<f32>(x_938.y, x_938.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_942 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_941.x, x_942.y, x_941.y, x_942.w);
        let x_945 : f32 = u_xlat5.y;
        u_xlat7.y = x_945;
        let x_947 : vec4<f32> = u_xlat7;
        let x_948 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_947 + x_948);
        let x_950 : vec4<f32> = u_xlat6;
        let x_951 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_950 / x_951);
        let x_953 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_953 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_959 : vec4<f32> = u_xlat7;
        let x_960 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_959 / x_960);
        let x_962 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_962 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_964 : vec4<f32> = u_xlat6;
        let x_967 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_964.w, x_964.x, x_964.y, x_964.z) * vec4<f32>(x_967.x, x_967.x, x_967.x, x_967.x));
        let x_970 : vec4<f32> = u_xlat7;
        let x_973 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_970.x, x_970.w, x_970.y, x_970.z) * vec4<f32>(x_973.y, x_973.y, x_973.y, x_973.y));
        let x_976 : vec4<f32> = u_xlat6;
        let x_977 : vec3<f32> = vec3<f32>(x_976.y, x_976.z, x_976.w);
        let x_978 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_977.x, x_978.y, x_977.y, x_977.z);
        let x_981 : f32 = u_xlat7.x;
        u_xlat9.y = x_981;
        let x_983 : vec4<f32> = u_xlat4;
        let x_986 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_989 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_983.x, x_983.y, x_983.x, x_983.y) * vec4<f32>(x_986.x, x_986.y, x_986.x, x_986.y)) + vec4<f32>(x_989.x, x_989.y, x_989.z, x_989.y));
        let x_992 : vec4<f32> = u_xlat4;
        let x_995 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_998 : vec4<f32> = u_xlat9;
        u_xlat40 = ((vec2<f32>(x_992.x, x_992.y) * vec2<f32>(x_995.x, x_995.y)) + vec2<f32>(x_998.w, x_998.y));
        let x_1002 : f32 = u_xlat9.y;
        u_xlat6.y = x_1002;
        let x_1005 : f32 = u_xlat7.z;
        u_xlat9.y = x_1005;
        let x_1007 : vec4<f32> = u_xlat4;
        let x_1010 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1013 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1007.x, x_1007.y, x_1007.x, x_1007.y) * vec4<f32>(x_1010.x, x_1010.y, x_1010.x, x_1010.y)) + vec4<f32>(x_1013.x, x_1013.y, x_1013.z, x_1013.y));
        let x_1016 : vec4<f32> = u_xlat4;
        let x_1019 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1022 : vec4<f32> = u_xlat9;
        let x_1024 : vec2<f32> = ((vec2<f32>(x_1016.x, x_1016.y) * vec2<f32>(x_1019.x, x_1019.y)) + vec2<f32>(x_1022.w, x_1022.y));
        let x_1025 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1024.x, x_1024.y, x_1025.z, x_1025.w);
        let x_1028 : f32 = u_xlat9.y;
        u_xlat6.z = x_1028;
        let x_1031 : vec4<f32> = u_xlat4;
        let x_1034 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1037 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1031.x, x_1031.y, x_1031.x, x_1031.y) * vec4<f32>(x_1034.x, x_1034.y, x_1034.x, x_1034.y)) + vec4<f32>(x_1037.x, x_1037.y, x_1037.x, x_1037.z));
        let x_1041 : f32 = u_xlat7.w;
        u_xlat9.y = x_1041;
        let x_1044 : vec4<f32> = u_xlat4;
        let x_1047 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1050 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1044.x, x_1044.y, x_1044.x, x_1044.y) * vec4<f32>(x_1047.x, x_1047.y, x_1047.x, x_1047.y)) + vec4<f32>(x_1050.x, x_1050.y, x_1050.z, x_1050.y));
        let x_1054 : vec4<f32> = u_xlat4;
        let x_1057 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1060 : vec4<f32> = u_xlat9;
        u_xlat24 = ((vec2<f32>(x_1054.x, x_1054.y) * vec2<f32>(x_1057.x, x_1057.y)) + vec2<f32>(x_1060.w, x_1060.y));
        let x_1064 : f32 = u_xlat9.y;
        u_xlat6.w = x_1064;
        let x_1067 : vec4<f32> = u_xlat4;
        let x_1070 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1073 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1067.x, x_1067.y) * vec2<f32>(x_1070.x, x_1070.y)) + vec2<f32>(x_1073.x, x_1073.w));
        let x_1076 : vec4<f32> = u_xlat9;
        let x_1077 : vec3<f32> = vec3<f32>(x_1076.x, x_1076.z, x_1076.w);
        let x_1078 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1077.x, x_1078.y, x_1077.y, x_1077.z);
        let x_1080 : vec4<f32> = u_xlat4;
        let x_1083 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1086 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1080.x, x_1080.y, x_1080.x, x_1080.y) * vec4<f32>(x_1083.x, x_1083.y, x_1083.x, x_1083.y)) + vec4<f32>(x_1086.x, x_1086.y, x_1086.z, x_1086.y));
        let x_1090 : vec4<f32> = u_xlat4;
        let x_1093 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1096 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1090.x, x_1090.y) * vec2<f32>(x_1093.x, x_1093.y)) + vec2<f32>(x_1096.w, x_1096.y));
        let x_1100 : f32 = u_xlat6.x;
        u_xlat7.x = x_1100;
        let x_1102 : vec4<f32> = u_xlat4;
        let x_1105 : vec4<f32> = x_249.x_MainLightShadowmapSize;
        let x_1108 : vec4<f32> = u_xlat7;
        let x_1110 : vec2<f32> = ((vec2<f32>(x_1102.x, x_1102.y) * vec2<f32>(x_1105.x, x_1105.y)) + vec2<f32>(x_1108.x, x_1108.y));
        let x_1111 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1110.x, x_1110.y, x_1111.z, x_1111.w);
        let x_1114 : vec4<f32> = u_xlat5;
        let x_1116 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1114.x, x_1114.x, x_1114.x, x_1114.x) * x_1116);
        let x_1119 : vec4<f32> = u_xlat5;
        let x_1121 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1119.y, x_1119.y, x_1119.y, x_1119.y) * x_1121);
        let x_1124 : vec4<f32> = u_xlat5;
        let x_1126 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1124.z, x_1124.z, x_1124.z, x_1124.z) * x_1126);
        let x_1128 : vec4<f32> = u_xlat5;
        let x_1130 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1128.w, x_1128.w, x_1128.w, x_1128.w) * x_1130);
        let x_1133 : vec4<f32> = u_xlat10;
        let x_1134 : vec2<f32> = vec2<f32>(x_1133.x, x_1133.y);
        let x_1136 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1134.x, x_1134.y, x_1136);
        let x_1143 : vec3<f32> = txVec13;
        let x_1145 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1143.xy, x_1143.z);
        u_xlat1.x = x_1145;
        let x_1148 : vec4<f32> = u_xlat10;
        let x_1149 : vec2<f32> = vec2<f32>(x_1148.z, x_1148.w);
        let x_1151 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1149.x, x_1149.y, x_1151);
        let x_1158 : vec3<f32> = txVec14;
        let x_1160 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1158.xy, x_1158.z);
        u_xlat56 = x_1160;
        let x_1161 : f32 = u_xlat56;
        let x_1163 : f32 = u_xlat15.y;
        u_xlat56 = (x_1161 * x_1163);
        let x_1166 : f32 = u_xlat15.x;
        let x_1168 : f32 = u_xlat1.x;
        let x_1170 : f32 = u_xlat56;
        u_xlat1.x = ((x_1166 * x_1168) + x_1170);
        let x_1174 : vec2<f32> = u_xlat40;
        let x_1176 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1174.x, x_1174.y, x_1176);
        let x_1183 : vec3<f32> = txVec15;
        let x_1185 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1183.xy, x_1183.z);
        u_xlat56 = x_1185;
        let x_1187 : f32 = u_xlat15.z;
        let x_1188 : f32 = u_xlat56;
        let x_1191 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1187 * x_1188) + x_1191);
        let x_1195 : vec4<f32> = u_xlat13;
        let x_1196 : vec2<f32> = vec2<f32>(x_1195.x, x_1195.y);
        let x_1198 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1196.x, x_1196.y, x_1198);
        let x_1205 : vec3<f32> = txVec16;
        let x_1207 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1205.xy, x_1205.z);
        u_xlat56 = x_1207;
        let x_1209 : f32 = u_xlat15.w;
        let x_1210 : f32 = u_xlat56;
        let x_1213 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1209 * x_1210) + x_1213);
        let x_1217 : vec4<f32> = u_xlat11;
        let x_1218 : vec2<f32> = vec2<f32>(x_1217.x, x_1217.y);
        let x_1220 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1218.x, x_1218.y, x_1220);
        let x_1227 : vec3<f32> = txVec17;
        let x_1229 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1227.xy, x_1227.z);
        u_xlat56 = x_1229;
        let x_1231 : f32 = u_xlat16.x;
        let x_1232 : f32 = u_xlat56;
        let x_1235 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1231 * x_1232) + x_1235);
        let x_1239 : vec4<f32> = u_xlat11;
        let x_1240 : vec2<f32> = vec2<f32>(x_1239.z, x_1239.w);
        let x_1242 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1240.x, x_1240.y, x_1242);
        let x_1249 : vec3<f32> = txVec18;
        let x_1251 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1249.xy, x_1249.z);
        u_xlat56 = x_1251;
        let x_1253 : f32 = u_xlat16.y;
        let x_1254 : f32 = u_xlat56;
        let x_1257 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1253 * x_1254) + x_1257);
        let x_1261 : vec4<f32> = u_xlat12;
        let x_1262 : vec2<f32> = vec2<f32>(x_1261.x, x_1261.y);
        let x_1264 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1262.x, x_1262.y, x_1264);
        let x_1271 : vec3<f32> = txVec19;
        let x_1273 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1271.xy, x_1271.z);
        u_xlat56 = x_1273;
        let x_1275 : f32 = u_xlat16.z;
        let x_1276 : f32 = u_xlat56;
        let x_1279 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1275 * x_1276) + x_1279);
        let x_1283 : vec4<f32> = u_xlat13;
        let x_1284 : vec2<f32> = vec2<f32>(x_1283.z, x_1283.w);
        let x_1286 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1284.x, x_1284.y, x_1286);
        let x_1293 : vec3<f32> = txVec20;
        let x_1295 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1293.xy, x_1293.z);
        u_xlat56 = x_1295;
        let x_1297 : f32 = u_xlat16.w;
        let x_1298 : f32 = u_xlat56;
        let x_1301 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1297 * x_1298) + x_1301);
        let x_1305 : vec4<f32> = u_xlat14;
        let x_1306 : vec2<f32> = vec2<f32>(x_1305.x, x_1305.y);
        let x_1308 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1306.x, x_1306.y, x_1308);
        let x_1315 : vec3<f32> = txVec21;
        let x_1317 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1315.xy, x_1315.z);
        u_xlat56 = x_1317;
        let x_1319 : f32 = u_xlat17.x;
        let x_1320 : f32 = u_xlat56;
        let x_1323 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1319 * x_1320) + x_1323);
        let x_1327 : vec4<f32> = u_xlat14;
        let x_1328 : vec2<f32> = vec2<f32>(x_1327.z, x_1327.w);
        let x_1330 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1328.x, x_1328.y, x_1330);
        let x_1337 : vec3<f32> = txVec22;
        let x_1339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1337.xy, x_1337.z);
        u_xlat56 = x_1339;
        let x_1341 : f32 = u_xlat17.y;
        let x_1342 : f32 = u_xlat56;
        let x_1345 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1341 * x_1342) + x_1345);
        let x_1349 : vec2<f32> = u_xlat24;
        let x_1351 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1349.x, x_1349.y, x_1351);
        let x_1358 : vec3<f32> = txVec23;
        let x_1360 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1358.xy, x_1358.z);
        u_xlat56 = x_1360;
        let x_1362 : f32 = u_xlat17.z;
        let x_1363 : f32 = u_xlat56;
        let x_1366 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1362 * x_1363) + x_1366);
        let x_1370 : vec2<f32> = u_xlat48;
        let x_1372 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1370.x, x_1370.y, x_1372);
        let x_1379 : vec3<f32> = txVec24;
        let x_1381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1379.xy, x_1379.z);
        u_xlat56 = x_1381;
        let x_1383 : f32 = u_xlat17.w;
        let x_1384 : f32 = u_xlat56;
        let x_1387 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1383 * x_1384) + x_1387);
        let x_1391 : vec4<f32> = u_xlat9;
        let x_1392 : vec2<f32> = vec2<f32>(x_1391.x, x_1391.y);
        let x_1394 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1392.x, x_1392.y, x_1394);
        let x_1401 : vec3<f32> = txVec25;
        let x_1403 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1401.xy, x_1401.z);
        u_xlat56 = x_1403;
        let x_1405 : f32 = u_xlat5.x;
        let x_1406 : f32 = u_xlat56;
        let x_1409 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1405 * x_1406) + x_1409);
        let x_1413 : vec4<f32> = u_xlat9;
        let x_1414 : vec2<f32> = vec2<f32>(x_1413.z, x_1413.w);
        let x_1416 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1414.x, x_1414.y, x_1416);
        let x_1423 : vec3<f32> = txVec26;
        let x_1425 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1423.xy, x_1423.z);
        u_xlat56 = x_1425;
        let x_1427 : f32 = u_xlat5.y;
        let x_1428 : f32 = u_xlat56;
        let x_1431 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1427 * x_1428) + x_1431);
        let x_1435 : vec2<f32> = u_xlat43;
        let x_1437 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1435.x, x_1435.y, x_1437);
        let x_1444 : vec3<f32> = txVec27;
        let x_1446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1444.xy, x_1444.z);
        u_xlat56 = x_1446;
        let x_1448 : f32 = u_xlat5.z;
        let x_1449 : f32 = u_xlat56;
        let x_1452 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1448 * x_1449) + x_1452);
        let x_1456 : vec4<f32> = u_xlat4;
        let x_1457 : vec2<f32> = vec2<f32>(x_1456.x, x_1456.y);
        let x_1459 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1457.x, x_1457.y, x_1459);
        let x_1466 : vec3<f32> = txVec28;
        let x_1468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1466.xy, x_1466.z);
        u_xlat56 = x_1468;
        let x_1470 : f32 = u_xlat5.w;
        let x_1471 : f32 = u_xlat56;
        let x_1474 : f32 = u_xlat1.x;
        u_xlat54 = ((x_1470 * x_1471) + x_1474);
      }
    }
  } else {
    let x_1478 : vec4<f32> = vs_TEXCOORD6;
    let x_1479 : vec2<f32> = vec2<f32>(x_1478.x, x_1478.y);
    let x_1481 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1479.x, x_1479.y, x_1481);
    let x_1488 : vec3<f32> = txVec29;
    let x_1490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1488.xy, x_1488.z);
    u_xlat54 = x_1490;
  }
  let x_1492 : f32 = x_249.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_1492) + 1.0f);
  let x_1496 : f32 = u_xlat54;
  let x_1498 : f32 = x_249.x_MainLightShadowParams.x;
  let x_1501 : f32 = u_xlat1.x;
  u_xlat54 = ((x_1496 * x_1498) + x_1501);
  let x_1504 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_1504);
  let x_1508 : f32 = vs_TEXCOORD6.z;
  u_xlatb56 = (x_1508 >= 1.0f);
  let x_1510 : bool = u_xlatb1;
  let x_1511 : bool = u_xlatb56;
  u_xlatb1 = (x_1510 | x_1511);
  let x_1513 : bool = u_xlatb1;
  let x_1514 : f32 = u_xlat54;
  u_xlat54 = select(x_1514, 1.0f, x_1513);
  let x_1516 : vec3<f32> = vs_TEXCOORD1;
  let x_1520 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1522 : vec3<f32> = (x_1516 + -(x_1520));
  let x_1523 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1522.x, x_1522.y, x_1522.z, x_1523.w);
  let x_1525 : vec4<f32> = u_xlat4;
  let x_1527 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec3<f32>(x_1525.x, x_1525.y, x_1525.z), vec3<f32>(x_1527.x, x_1527.y, x_1527.z));
  let x_1532 : f32 = u_xlat1.x;
  let x_1534 : f32 = x_249.x_MainLightShadowParams.z;
  let x_1537 : f32 = x_249.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_1532 * x_1534) + x_1537);
  let x_1541 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1541, 0.0f, 1.0f);
  let x_1544 : f32 = u_xlat54;
  u_xlat56 = (-(x_1544) + 1.0f);
  let x_1548 : f32 = u_xlat1.x;
  let x_1549 : f32 = u_xlat56;
  let x_1551 : f32 = u_xlat54;
  u_xlat54 = ((x_1548 * x_1549) + x_1551);
  let x_1559 : f32 = x_1557.x_MainLightCookieTextureFormat;
  u_xlatb1 = !((x_1559 == -1.0f));
  let x_1562 : bool = u_xlatb1;
  if (x_1562) {
    let x_1565 : vec3<f32> = vs_TEXCOORD1;
    let x_1568 : vec4<f32> = x_1557.x_MainLightWorldToLight[1i];
    let x_1570 : vec2<f32> = (vec2<f32>(x_1565.y, x_1565.y) * vec2<f32>(x_1568.x, x_1568.y));
    let x_1571 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1570.x, x_1570.y, x_1571.z, x_1571.w);
    let x_1574 : vec4<f32> = x_1557.x_MainLightWorldToLight[0i];
    let x_1576 : vec3<f32> = vs_TEXCOORD1;
    let x_1579 : vec4<f32> = u_xlat4;
    let x_1581 : vec2<f32> = ((vec2<f32>(x_1574.x, x_1574.y) * vec2<f32>(x_1576.x, x_1576.x)) + vec2<f32>(x_1579.x, x_1579.y));
    let x_1582 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1581.x, x_1581.y, x_1582.z, x_1582.w);
    let x_1585 : vec4<f32> = x_1557.x_MainLightWorldToLight[2i];
    let x_1587 : vec3<f32> = vs_TEXCOORD1;
    let x_1590 : vec4<f32> = u_xlat4;
    let x_1592 : vec2<f32> = ((vec2<f32>(x_1585.x, x_1585.y) * vec2<f32>(x_1587.z, x_1587.z)) + vec2<f32>(x_1590.x, x_1590.y));
    let x_1593 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1592.x, x_1592.y, x_1593.z, x_1593.w);
    let x_1595 : vec4<f32> = u_xlat4;
    let x_1598 : vec4<f32> = x_1557.x_MainLightWorldToLight[3i];
    let x_1600 : vec2<f32> = (vec2<f32>(x_1595.x, x_1595.y) + vec2<f32>(x_1598.x, x_1598.y));
    let x_1601 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1600.x, x_1600.y, x_1601.z, x_1601.w);
    let x_1603 : vec4<f32> = u_xlat4;
    let x_1606 : vec2<f32> = ((vec2<f32>(x_1603.x, x_1603.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1607 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1606.x, x_1606.y, x_1607.z, x_1607.w);
    let x_1614 : vec4<f32> = u_xlat4;
    let x_1617 : f32 = x_28.x_GlobalMipBias.x;
    let x_1618 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1614.x, x_1614.y), x_1617);
    u_xlat4 = x_1618;
    let x_1623 : f32 = x_1557.x_MainLightCookieTextureFormat;
    let x_1625 : f32 = x_1557.x_MainLightCookieTextureFormat;
    let x_1627 : f32 = x_1557.x_MainLightCookieTextureFormat;
    let x_1629 : f32 = x_1557.x_MainLightCookieTextureFormat;
    let x_1630 : vec4<f32> = vec4<f32>(x_1623, x_1625, x_1627, x_1629);
    let x_1638 : vec4<bool> = (vec4<f32>(x_1630.x, x_1630.y, x_1630.z, x_1630.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1638.x, x_1638.y);
    let x_1641 : bool = u_xlatb5.y;
    if (x_1641) {
      let x_1646 : f32 = u_xlat4.w;
      x_1642 = x_1646;
    } else {
      let x_1649 : f32 = u_xlat4.x;
      x_1642 = x_1649;
    }
    let x_1650 : f32 = x_1642;
    u_xlat1.x = x_1650;
    let x_1653 : bool = u_xlatb5.x;
    if (x_1653) {
      let x_1657 : vec4<f32> = u_xlat4;
      x_1654 = vec3<f32>(x_1657.x, x_1657.y, x_1657.z);
    } else {
      let x_1660 : vec4<f32> = u_xlat1;
      x_1654 = vec3<f32>(x_1660.x, x_1660.x, x_1660.x);
    }
    let x_1662 : vec3<f32> = x_1654;
    let x_1663 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1662.x, x_1662.y, x_1662.z, x_1663.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1669 : vec4<f32> = u_xlat4;
  let x_1672 : vec4<f32> = x_28.x_MainLightColor;
  let x_1674 : vec3<f32> = (vec3<f32>(x_1669.x, x_1669.y, x_1669.z) * vec3<f32>(x_1672.x, x_1672.y, x_1672.z));
  let x_1675 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1674.x, x_1674.y, x_1674.z, x_1675.w);
  let x_1677 : f32 = u_xlat54;
  let x_1683 : f32 = x_1681.unity_LightData.z;
  u_xlat54 = (x_1677 * x_1683);
  let x_1685 : f32 = u_xlat54;
  let x_1687 : vec4<f32> = u_xlat4;
  let x_1689 : vec3<f32> = (vec3<f32>(x_1685, x_1685, x_1685) * vec3<f32>(x_1687.x, x_1687.y, x_1687.z));
  let x_1690 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1689.x, x_1689.y, x_1689.z, x_1690.w);
  let x_1692 : vec3<f32> = u_xlat2;
  let x_1694 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat54 = dot(x_1692, vec3<f32>(x_1694.x, x_1694.y, x_1694.z));
  let x_1697 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1697, 0.0f, 1.0f);
  let x_1699 : f32 = u_xlat54;
  let x_1701 : vec4<f32> = u_xlat4;
  let x_1703 : vec3<f32> = (vec3<f32>(x_1699, x_1699, x_1699) * vec3<f32>(x_1701.x, x_1701.y, x_1701.z));
  let x_1704 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1703.x, x_1703.y, x_1703.z, x_1704.w);
  let x_1706 : vec4<f32> = u_xlat1;
  let x_1708 : vec4<f32> = u_xlat4;
  let x_1710 : vec3<f32> = (vec3<f32>(x_1706.y, x_1706.z, x_1706.w) * vec3<f32>(x_1708.x, x_1708.y, x_1708.z));
  let x_1711 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1710.x, x_1710.y, x_1710.z, x_1711.w);
  let x_1713 : vec4<f32> = u_xlat0;
  let x_1715 : vec4<f32> = u_xlat4;
  let x_1717 : vec3<f32> = (vec3<f32>(x_1713.x, x_1713.x, x_1713.x) * vec3<f32>(x_1715.x, x_1715.y, x_1715.z));
  let x_1718 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1717.x, x_1717.y, x_1717.z, x_1718.w);
  let x_1721 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1723 : f32 = x_1681.unity_LightData.y;
  u_xlat54 = min(x_1721, x_1723);
  let x_1727 : f32 = u_xlat54;
  u_xlatu54 = bitcast<u32>(i32(x_1727));
  let x_1731 : f32 = x_1557.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1733 : f32 = x_1557.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1735 : f32 = x_1557.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1737 : f32 = x_1557.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1738 : vec4<f32> = vec4<f32>(x_1731, x_1733, x_1735, x_1737);
  let x_1744 : vec4<bool> = (vec4<f32>(x_1738.x, x_1738.y, x_1738.z, x_1738.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1744.x, x_1744.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1755 : u32 = u_xlatu_loop_1;
    let x_1756 : u32 = u_xlatu54;
    if ((x_1755 < x_1756)) {
    } else {
      break;
    }
    let x_1759 : u32 = u_xlatu_loop_1;
    u_xlatu56 = (x_1759 >> 2u);
    let x_1763 : u32 = u_xlatu_loop_1;
    u_xlati57 = bitcast<i32>((x_1763 & 3u));
    let x_1766 : u32 = u_xlatu56;
    let x_1769 : vec4<f32> = x_1681.unity_LightIndices[bitcast<i32>(x_1766)];
    let x_1779 : i32 = u_xlati57;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1784 : vec4<u32> = indexable[x_1779];
    u_xlat56 = dot(x_1769, bitcast<vec4<f32>>(x_1784));
    let x_1787 : f32 = u_xlat56;
    u_xlatu56 = bitcast<u32>(i32(x_1787));
    let x_1790 : vec3<f32> = vs_TEXCOORD1;
    let x_1802 : u32 = u_xlatu56;
    let x_1805 : vec4<f32> = x_1801.x_AdditionalLightsPosition[bitcast<i32>(x_1802)];
    let x_1808 : u32 = u_xlatu56;
    let x_1811 : vec4<f32> = x_1801.x_AdditionalLightsPosition[bitcast<i32>(x_1808)];
    let x_1813 : vec3<f32> = ((-(x_1790) * vec3<f32>(x_1805.w, x_1805.w, x_1805.w)) + vec3<f32>(x_1811.x, x_1811.y, x_1811.z));
    let x_1814 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1813.x, x_1813.y, x_1813.z, x_1814.w);
    let x_1816 : vec4<f32> = u_xlat7;
    let x_1818 : vec4<f32> = u_xlat7;
    u_xlat57 = dot(vec3<f32>(x_1816.x, x_1816.y, x_1816.z), vec3<f32>(x_1818.x, x_1818.y, x_1818.z));
    let x_1821 : f32 = u_xlat57;
    u_xlat57 = max(x_1821, 6.10351562e-05f);
    let x_1825 : f32 = u_xlat57;
    u_xlat58 = inverseSqrt(x_1825);
    let x_1827 : f32 = u_xlat58;
    let x_1829 : vec4<f32> = u_xlat7;
    let x_1831 : vec3<f32> = (vec3<f32>(x_1827, x_1827, x_1827) * vec3<f32>(x_1829.x, x_1829.y, x_1829.z));
    let x_1832 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1831.x, x_1831.y, x_1831.z, x_1832.w);
    let x_1834 : f32 = u_xlat57;
    u_xlat58 = (1.0f / x_1834);
    let x_1836 : f32 = u_xlat57;
    let x_1837 : u32 = u_xlatu56;
    let x_1840 : f32 = x_1801.x_AdditionalLightsAttenuation[bitcast<i32>(x_1837)].x;
    u_xlat57 = (x_1836 * x_1840);
    let x_1842 : f32 = u_xlat57;
    let x_1844 : f32 = u_xlat57;
    u_xlat57 = ((-(x_1842) * x_1844) + 1.0f);
    let x_1847 : f32 = u_xlat57;
    u_xlat57 = max(x_1847, 0.0f);
    let x_1849 : f32 = u_xlat57;
    let x_1850 : f32 = u_xlat57;
    u_xlat57 = (x_1849 * x_1850);
    let x_1852 : f32 = u_xlat57;
    let x_1853 : f32 = u_xlat58;
    u_xlat57 = (x_1852 * x_1853);
    let x_1855 : u32 = u_xlatu56;
    let x_1858 : vec4<f32> = x_1801.x_AdditionalLightsSpotDir[bitcast<i32>(x_1855)];
    let x_1860 : vec4<f32> = u_xlat7;
    u_xlat58 = dot(vec3<f32>(x_1858.x, x_1858.y, x_1858.z), vec3<f32>(x_1860.x, x_1860.y, x_1860.z));
    let x_1863 : f32 = u_xlat58;
    let x_1864 : u32 = u_xlatu56;
    let x_1867 : f32 = x_1801.x_AdditionalLightsAttenuation[bitcast<i32>(x_1864)].z;
    let x_1869 : u32 = u_xlatu56;
    let x_1872 : f32 = x_1801.x_AdditionalLightsAttenuation[bitcast<i32>(x_1869)].w;
    u_xlat58 = ((x_1863 * x_1867) + x_1872);
    let x_1874 : f32 = u_xlat58;
    u_xlat58 = clamp(x_1874, 0.0f, 1.0f);
    let x_1876 : f32 = u_xlat58;
    let x_1877 : f32 = u_xlat58;
    u_xlat58 = (x_1876 * x_1877);
    let x_1879 : f32 = u_xlat57;
    let x_1880 : f32 = u_xlat58;
    u_xlat57 = (x_1879 * x_1880);
    let x_1883 : u32 = u_xlatu56;
    u_xlatu58 = (x_1883 >> 5u);
    let x_1886 : u32 = u_xlatu56;
    u_xlati41 = (1i << bitcast<u32>((bitcast<i32>(x_1886) & 31i)));
    let x_1892 : i32 = u_xlati41;
    let x_1894 : u32 = u_xlatu58;
    let x_1897 : f32 = x_1557.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1894)].el;
    u_xlati58 = bitcast<i32>((bitcast<u32>(x_1892) & bitcast<u32>(x_1897)));
    let x_1901 : i32 = u_xlati58;
    if ((x_1901 != 0i)) {
      let x_1911 : u32 = u_xlatu56;
      let x_1914 : f32 = x_1910.x_AdditionalLightsLightTypes[bitcast<i32>(x_1911)].el;
      u_xlati58 = i32(x_1914);
      let x_1916 : i32 = u_xlati58;
      u_xlati41 = select(1i, 0i, (x_1916 != 0i));
      let x_1920 : u32 = u_xlatu56;
      u_xlati59 = (bitcast<i32>(x_1920) << bitcast<u32>(2i));
      let x_1923 : i32 = u_xlati41;
      if ((x_1923 != 0i)) {
        let x_1927 : vec3<f32> = vs_TEXCOORD1;
        let x_1929 : i32 = u_xlati59;
        let x_1932 : i32 = u_xlati59;
        let x_1936 : vec4<f32> = x_1910.x_AdditionalLightsWorldToLights[((x_1929 + 1i) / 4i)][((x_1932 + 1i) % 4i)];
        let x_1938 : vec3<f32> = (vec3<f32>(x_1927.y, x_1927.y, x_1927.y) * vec3<f32>(x_1936.x, x_1936.y, x_1936.w));
        let x_1939 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1938.x, x_1938.y, x_1938.z, x_1939.w);
        let x_1941 : i32 = u_xlati59;
        let x_1943 : i32 = u_xlati59;
        let x_1946 : vec4<f32> = x_1910.x_AdditionalLightsWorldToLights[(x_1941 / 4i)][(x_1943 % 4i)];
        let x_1948 : vec3<f32> = vs_TEXCOORD1;
        let x_1951 : vec4<f32> = u_xlat8;
        let x_1953 : vec3<f32> = ((vec3<f32>(x_1946.x, x_1946.y, x_1946.w) * vec3<f32>(x_1948.x, x_1948.x, x_1948.x)) + vec3<f32>(x_1951.x, x_1951.y, x_1951.z));
        let x_1954 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1953.x, x_1953.y, x_1953.z, x_1954.w);
        let x_1956 : i32 = u_xlati59;
        let x_1959 : i32 = u_xlati59;
        let x_1963 : vec4<f32> = x_1910.x_AdditionalLightsWorldToLights[((x_1956 + 2i) / 4i)][((x_1959 + 2i) % 4i)];
        let x_1965 : vec3<f32> = vs_TEXCOORD1;
        let x_1968 : vec4<f32> = u_xlat8;
        let x_1970 : vec3<f32> = ((vec3<f32>(x_1963.x, x_1963.y, x_1963.w) * vec3<f32>(x_1965.z, x_1965.z, x_1965.z)) + vec3<f32>(x_1968.x, x_1968.y, x_1968.z));
        let x_1971 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1970.x, x_1970.y, x_1970.z, x_1971.w);
        let x_1973 : vec4<f32> = u_xlat8;
        let x_1975 : i32 = u_xlati59;
        let x_1978 : i32 = u_xlati59;
        let x_1982 : vec4<f32> = x_1910.x_AdditionalLightsWorldToLights[((x_1975 + 3i) / 4i)][((x_1978 + 3i) % 4i)];
        let x_1984 : vec3<f32> = (vec3<f32>(x_1973.x, x_1973.y, x_1973.z) + vec3<f32>(x_1982.x, x_1982.y, x_1982.w));
        let x_1985 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1984.x, x_1984.y, x_1984.z, x_1985.w);
        let x_1987 : vec4<f32> = u_xlat8;
        let x_1989 : vec4<f32> = u_xlat8;
        let x_1991 : vec2<f32> = (vec2<f32>(x_1987.x, x_1987.y) / vec2<f32>(x_1989.z, x_1989.z));
        let x_1992 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1991.x, x_1991.y, x_1992.z, x_1992.w);
        let x_1994 : vec4<f32> = u_xlat8;
        let x_1997 : vec2<f32> = ((vec2<f32>(x_1994.x, x_1994.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1998 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1997.x, x_1997.y, x_1998.z, x_1998.w);
        let x_2000 : vec4<f32> = u_xlat8;
        let x_2004 : vec2<f32> = clamp(vec2<f32>(x_2000.x, x_2000.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2005 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2004.x, x_2004.y, x_2005.z, x_2005.w);
        let x_2007 : u32 = u_xlatu56;
        let x_2010 : vec4<f32> = x_1910.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2007)];
        let x_2012 : vec4<f32> = u_xlat8;
        let x_2015 : u32 = u_xlatu56;
        let x_2018 : vec4<f32> = x_1910.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2015)];
        let x_2020 : vec2<f32> = ((vec2<f32>(x_2010.x, x_2010.y) * vec2<f32>(x_2012.x, x_2012.y)) + vec2<f32>(x_2018.z, x_2018.w));
        let x_2021 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2020.x, x_2020.y, x_2021.z, x_2021.w);
      } else {
        let x_2025 : i32 = u_xlati58;
        u_xlatb58 = (x_2025 == 1i);
        let x_2027 : bool = u_xlatb58;
        u_xlati58 = select(0i, 1i, x_2027);
        let x_2029 : i32 = u_xlati58;
        if ((x_2029 != 0i)) {
          let x_2034 : vec3<f32> = vs_TEXCOORD1;
          let x_2036 : i32 = u_xlati59;
          let x_2039 : i32 = u_xlati59;
          let x_2043 : vec4<f32> = x_1910.x_AdditionalLightsWorldToLights[((x_2036 + 1i) / 4i)][((x_2039 + 1i) % 4i)];
          u_xlat44 = (vec2<f32>(x_2034.y, x_2034.y) * vec2<f32>(x_2043.x, x_2043.y));
          let x_2046 : i32 = u_xlati59;
          let x_2048 : i32 = u_xlati59;
          let x_2051 : vec4<f32> = x_1910.x_AdditionalLightsWorldToLights[(x_2046 / 4i)][(x_2048 % 4i)];
          let x_2053 : vec3<f32> = vs_TEXCOORD1;
          let x_2056 : vec2<f32> = u_xlat44;
          u_xlat44 = ((vec2<f32>(x_2051.x, x_2051.y) * vec2<f32>(x_2053.x, x_2053.x)) + x_2056);
          let x_2058 : i32 = u_xlati59;
          let x_2061 : i32 = u_xlati59;
          let x_2065 : vec4<f32> = x_1910.x_AdditionalLightsWorldToLights[((x_2058 + 2i) / 4i)][((x_2061 + 2i) % 4i)];
          let x_2067 : vec3<f32> = vs_TEXCOORD1;
          let x_2070 : vec2<f32> = u_xlat44;
          u_xlat44 = ((vec2<f32>(x_2065.x, x_2065.y) * vec2<f32>(x_2067.z, x_2067.z)) + x_2070);
          let x_2072 : vec2<f32> = u_xlat44;
          let x_2073 : i32 = u_xlati59;
          let x_2076 : i32 = u_xlati59;
          let x_2080 : vec4<f32> = x_1910.x_AdditionalLightsWorldToLights[((x_2073 + 3i) / 4i)][((x_2076 + 3i) % 4i)];
          u_xlat44 = (x_2072 + vec2<f32>(x_2080.x, x_2080.y));
          let x_2083 : vec2<f32> = u_xlat44;
          u_xlat44 = ((x_2083 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2086 : vec2<f32> = u_xlat44;
          u_xlat44 = fract(x_2086);
          let x_2088 : u32 = u_xlatu56;
          let x_2091 : vec4<f32> = x_1910.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2088)];
          let x_2093 : vec2<f32> = u_xlat44;
          let x_2095 : u32 = u_xlatu56;
          let x_2098 : vec4<f32> = x_1910.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2095)];
          let x_2100 : vec2<f32> = ((vec2<f32>(x_2091.x, x_2091.y) * x_2093) + vec2<f32>(x_2098.z, x_2098.w));
          let x_2101 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2100.x, x_2100.y, x_2101.z, x_2101.w);
        } else {
          let x_2104 : vec3<f32> = vs_TEXCOORD1;
          let x_2106 : i32 = u_xlati59;
          let x_2109 : i32 = u_xlati59;
          let x_2113 : vec4<f32> = x_1910.x_AdditionalLightsWorldToLights[((x_2106 + 1i) / 4i)][((x_2109 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_2104.y, x_2104.y, x_2104.y, x_2104.y) * x_2113);
          let x_2115 : i32 = u_xlati59;
          let x_2117 : i32 = u_xlati59;
          let x_2120 : vec4<f32> = x_1910.x_AdditionalLightsWorldToLights[(x_2115 / 4i)][(x_2117 % 4i)];
          let x_2121 : vec3<f32> = vs_TEXCOORD1;
          let x_2124 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2120 * vec4<f32>(x_2121.x, x_2121.x, x_2121.x, x_2121.x)) + x_2124);
          let x_2126 : i32 = u_xlati59;
          let x_2129 : i32 = u_xlati59;
          let x_2133 : vec4<f32> = x_1910.x_AdditionalLightsWorldToLights[((x_2126 + 2i) / 4i)][((x_2129 + 2i) % 4i)];
          let x_2134 : vec3<f32> = vs_TEXCOORD1;
          let x_2137 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2133 * vec4<f32>(x_2134.z, x_2134.z, x_2134.z, x_2134.z)) + x_2137);
          let x_2139 : vec4<f32> = u_xlat9;
          let x_2140 : i32 = u_xlati59;
          let x_2143 : i32 = u_xlati59;
          let x_2147 : vec4<f32> = x_1910.x_AdditionalLightsWorldToLights[((x_2140 + 3i) / 4i)][((x_2143 + 3i) % 4i)];
          u_xlat9 = (x_2139 + x_2147);
          let x_2149 : vec4<f32> = u_xlat9;
          let x_2151 : vec4<f32> = u_xlat9;
          let x_2153 : vec3<f32> = (vec3<f32>(x_2149.x, x_2149.y, x_2149.z) / vec3<f32>(x_2151.w, x_2151.w, x_2151.w));
          let x_2154 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2153.x, x_2153.y, x_2153.z, x_2154.w);
          let x_2156 : vec4<f32> = u_xlat9;
          let x_2158 : vec4<f32> = u_xlat9;
          u_xlat58 = dot(vec3<f32>(x_2156.x, x_2156.y, x_2156.z), vec3<f32>(x_2158.x, x_2158.y, x_2158.z));
          let x_2161 : f32 = u_xlat58;
          u_xlat58 = inverseSqrt(x_2161);
          let x_2163 : f32 = u_xlat58;
          let x_2165 : vec4<f32> = u_xlat9;
          let x_2167 : vec3<f32> = (vec3<f32>(x_2163, x_2163, x_2163) * vec3<f32>(x_2165.x, x_2165.y, x_2165.z));
          let x_2168 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2167.x, x_2167.y, x_2167.z, x_2168.w);
          let x_2170 : vec4<f32> = u_xlat9;
          u_xlat58 = dot(abs(vec3<f32>(x_2170.x, x_2170.y, x_2170.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2175 : f32 = u_xlat58;
          u_xlat58 = max(x_2175, 0.000001f);
          let x_2178 : f32 = u_xlat58;
          u_xlat58 = (1.0f / x_2178);
          let x_2180 : f32 = u_xlat58;
          let x_2182 : vec4<f32> = u_xlat9;
          let x_2184 : vec3<f32> = (vec3<f32>(x_2180, x_2180, x_2180) * vec3<f32>(x_2182.z, x_2182.x, x_2182.y));
          let x_2185 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2184.x, x_2184.y, x_2184.z, x_2185.w);
          let x_2188 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_2188);
          let x_2192 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_2192, 0.0f, 1.0f);
          let x_2196 : vec4<f32> = u_xlat10;
          let x_2199 : vec4<bool> = (vec4<f32>(x_2196.y, x_2196.z, x_2196.y, x_2196.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb41 = vec2<bool>(x_2199.x, x_2199.y);
          let x_2203 : bool = u_xlatb41.x;
          if (x_2203) {
            let x_2208 : f32 = u_xlat10.x;
            x_2204 = x_2208;
          } else {
            let x_2211 : f32 = u_xlat10.x;
            x_2204 = -(x_2211);
          }
          let x_2213 : f32 = x_2204;
          u_xlat41.x = x_2213;
          let x_2216 : bool = u_xlatb41.y;
          if (x_2216) {
            let x_2221 : f32 = u_xlat10.x;
            x_2217 = x_2221;
          } else {
            let x_2224 : f32 = u_xlat10.x;
            x_2217 = -(x_2224);
          }
          let x_2226 : f32 = x_2217;
          u_xlat41.y = x_2226;
          let x_2228 : vec4<f32> = u_xlat9;
          let x_2230 : f32 = u_xlat58;
          let x_2233 : vec2<f32> = u_xlat41;
          u_xlat41 = ((vec2<f32>(x_2228.x, x_2228.y) * vec2<f32>(x_2230, x_2230)) + x_2233);
          let x_2235 : vec2<f32> = u_xlat41;
          u_xlat41 = ((x_2235 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2238 : vec2<f32> = u_xlat41;
          u_xlat41 = clamp(x_2238, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2242 : u32 = u_xlatu56;
          let x_2245 : vec4<f32> = x_1910.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2242)];
          let x_2247 : vec2<f32> = u_xlat41;
          let x_2249 : u32 = u_xlatu56;
          let x_2252 : vec4<f32> = x_1910.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2249)];
          let x_2254 : vec2<f32> = ((vec2<f32>(x_2245.x, x_2245.y) * x_2247) + vec2<f32>(x_2252.z, x_2252.w));
          let x_2255 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2254.x, x_2254.y, x_2255.z, x_2255.w);
        }
      }
      let x_2262 : vec4<f32> = u_xlat8;
      let x_2265 : f32 = x_28.x_GlobalMipBias.x;
      let x_2266 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2262.x, x_2262.y), x_2265);
      u_xlat8 = x_2266;
      let x_2268 : bool = u_xlatb5.y;
      if (x_2268) {
        let x_2273 : f32 = u_xlat8.w;
        x_2269 = x_2273;
      } else {
        let x_2276 : f32 = u_xlat8.x;
        x_2269 = x_2276;
      }
      let x_2277 : f32 = x_2269;
      u_xlat58 = x_2277;
      let x_2279 : bool = u_xlatb5.x;
      if (x_2279) {
        let x_2283 : vec4<f32> = u_xlat8;
        x_2280 = vec3<f32>(x_2283.x, x_2283.y, x_2283.z);
      } else {
        let x_2286 : f32 = u_xlat58;
        x_2280 = vec3<f32>(x_2286, x_2286, x_2286);
      }
      let x_2288 : vec3<f32> = x_2280;
      let x_2289 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2288.x, x_2288.y, x_2288.z, x_2289.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_2295 : vec4<f32> = u_xlat8;
    let x_2297 : u32 = u_xlatu56;
    let x_2300 : vec4<f32> = x_1801.x_AdditionalLightsColor[bitcast<i32>(x_2297)];
    let x_2302 : vec3<f32> = (vec3<f32>(x_2295.x, x_2295.y, x_2295.z) * vec3<f32>(x_2300.x, x_2300.y, x_2300.z));
    let x_2303 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2302.x, x_2302.y, x_2302.z, x_2303.w);
    let x_2305 : f32 = u_xlat57;
    let x_2307 : vec4<f32> = u_xlat8;
    let x_2309 : vec3<f32> = (vec3<f32>(x_2305, x_2305, x_2305) * vec3<f32>(x_2307.x, x_2307.y, x_2307.z));
    let x_2310 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2309.x, x_2309.y, x_2309.z, x_2310.w);
    let x_2312 : vec3<f32> = u_xlat2;
    let x_2313 : vec4<f32> = u_xlat7;
    u_xlat56 = dot(x_2312, vec3<f32>(x_2313.x, x_2313.y, x_2313.z));
    let x_2316 : f32 = u_xlat56;
    u_xlat56 = clamp(x_2316, 0.0f, 1.0f);
    let x_2318 : f32 = u_xlat56;
    let x_2320 : vec4<f32> = u_xlat8;
    let x_2322 : vec3<f32> = (vec3<f32>(x_2318, x_2318, x_2318) * vec3<f32>(x_2320.x, x_2320.y, x_2320.z));
    let x_2323 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2322.x, x_2322.y, x_2322.z, x_2323.w);
    let x_2325 : vec4<f32> = u_xlat1;
    let x_2327 : vec4<f32> = u_xlat7;
    let x_2329 : vec3<f32> = (vec3<f32>(x_2325.y, x_2325.z, x_2325.w) * vec3<f32>(x_2327.x, x_2327.y, x_2327.z));
    let x_2330 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2329.x, x_2329.y, x_2329.z, x_2330.w);
    let x_2332 : vec4<f32> = u_xlat7;
    let x_2334 : vec4<f32> = u_xlat0;
    let x_2337 : vec4<f32> = u_xlat6;
    let x_2339 : vec3<f32> = ((vec3<f32>(x_2332.x, x_2332.y, x_2332.z) * vec3<f32>(x_2334.x, x_2334.x, x_2334.x)) + vec3<f32>(x_2337.x, x_2337.y, x_2337.z));
    let x_2340 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2339.x, x_2339.y, x_2339.z, x_2340.w);

    continuing {
      let x_2342 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2342 + bitcast<u32>(1i));
    }
  }
  let x_2344 : vec4<f32> = u_xlat3;
  let x_2346 : vec4<f32> = u_xlat1;
  let x_2349 : vec4<f32> = u_xlat4;
  let x_2351 : vec3<f32> = ((vec3<f32>(x_2344.x, x_2344.y, x_2344.z) * vec3<f32>(x_2346.y, x_2346.z, x_2346.w)) + vec3<f32>(x_2349.x, x_2349.y, x_2349.z));
  let x_2352 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2351.x, x_2351.y, x_2351.z, x_2352.w);
  let x_2354 : vec4<f32> = u_xlat6;
  let x_2356 : vec4<f32> = u_xlat1;
  let x_2358 : vec3<f32> = (vec3<f32>(x_2354.x, x_2354.y, x_2354.z) + vec3<f32>(x_2356.x, x_2356.y, x_2356.z));
  let x_2359 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2358.x, x_2358.y, x_2358.z, x_2359.w);
  let x_2361 : f32 = u_xlat18;
  let x_2362 : f32 = u_xlat18;
  u_xlat18 = (x_2361 * -(x_2362));
  let x_2365 : f32 = u_xlat18;
  u_xlat18 = exp2(x_2365);
  let x_2367 : vec4<f32> = u_xlat1;
  let x_2370 : vec4<f32> = x_28.unity_FogColor;
  let x_2373 : vec3<f32> = (vec3<f32>(x_2367.x, x_2367.y, x_2367.z) + -(vec3<f32>(x_2370.x, x_2370.y, x_2370.z)));
  let x_2374 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2373.x, x_2373.y, x_2373.z, x_2374.w);
  let x_2378 : f32 = u_xlat18;
  let x_2380 : vec4<f32> = u_xlat1;
  let x_2384 : vec4<f32> = x_28.unity_FogColor;
  let x_2386 : vec3<f32> = ((vec3<f32>(x_2378, x_2378, x_2378) * vec3<f32>(x_2380.x, x_2380.y, x_2380.z)) + vec3<f32>(x_2384.x, x_2384.y, x_2384.z));
  let x_2387 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2386.x, x_2386.y, x_2386.z, x_2387.w);
  let x_2390 : f32 = x_42.x_Surface;
  u_xlatb18 = (x_2390 == 1.0f);
  let x_2392 : bool = u_xlatb18;
  let x_2393 : bool = u_xlatb36;
  u_xlatb18 = (x_2392 | x_2393);
  let x_2395 : bool = u_xlatb18;
  if (x_2395) {
    let x_2400 : f32 = u_xlat0.x;
    x_2396 = x_2400;
  } else {
    x_2396 = 1.0f;
  }
  let x_2402 : f32 = x_2396;
  SV_Target0.w = x_2402;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

