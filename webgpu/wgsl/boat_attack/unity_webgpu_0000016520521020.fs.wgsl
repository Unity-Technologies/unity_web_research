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
  x_MainTex_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Shininess : f32,
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

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_64 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_170 : MainLightShadows;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1750 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_1885 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2002 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2110 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_70 : f32;
  var u_xlat19 : f32;
  var u_xlat38 : f32;
  var u_xlat57 : f32;
  var u_xlatb38 : bool;
  var x_119 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu0 : u32;
  var u_xlati0 : i32;
  var u_xlatb58 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat58 : f32;
  var u_xlatb59 : bool;
  var u_xlat43 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat45 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat59 : f32;
  var txVec4 : vec3<f32>;
  var u_xlat60 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat61 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat25 : vec3<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat26 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat46 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
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
  var u_xlatb5 : vec2<bool>;
  var x_1833 : f32;
  var x_1844 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu59 : u32;
  var u_xlati60 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu61 : u32;
  var u_xlati43 : i32;
  var u_xlati61 : i32;
  var u_xlati62 : i32;
  var u_xlatb61 : bool;
  var u_xlatb43 : vec2<bool>;
  var x_2402 : f32;
  var x_2415 : f32;
  var x_2467 : f32;
  var x_2478 : vec3<f32>;
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
  let x_50 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_40, x_49);
  u_xlat0 = x_50;
  let x_52 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_52 * x_54);
  let x_61 : f32 = u_xlat1.w;
  let x_67 : f32 = x_64.x_Cutoff;
  u_xlatb0 = (x_61 >= x_67);
  let x_69 : bool = u_xlatb0;
  if (x_69) {
    let x_74 : f32 = u_xlat1.w;
    x_70 = x_74;
  } else {
    x_70 = 0.0f;
  }
  let x_77 : f32 = x_70;
  u_xlat0.x = x_77;
  let x_81 : f32 = u_xlat0.w;
  let x_83 : f32 = vs_TEXCOORD7.w;
  let x_86 : f32 = x_64.x_Cutoff;
  u_xlat19 = ((x_81 * x_83) + -(x_86));
  let x_91 : f32 = u_xlat1.w;
  u_xlat38 = dpdxCoarse(x_91);
  let x_95 : f32 = u_xlat1.w;
  u_xlat57 = dpdyCoarse(x_95);
  let x_97 : f32 = u_xlat57;
  let x_99 : f32 = u_xlat38;
  u_xlat38 = (abs(x_97) + abs(x_99));
  let x_102 : f32 = u_xlat38;
  u_xlat38 = max(x_102, 0.0001f);
  let x_105 : f32 = u_xlat19;
  let x_106 : f32 = u_xlat38;
  u_xlat19 = (x_105 / x_106);
  let x_108 : f32 = u_xlat19;
  u_xlat19 = (x_108 + 0.5f);
  let x_111 : f32 = u_xlat19;
  u_xlat19 = clamp(x_111, 0.0f, 1.0f);
  let x_116 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb38 = !((x_116 == 0.0f));
  let x_118 : bool = u_xlatb38;
  if (x_118) {
    let x_122 : f32 = u_xlat19;
    x_119 = x_122;
  } else {
    let x_125 : f32 = u_xlat0.x;
    x_119 = x_125;
  }
  let x_126 : f32 = x_119;
  u_xlat0.x = x_126;
  let x_129 : f32 = u_xlat0.x;
  u_xlat0.x = (x_129 + -0.0001f);
  let x_134 : f32 = u_xlat0.x;
  u_xlatb0 = (x_134 < 0.0f);
  let x_136 : bool = u_xlatb0;
  if (((select(0i, 1i, x_136) * -1i) != 0i)) {
    discard;
  }
  let x_147 : vec3<f32> = vs_TEXCOORD3;
  let x_148 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_147, x_148);
  let x_152 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_152);
  let x_157 : vec4<f32> = u_xlat0;
  let x_159 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_157.x, x_157.x, x_157.x) * x_159);
  let x_163 : vec4<f32> = vs_TEXCOORD2;
  let x_173 : vec4<f32> = x_170.x_CascadeShadowSplitSpheres0;
  let x_176 : vec3<f32> = (vec3<f32>(x_163.x, x_163.y, x_163.z) + -(vec3<f32>(x_173.x, x_173.y, x_173.z)));
  let x_177 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_180 : vec4<f32> = vs_TEXCOORD2;
  let x_183 : vec4<f32> = x_170.x_CascadeShadowSplitSpheres1;
  let x_186 : vec3<f32> = (vec3<f32>(x_180.x, x_180.y, x_180.z) + -(vec3<f32>(x_183.x, x_183.y, x_183.z)));
  let x_187 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_190 : vec4<f32> = vs_TEXCOORD2;
  let x_194 : vec4<f32> = x_170.x_CascadeShadowSplitSpheres2;
  let x_197 : vec3<f32> = (vec3<f32>(x_190.x, x_190.y, x_190.z) + -(vec3<f32>(x_194.x, x_194.y, x_194.z)));
  let x_198 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  let x_201 : vec4<f32> = vs_TEXCOORD2;
  let x_204 : vec4<f32> = x_170.x_CascadeShadowSplitSpheres3;
  let x_207 : vec3<f32> = (vec3<f32>(x_201.x, x_201.y, x_201.z) + -(vec3<f32>(x_204.x, x_204.y, x_204.z)));
  let x_208 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_210 : vec4<f32> = u_xlat3;
  let x_212 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_210.x, x_210.y, x_210.z), vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_216 : vec4<f32> = u_xlat4;
  let x_218 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_216.x, x_216.y, x_216.z), vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_223 : vec4<f32> = u_xlat5;
  let x_225 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_223.x, x_223.y, x_223.z), vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_230 : vec4<f32> = u_xlat6;
  let x_232 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_230.x, x_230.y, x_230.z), vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_239 : vec4<f32> = u_xlat3;
  let x_242 : vec4<f32> = x_170.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_239 < x_242);
  let x_245 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_245);
  let x_249 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_249);
  let x_253 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_253);
  let x_257 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_257);
  let x_261 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_261);
  let x_267 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_267);
  let x_271 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_271);
  let x_274 : vec4<f32> = u_xlat3;
  let x_276 : vec4<f32> = u_xlat4;
  let x_278 : vec3<f32> = (vec3<f32>(x_274.x, x_274.y, x_274.z) + vec3<f32>(x_276.y, x_276.z, x_276.w));
  let x_279 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_281 : vec4<f32> = u_xlat3;
  let x_284 : vec3<f32> = max(vec3<f32>(x_281.x, x_281.y, x_281.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_285 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_285.x, x_284.x, x_284.y, x_284.z);
  let x_287 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_287, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_295 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_295) + 4.0f);
  let x_302 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_302);
  let x_306 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_306) << bitcast<u32>(2i));
  let x_309 : vec4<f32> = vs_TEXCOORD2;
  let x_311 : i32 = u_xlati0;
  let x_314 : i32 = u_xlati0;
  let x_318 : vec4<f32> = x_170.x_MainLightWorldToShadow[((x_311 + 1i) / 4i)][((x_314 + 1i) % 4i)];
  let x_320 : vec3<f32> = (vec3<f32>(x_309.y, x_309.y, x_309.y) * vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : i32 = u_xlati0;
  let x_325 : i32 = u_xlati0;
  let x_328 : vec4<f32> = x_170.x_MainLightWorldToShadow[(x_323 / 4i)][(x_325 % 4i)];
  let x_330 : vec4<f32> = vs_TEXCOORD2;
  let x_333 : vec4<f32> = u_xlat3;
  let x_335 : vec3<f32> = ((vec3<f32>(x_328.x, x_328.y, x_328.z) * vec3<f32>(x_330.x, x_330.x, x_330.x)) + vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : i32 = u_xlati0;
  let x_341 : i32 = u_xlati0;
  let x_345 : vec4<f32> = x_170.x_MainLightWorldToShadow[((x_338 + 2i) / 4i)][((x_341 + 2i) % 4i)];
  let x_347 : vec4<f32> = vs_TEXCOORD2;
  let x_350 : vec4<f32> = u_xlat3;
  let x_352 : vec3<f32> = ((vec3<f32>(x_345.x, x_345.y, x_345.z) * vec3<f32>(x_347.z, x_347.z, x_347.z)) + vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat3;
  let x_357 : i32 = u_xlati0;
  let x_360 : i32 = u_xlati0;
  let x_364 : vec4<f32> = x_170.x_MainLightWorldToShadow[((x_357 + 3i) / 4i)][((x_360 + 3i) % 4i)];
  let x_366 : vec3<f32> = (vec3<f32>(x_355.x, x_355.y, x_355.z) + vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_367 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_375 : vec2<f32> = vs_TEXCOORD1;
  let x_377 : f32 = x_43.x_GlobalMipBias.x;
  let x_378 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_375, x_377);
  u_xlat4 = x_378;
  let x_383 : vec2<f32> = vs_TEXCOORD1;
  let x_385 : f32 = x_43.x_GlobalMipBias.x;
  let x_386 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_383, x_385);
  let x_387 : vec3<f32> = vec3<f32>(x_386.x, x_386.y, x_386.z);
  let x_388 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_390 : vec4<f32> = u_xlat4;
  let x_394 : vec3<f32> = (vec3<f32>(x_390.x, x_390.y, x_390.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_395 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec3<f32> = u_xlat2;
  let x_398 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_397, vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_403 : f32 = u_xlat0.x;
  u_xlat0.x = (x_403 + 0.5f);
  let x_406 : vec4<f32> = u_xlat0;
  let x_408 : vec4<f32> = u_xlat5;
  let x_410 : vec3<f32> = (vec3<f32>(x_406.x, x_406.x, x_406.x) * vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_414 : f32 = u_xlat4.w;
  u_xlat0.x = max(x_414, 0.0001f);
  let x_417 : vec4<f32> = u_xlat4;
  let x_419 : vec4<f32> = u_xlat0;
  let x_421 : vec3<f32> = (vec3<f32>(x_417.x, x_417.y, x_417.z) / vec3<f32>(x_419.x, x_419.x, x_419.x));
  let x_422 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  let x_426 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_427 : vec2<f32> = vec2<f32>(x_426.x, x_426.y);
  let x_431 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_427.x, x_427.y));
  let x_432 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_431.x, x_432.y, x_432.z, x_431.y);
  let x_434 : vec4<f32> = u_xlat0;
  let x_436 : vec4<f32> = hlslcc_FragCoord;
  let x_438 : vec2<f32> = (vec2<f32>(x_434.x, x_434.w) * vec2<f32>(x_436.x, x_436.y));
  let x_439 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
  let x_442 : f32 = u_xlat5.y;
  let x_445 : f32 = x_43.x_ScaleBiasRt.x;
  let x_448 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat0.x = ((x_442 * x_445) + x_448);
  let x_452 : f32 = u_xlat0.x;
  u_xlat5.z = (-(x_452) + 1.0f);
  let x_461 : vec4<f32> = u_xlat5;
  let x_464 : f32 = x_43.x_GlobalMipBias.x;
  let x_465 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_461.x, x_461.z), x_464);
  u_xlat0.x = x_465.x;
  let x_469 : f32 = u_xlat0.x;
  u_xlat57 = (x_469 + -1.0f);
  let x_472 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_473 : f32 = u_xlat57;
  u_xlat57 = ((x_472 * x_473) + 1.0f);
  let x_477 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_477, 1.0f);
  let x_482 : f32 = x_170.x_MainLightShadowParams.y;
  u_xlatb58 = (0.0f < x_482);
  let x_484 : bool = u_xlatb58;
  if (x_484) {
    let x_488 : f32 = x_170.x_MainLightShadowParams.y;
    u_xlatb58 = (x_488 == 1.0f);
    let x_490 : bool = u_xlatb58;
    if (x_490) {
      let x_493 : vec4<f32> = u_xlat3;
      let x_497 : vec4<f32> = x_170.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_493.x, x_493.y, x_493.x, x_493.y) + x_497);
      let x_500 : vec4<f32> = u_xlat5;
      let x_501 : vec2<f32> = vec2<f32>(x_500.x, x_500.y);
      let x_503 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_501.x, x_501.y, x_503);
      let x_515 : vec3<f32> = txVec0;
      let x_517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_515.xy, x_515.z);
      u_xlat6.x = x_517;
      let x_520 : vec4<f32> = u_xlat5;
      let x_521 : vec2<f32> = vec2<f32>(x_520.z, x_520.w);
      let x_523 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_521.x, x_521.y, x_523);
      let x_530 : vec3<f32> = txVec1;
      let x_532 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_530.xy, x_530.z);
      u_xlat6.y = x_532;
      let x_534 : vec4<f32> = u_xlat3;
      let x_538 : vec4<f32> = x_170.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_534.x, x_534.y, x_534.x, x_534.y) + x_538);
      let x_541 : vec4<f32> = u_xlat5;
      let x_542 : vec2<f32> = vec2<f32>(x_541.x, x_541.y);
      let x_544 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_542.x, x_542.y, x_544);
      let x_551 : vec3<f32> = txVec2;
      let x_553 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_551.xy, x_551.z);
      u_xlat6.z = x_553;
      let x_556 : vec4<f32> = u_xlat5;
      let x_557 : vec2<f32> = vec2<f32>(x_556.z, x_556.w);
      let x_559 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_557.x, x_557.y, x_559);
      let x_566 : vec3<f32> = txVec3;
      let x_568 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_566.xy, x_566.z);
      u_xlat6.w = x_568;
      let x_571 : vec4<f32> = u_xlat6;
      u_xlat58 = dot(x_571, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_578 : f32 = x_170.x_MainLightShadowParams.y;
      u_xlatb59 = (x_578 == 2.0f);
      let x_580 : bool = u_xlatb59;
      if (x_580) {
        let x_583 : vec4<f32> = u_xlat3;
        let x_587 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_591 : vec2<f32> = ((vec2<f32>(x_583.x, x_583.y) * vec2<f32>(x_587.z, x_587.w)) + vec2<f32>(0.5f, 0.5f));
        let x_592 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_591.x, x_591.y, x_592.z, x_592.w);
        let x_594 : vec4<f32> = u_xlat5;
        let x_596 : vec2<f32> = floor(vec2<f32>(x_594.x, x_594.y));
        let x_597 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_596.x, x_596.y, x_597.z, x_597.w);
        let x_601 : vec4<f32> = u_xlat3;
        let x_604 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_607 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_601.x, x_601.y) * vec2<f32>(x_604.z, x_604.w)) + -(vec2<f32>(x_607.x, x_607.y)));
        let x_611 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_611.x, x_611.x, x_611.y, x_611.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_616 : vec4<f32> = u_xlat6;
        let x_618 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_616.x, x_616.x, x_616.z, x_616.z) * vec4<f32>(x_618.x, x_618.x, x_618.z, x_618.z));
        let x_621 : vec4<f32> = u_xlat7;
        let x_625 : vec2<f32> = (vec2<f32>(x_621.y, x_621.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_626 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_625.x, x_626.y, x_625.y, x_626.w);
        let x_628 : vec4<f32> = u_xlat7;
        let x_631 : vec2<f32> = u_xlat43;
        let x_633 : vec2<f32> = ((vec2<f32>(x_628.x, x_628.z) * vec2<f32>(0.5f, 0.5f)) + -(x_631));
        let x_634 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_633.x, x_633.y, x_634.z, x_634.w);
        let x_637 : vec2<f32> = u_xlat43;
        u_xlat45 = (-(x_637) + vec2<f32>(1.0f, 1.0f));
        let x_641 : vec2<f32> = u_xlat43;
        let x_643 : vec2<f32> = min(x_641, vec2<f32>(0.0f, 0.0f));
        let x_644 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_643.x, x_643.y, x_644.z, x_644.w);
        let x_646 : vec4<f32> = u_xlat8;
        let x_649 : vec4<f32> = u_xlat8;
        let x_652 : vec2<f32> = u_xlat45;
        let x_653 : vec2<f32> = ((-(vec2<f32>(x_646.x, x_646.y)) * vec2<f32>(x_649.x, x_649.y)) + x_652);
        let x_654 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_653.x, x_653.y, x_654.z, x_654.w);
        let x_656 : vec2<f32> = u_xlat43;
        u_xlat43 = max(x_656, vec2<f32>(0.0f, 0.0f));
        let x_658 : vec2<f32> = u_xlat43;
        let x_660 : vec2<f32> = u_xlat43;
        let x_662 : vec4<f32> = u_xlat6;
        u_xlat43 = ((-(x_658) * x_660) + vec2<f32>(x_662.y, x_662.w));
        let x_665 : vec4<f32> = u_xlat8;
        let x_667 : vec2<f32> = (vec2<f32>(x_665.x, x_665.y) + vec2<f32>(1.0f, 1.0f));
        let x_668 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_667.x, x_667.y, x_668.z, x_668.w);
        let x_670 : vec2<f32> = u_xlat43;
        u_xlat43 = (x_670 + vec2<f32>(1.0f, 1.0f));
        let x_673 : vec4<f32> = u_xlat7;
        let x_677 : vec2<f32> = (vec2<f32>(x_673.x, x_673.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_678 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_677.x, x_677.y, x_678.z, x_678.w);
        let x_680 : vec2<f32> = u_xlat45;
        let x_681 : vec2<f32> = (x_680 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_682 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_681.x, x_681.y, x_682.z, x_682.w);
        let x_684 : vec4<f32> = u_xlat8;
        let x_686 : vec2<f32> = (vec2<f32>(x_684.x, x_684.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_687 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_686.x, x_686.y, x_687.z, x_687.w);
        let x_690 : vec2<f32> = u_xlat43;
        let x_691 : vec2<f32> = (x_690 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_692 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_691.x, x_691.y, x_692.z, x_692.w);
        let x_694 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_694.y, x_694.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_698 : f32 = u_xlat8.x;
        u_xlat9.z = x_698;
        let x_701 : f32 = u_xlat43.x;
        u_xlat9.w = x_701;
        let x_704 : f32 = u_xlat10.x;
        u_xlat7.z = x_704;
        let x_707 : f32 = u_xlat6.x;
        u_xlat7.w = x_707;
        let x_710 : vec4<f32> = u_xlat7;
        let x_712 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_710.z, x_710.w, x_710.x, x_710.z) + vec4<f32>(x_712.z, x_712.w, x_712.x, x_712.z));
        let x_716 : f32 = u_xlat9.y;
        u_xlat8.z = x_716;
        let x_719 : f32 = u_xlat43.y;
        u_xlat8.w = x_719;
        let x_722 : f32 = u_xlat7.y;
        u_xlat10.z = x_722;
        let x_725 : f32 = u_xlat6.z;
        u_xlat10.w = x_725;
        let x_727 : vec4<f32> = u_xlat8;
        let x_729 : vec4<f32> = u_xlat10;
        let x_731 : vec3<f32> = (vec3<f32>(x_727.z, x_727.y, x_727.w) + vec3<f32>(x_729.z, x_729.y, x_729.w));
        let x_732 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
        let x_734 : vec4<f32> = u_xlat7;
        let x_736 : vec4<f32> = u_xlat11;
        let x_738 : vec3<f32> = (vec3<f32>(x_734.x, x_734.z, x_734.w) / vec3<f32>(x_736.z, x_736.w, x_736.y));
        let x_739 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
        let x_741 : vec4<f32> = u_xlat7;
        let x_746 : vec3<f32> = (vec3<f32>(x_741.x, x_741.y, x_741.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_747 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
        let x_749 : vec4<f32> = u_xlat10;
        let x_751 : vec4<f32> = u_xlat6;
        let x_753 : vec3<f32> = (vec3<f32>(x_749.z, x_749.y, x_749.w) / vec3<f32>(x_751.x, x_751.y, x_751.z));
        let x_754 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_753.x, x_753.y, x_753.z, x_754.w);
        let x_756 : vec4<f32> = u_xlat8;
        let x_758 : vec3<f32> = (vec3<f32>(x_756.x, x_756.y, x_756.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_759 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
        let x_761 : vec4<f32> = u_xlat7;
        let x_764 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_766 : vec3<f32> = (vec3<f32>(x_761.y, x_761.x, x_761.z) * vec3<f32>(x_764.x, x_764.x, x_764.x));
        let x_767 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_766.x, x_766.y, x_766.z, x_767.w);
        let x_769 : vec4<f32> = u_xlat8;
        let x_772 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_774 : vec3<f32> = (vec3<f32>(x_769.x, x_769.y, x_769.z) * vec3<f32>(x_772.y, x_772.y, x_772.y));
        let x_775 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
        let x_778 : f32 = u_xlat8.x;
        u_xlat7.w = x_778;
        let x_780 : vec4<f32> = u_xlat5;
        let x_783 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_786 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_780.x, x_780.y, x_780.x, x_780.y) * vec4<f32>(x_783.x, x_783.y, x_783.x, x_783.y)) + vec4<f32>(x_786.y, x_786.w, x_786.x, x_786.w));
        let x_789 : vec4<f32> = u_xlat5;
        let x_792 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_795 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_789.x, x_789.y) * vec2<f32>(x_792.x, x_792.y)) + vec2<f32>(x_795.z, x_795.w));
        let x_799 : f32 = u_xlat7.y;
        u_xlat8.w = x_799;
        let x_801 : vec4<f32> = u_xlat8;
        let x_802 : vec2<f32> = vec2<f32>(x_801.y, x_801.z);
        let x_803 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_803.x, x_802.x, x_803.z, x_802.y);
        let x_805 : vec4<f32> = u_xlat5;
        let x_808 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_811 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_805.x, x_805.y, x_805.x, x_805.y) * vec4<f32>(x_808.x, x_808.y, x_808.x, x_808.y)) + vec4<f32>(x_811.x, x_811.y, x_811.z, x_811.y));
        let x_814 : vec4<f32> = u_xlat5;
        let x_817 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_820 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_814.x, x_814.y, x_814.x, x_814.y) * vec4<f32>(x_817.x, x_817.y, x_817.x, x_817.y)) + vec4<f32>(x_820.w, x_820.y, x_820.w, x_820.z));
        let x_823 : vec4<f32> = u_xlat5;
        let x_826 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_829 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_823.x, x_823.y, x_823.x, x_823.y) * vec4<f32>(x_826.x, x_826.y, x_826.x, x_826.y)) + vec4<f32>(x_829.x, x_829.w, x_829.z, x_829.w));
        let x_833 : vec4<f32> = u_xlat6;
        let x_835 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_833.x, x_833.x, x_833.x, x_833.y) * vec4<f32>(x_835.z, x_835.w, x_835.y, x_835.z));
        let x_839 : vec4<f32> = u_xlat6;
        let x_841 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_839.y, x_839.y, x_839.z, x_839.z) * x_841);
        let x_845 : f32 = u_xlat6.z;
        let x_847 : f32 = u_xlat11.y;
        u_xlat59 = (x_845 * x_847);
        let x_850 : vec4<f32> = u_xlat9;
        let x_851 : vec2<f32> = vec2<f32>(x_850.x, x_850.y);
        let x_853 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_851.x, x_851.y, x_853);
        let x_861 : vec3<f32> = txVec4;
        let x_863 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_861.xy, x_861.z);
        u_xlat60 = x_863;
        let x_865 : vec4<f32> = u_xlat9;
        let x_866 : vec2<f32> = vec2<f32>(x_865.z, x_865.w);
        let x_868 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_866.x, x_866.y, x_868);
        let x_876 : vec3<f32> = txVec5;
        let x_878 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_876.xy, x_876.z);
        u_xlat61 = x_878;
        let x_879 : f32 = u_xlat61;
        let x_881 : f32 = u_xlat12.y;
        u_xlat61 = (x_879 * x_881);
        let x_884 : f32 = u_xlat12.x;
        let x_885 : f32 = u_xlat60;
        let x_887 : f32 = u_xlat61;
        u_xlat60 = ((x_884 * x_885) + x_887);
        let x_890 : vec2<f32> = u_xlat43;
        let x_892 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_890.x, x_890.y, x_892);
        let x_899 : vec3<f32> = txVec6;
        let x_901 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_899.xy, x_899.z);
        u_xlat61 = x_901;
        let x_903 : f32 = u_xlat12.z;
        let x_904 : f32 = u_xlat61;
        let x_906 : f32 = u_xlat60;
        u_xlat60 = ((x_903 * x_904) + x_906);
        let x_909 : vec4<f32> = u_xlat8;
        let x_910 : vec2<f32> = vec2<f32>(x_909.x, x_909.y);
        let x_912 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_910.x, x_910.y, x_912);
        let x_919 : vec3<f32> = txVec7;
        let x_921 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_919.xy, x_919.z);
        u_xlat61 = x_921;
        let x_923 : f32 = u_xlat12.w;
        let x_924 : f32 = u_xlat61;
        let x_926 : f32 = u_xlat60;
        u_xlat60 = ((x_923 * x_924) + x_926);
        let x_929 : vec4<f32> = u_xlat10;
        let x_930 : vec2<f32> = vec2<f32>(x_929.x, x_929.y);
        let x_932 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_930.x, x_930.y, x_932);
        let x_939 : vec3<f32> = txVec8;
        let x_941 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_939.xy, x_939.z);
        u_xlat61 = x_941;
        let x_943 : f32 = u_xlat13.x;
        let x_944 : f32 = u_xlat61;
        let x_946 : f32 = u_xlat60;
        u_xlat60 = ((x_943 * x_944) + x_946);
        let x_949 : vec4<f32> = u_xlat10;
        let x_950 : vec2<f32> = vec2<f32>(x_949.z, x_949.w);
        let x_952 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_950.x, x_950.y, x_952);
        let x_959 : vec3<f32> = txVec9;
        let x_961 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_959.xy, x_959.z);
        u_xlat61 = x_961;
        let x_963 : f32 = u_xlat13.y;
        let x_964 : f32 = u_xlat61;
        let x_966 : f32 = u_xlat60;
        u_xlat60 = ((x_963 * x_964) + x_966);
        let x_969 : vec4<f32> = u_xlat8;
        let x_970 : vec2<f32> = vec2<f32>(x_969.z, x_969.w);
        let x_972 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_970.x, x_970.y, x_972);
        let x_979 : vec3<f32> = txVec10;
        let x_981 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_979.xy, x_979.z);
        u_xlat61 = x_981;
        let x_983 : f32 = u_xlat13.z;
        let x_984 : f32 = u_xlat61;
        let x_986 : f32 = u_xlat60;
        u_xlat60 = ((x_983 * x_984) + x_986);
        let x_989 : vec4<f32> = u_xlat7;
        let x_990 : vec2<f32> = vec2<f32>(x_989.x, x_989.y);
        let x_992 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_990.x, x_990.y, x_992);
        let x_999 : vec3<f32> = txVec11;
        let x_1001 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_999.xy, x_999.z);
        u_xlat61 = x_1001;
        let x_1003 : f32 = u_xlat13.w;
        let x_1004 : f32 = u_xlat61;
        let x_1006 : f32 = u_xlat60;
        u_xlat60 = ((x_1003 * x_1004) + x_1006);
        let x_1009 : vec4<f32> = u_xlat7;
        let x_1010 : vec2<f32> = vec2<f32>(x_1009.z, x_1009.w);
        let x_1012 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1010.x, x_1010.y, x_1012);
        let x_1019 : vec3<f32> = txVec12;
        let x_1021 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1019.xy, x_1019.z);
        u_xlat61 = x_1021;
        let x_1022 : f32 = u_xlat59;
        let x_1023 : f32 = u_xlat61;
        let x_1025 : f32 = u_xlat60;
        u_xlat58 = ((x_1022 * x_1023) + x_1025);
      } else {
        let x_1028 : vec4<f32> = u_xlat3;
        let x_1031 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_1034 : vec2<f32> = ((vec2<f32>(x_1028.x, x_1028.y) * vec2<f32>(x_1031.z, x_1031.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1035 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1034.x, x_1034.y, x_1035.z, x_1035.w);
        let x_1037 : vec4<f32> = u_xlat5;
        let x_1039 : vec2<f32> = floor(vec2<f32>(x_1037.x, x_1037.y));
        let x_1040 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1039.x, x_1039.y, x_1040.z, x_1040.w);
        let x_1042 : vec4<f32> = u_xlat3;
        let x_1045 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_1048 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_1042.x, x_1042.y) * vec2<f32>(x_1045.z, x_1045.w)) + -(vec2<f32>(x_1048.x, x_1048.y)));
        let x_1052 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_1052.x, x_1052.x, x_1052.y, x_1052.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1055 : vec4<f32> = u_xlat6;
        let x_1057 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1055.x, x_1055.x, x_1055.z, x_1055.z) * vec4<f32>(x_1057.x, x_1057.x, x_1057.z, x_1057.z));
        let x_1060 : vec4<f32> = u_xlat7;
        let x_1064 : vec2<f32> = (vec2<f32>(x_1060.y, x_1060.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1065 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1065.x, x_1064.x, x_1065.z, x_1064.y);
        let x_1067 : vec4<f32> = u_xlat7;
        let x_1070 : vec2<f32> = u_xlat43;
        let x_1072 : vec2<f32> = ((vec2<f32>(x_1067.x, x_1067.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1070));
        let x_1073 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1072.x, x_1073.y, x_1072.y, x_1073.w);
        let x_1075 : vec2<f32> = u_xlat43;
        let x_1077 : vec2<f32> = (-(x_1075) + vec2<f32>(1.0f, 1.0f));
        let x_1078 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1077.x, x_1077.y, x_1078.z, x_1078.w);
        let x_1080 : vec2<f32> = u_xlat43;
        u_xlat45 = min(x_1080, vec2<f32>(0.0f, 0.0f));
        let x_1082 : vec2<f32> = u_xlat45;
        let x_1084 : vec2<f32> = u_xlat45;
        let x_1086 : vec4<f32> = u_xlat7;
        let x_1088 : vec2<f32> = ((-(x_1082) * x_1084) + vec2<f32>(x_1086.x, x_1086.y));
        let x_1089 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1088.x, x_1088.y, x_1089.z, x_1089.w);
        let x_1091 : vec2<f32> = u_xlat43;
        u_xlat45 = max(x_1091, vec2<f32>(0.0f, 0.0f));
        let x_1094 : vec2<f32> = u_xlat45;
        let x_1096 : vec2<f32> = u_xlat45;
        let x_1098 : vec4<f32> = u_xlat6;
        let x_1100 : vec2<f32> = ((-(x_1094) * x_1096) + vec2<f32>(x_1098.y, x_1098.w));
        let x_1101 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1100.x, x_1101.y, x_1100.y);
        let x_1103 : vec4<f32> = u_xlat7;
        let x_1106 : vec2<f32> = (vec2<f32>(x_1103.x, x_1103.y) + vec2<f32>(2.0f, 2.0f));
        let x_1107 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1106.x, x_1106.y, x_1107.z, x_1107.w);
        let x_1109 : vec3<f32> = u_xlat25;
        let x_1111 : vec2<f32> = (vec2<f32>(x_1109.x, x_1109.z) + vec2<f32>(2.0f, 2.0f));
        let x_1112 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1112.x, x_1111.x, x_1112.z, x_1111.y);
        let x_1115 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1115 * 0.081632003f);
        let x_1119 : vec4<f32> = u_xlat6;
        let x_1122 : vec3<f32> = (vec3<f32>(x_1119.z, x_1119.x, x_1119.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1123 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1122.x, x_1122.y, x_1122.z, x_1123.w);
        let x_1125 : vec4<f32> = u_xlat7;
        let x_1128 : vec2<f32> = (vec2<f32>(x_1125.x, x_1125.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1129 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1128.x, x_1128.y, x_1129.z, x_1129.w);
        let x_1132 : f32 = u_xlat10.y;
        u_xlat9.x = x_1132;
        let x_1134 : vec2<f32> = u_xlat43;
        let x_1141 : vec2<f32> = ((vec2<f32>(x_1134.x, x_1134.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1142 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1142.x, x_1141.x, x_1142.z, x_1141.y);
        let x_1144 : vec2<f32> = u_xlat43;
        let x_1148 : vec2<f32> = ((vec2<f32>(x_1144.x, x_1144.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1149 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1148.x, x_1149.y, x_1148.y, x_1149.w);
        let x_1152 : f32 = u_xlat6.x;
        u_xlat7.y = x_1152;
        let x_1155 : f32 = u_xlat8.y;
        u_xlat7.w = x_1155;
        let x_1157 : vec4<f32> = u_xlat7;
        let x_1158 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1157 + x_1158);
        let x_1160 : vec2<f32> = u_xlat43;
        let x_1163 : vec2<f32> = ((vec2<f32>(x_1160.y, x_1160.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1164 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1164.x, x_1163.x, x_1164.z, x_1163.y);
        let x_1166 : vec2<f32> = u_xlat43;
        let x_1169 : vec2<f32> = ((vec2<f32>(x_1166.y, x_1166.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1170 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1169.x, x_1170.y, x_1169.y, x_1170.w);
        let x_1173 : f32 = u_xlat6.y;
        u_xlat8.y = x_1173;
        let x_1175 : vec4<f32> = u_xlat8;
        let x_1176 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1175 + x_1176);
        let x_1178 : vec4<f32> = u_xlat7;
        let x_1179 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1178 / x_1179);
        let x_1181 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1181 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1187 : vec4<f32> = u_xlat8;
        let x_1188 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1187 / x_1188);
        let x_1190 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1190 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1192 : vec4<f32> = u_xlat7;
        let x_1195 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1192.w, x_1192.x, x_1192.y, x_1192.z) * vec4<f32>(x_1195.x, x_1195.x, x_1195.x, x_1195.x));
        let x_1198 : vec4<f32> = u_xlat8;
        let x_1201 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1198.x, x_1198.w, x_1198.y, x_1198.z) * vec4<f32>(x_1201.y, x_1201.y, x_1201.y, x_1201.y));
        let x_1204 : vec4<f32> = u_xlat7;
        let x_1205 : vec3<f32> = vec3<f32>(x_1204.y, x_1204.z, x_1204.w);
        let x_1206 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1205.x, x_1206.y, x_1205.y, x_1205.z);
        let x_1209 : f32 = u_xlat8.x;
        u_xlat10.y = x_1209;
        let x_1211 : vec4<f32> = u_xlat5;
        let x_1214 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_1217 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1211.x, x_1211.y, x_1211.x, x_1211.y) * vec4<f32>(x_1214.x, x_1214.y, x_1214.x, x_1214.y)) + vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1217.y));
        let x_1220 : vec4<f32> = u_xlat5;
        let x_1223 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_1226 : vec4<f32> = u_xlat10;
        u_xlat43 = ((vec2<f32>(x_1220.x, x_1220.y) * vec2<f32>(x_1223.x, x_1223.y)) + vec2<f32>(x_1226.w, x_1226.y));
        let x_1230 : f32 = u_xlat10.y;
        u_xlat7.y = x_1230;
        let x_1233 : f32 = u_xlat8.z;
        u_xlat10.y = x_1233;
        let x_1235 : vec4<f32> = u_xlat5;
        let x_1238 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_1241 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1235.x, x_1235.y, x_1235.x, x_1235.y) * vec4<f32>(x_1238.x, x_1238.y, x_1238.x, x_1238.y)) + vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1241.y));
        let x_1244 : vec4<f32> = u_xlat5;
        let x_1247 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_1250 : vec4<f32> = u_xlat10;
        let x_1252 : vec2<f32> = ((vec2<f32>(x_1244.x, x_1244.y) * vec2<f32>(x_1247.x, x_1247.y)) + vec2<f32>(x_1250.w, x_1250.y));
        let x_1253 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1252.x, x_1252.y, x_1253.z, x_1253.w);
        let x_1256 : f32 = u_xlat10.y;
        u_xlat7.z = x_1256;
        let x_1259 : vec4<f32> = u_xlat5;
        let x_1262 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_1265 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1259.x, x_1259.y, x_1259.x, x_1259.y) * vec4<f32>(x_1262.x, x_1262.y, x_1262.x, x_1262.y)) + vec4<f32>(x_1265.x, x_1265.y, x_1265.x, x_1265.z));
        let x_1269 : f32 = u_xlat8.w;
        u_xlat10.y = x_1269;
        let x_1272 : vec4<f32> = u_xlat5;
        let x_1275 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_1278 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1272.x, x_1272.y, x_1272.x, x_1272.y) * vec4<f32>(x_1275.x, x_1275.y, x_1275.x, x_1275.y)) + vec4<f32>(x_1278.x, x_1278.y, x_1278.z, x_1278.y));
        let x_1282 : vec4<f32> = u_xlat5;
        let x_1285 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_1288 : vec4<f32> = u_xlat10;
        u_xlat26 = ((vec2<f32>(x_1282.x, x_1282.y) * vec2<f32>(x_1285.x, x_1285.y)) + vec2<f32>(x_1288.w, x_1288.y));
        let x_1292 : f32 = u_xlat10.y;
        u_xlat7.w = x_1292;
        let x_1295 : vec4<f32> = u_xlat5;
        let x_1298 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_1301 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1295.x, x_1295.y) * vec2<f32>(x_1298.x, x_1298.y)) + vec2<f32>(x_1301.x, x_1301.w));
        let x_1304 : vec4<f32> = u_xlat10;
        let x_1305 : vec3<f32> = vec3<f32>(x_1304.x, x_1304.z, x_1304.w);
        let x_1306 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1305.x, x_1306.y, x_1305.y, x_1305.z);
        let x_1308 : vec4<f32> = u_xlat5;
        let x_1311 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_1314 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1308.x, x_1308.y, x_1308.x, x_1308.y) * vec4<f32>(x_1311.x, x_1311.y, x_1311.x, x_1311.y)) + vec4<f32>(x_1314.x, x_1314.y, x_1314.z, x_1314.y));
        let x_1318 : vec4<f32> = u_xlat5;
        let x_1321 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_1324 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1318.x, x_1318.y) * vec2<f32>(x_1321.x, x_1321.y)) + vec2<f32>(x_1324.w, x_1324.y));
        let x_1328 : f32 = u_xlat7.x;
        u_xlat8.x = x_1328;
        let x_1330 : vec4<f32> = u_xlat5;
        let x_1333 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_1336 : vec4<f32> = u_xlat8;
        let x_1338 : vec2<f32> = ((vec2<f32>(x_1330.x, x_1330.y) * vec2<f32>(x_1333.x, x_1333.y)) + vec2<f32>(x_1336.x, x_1336.y));
        let x_1339 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1338.x, x_1338.y, x_1339.z, x_1339.w);
        let x_1342 : vec4<f32> = u_xlat6;
        let x_1344 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1342.x, x_1342.x, x_1342.x, x_1342.x) * x_1344);
        let x_1347 : vec4<f32> = u_xlat6;
        let x_1349 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1347.y, x_1347.y, x_1347.y, x_1347.y) * x_1349);
        let x_1352 : vec4<f32> = u_xlat6;
        let x_1354 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1352.z, x_1352.z, x_1352.z, x_1352.z) * x_1354);
        let x_1356 : vec4<f32> = u_xlat6;
        let x_1358 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1356.w, x_1356.w, x_1356.w, x_1356.w) * x_1358);
        let x_1361 : vec4<f32> = u_xlat11;
        let x_1362 : vec2<f32> = vec2<f32>(x_1361.x, x_1361.y);
        let x_1364 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1362.x, x_1362.y, x_1364);
        let x_1371 : vec3<f32> = txVec13;
        let x_1373 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1371.xy, x_1371.z);
        u_xlat59 = x_1373;
        let x_1375 : vec4<f32> = u_xlat11;
        let x_1376 : vec2<f32> = vec2<f32>(x_1375.z, x_1375.w);
        let x_1378 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1376.x, x_1376.y, x_1378);
        let x_1385 : vec3<f32> = txVec14;
        let x_1387 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1385.xy, x_1385.z);
        u_xlat60 = x_1387;
        let x_1388 : f32 = u_xlat60;
        let x_1390 : f32 = u_xlat16.y;
        u_xlat60 = (x_1388 * x_1390);
        let x_1393 : f32 = u_xlat16.x;
        let x_1394 : f32 = u_xlat59;
        let x_1396 : f32 = u_xlat60;
        u_xlat59 = ((x_1393 * x_1394) + x_1396);
        let x_1399 : vec2<f32> = u_xlat43;
        let x_1401 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1399.x, x_1399.y, x_1401);
        let x_1408 : vec3<f32> = txVec15;
        let x_1410 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1408.xy, x_1408.z);
        u_xlat60 = x_1410;
        let x_1412 : f32 = u_xlat16.z;
        let x_1413 : f32 = u_xlat60;
        let x_1415 : f32 = u_xlat59;
        u_xlat59 = ((x_1412 * x_1413) + x_1415);
        let x_1418 : vec4<f32> = u_xlat14;
        let x_1419 : vec2<f32> = vec2<f32>(x_1418.x, x_1418.y);
        let x_1421 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1419.x, x_1419.y, x_1421);
        let x_1428 : vec3<f32> = txVec16;
        let x_1430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1428.xy, x_1428.z);
        u_xlat60 = x_1430;
        let x_1432 : f32 = u_xlat16.w;
        let x_1433 : f32 = u_xlat60;
        let x_1435 : f32 = u_xlat59;
        u_xlat59 = ((x_1432 * x_1433) + x_1435);
        let x_1438 : vec4<f32> = u_xlat12;
        let x_1439 : vec2<f32> = vec2<f32>(x_1438.x, x_1438.y);
        let x_1441 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1439.x, x_1439.y, x_1441);
        let x_1448 : vec3<f32> = txVec17;
        let x_1450 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1448.xy, x_1448.z);
        u_xlat60 = x_1450;
        let x_1452 : f32 = u_xlat17.x;
        let x_1453 : f32 = u_xlat60;
        let x_1455 : f32 = u_xlat59;
        u_xlat59 = ((x_1452 * x_1453) + x_1455);
        let x_1458 : vec4<f32> = u_xlat12;
        let x_1459 : vec2<f32> = vec2<f32>(x_1458.z, x_1458.w);
        let x_1461 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1459.x, x_1459.y, x_1461);
        let x_1468 : vec3<f32> = txVec18;
        let x_1470 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1468.xy, x_1468.z);
        u_xlat60 = x_1470;
        let x_1472 : f32 = u_xlat17.y;
        let x_1473 : f32 = u_xlat60;
        let x_1475 : f32 = u_xlat59;
        u_xlat59 = ((x_1472 * x_1473) + x_1475);
        let x_1478 : vec4<f32> = u_xlat13;
        let x_1479 : vec2<f32> = vec2<f32>(x_1478.x, x_1478.y);
        let x_1481 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1479.x, x_1479.y, x_1481);
        let x_1488 : vec3<f32> = txVec19;
        let x_1490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1488.xy, x_1488.z);
        u_xlat60 = x_1490;
        let x_1492 : f32 = u_xlat17.z;
        let x_1493 : f32 = u_xlat60;
        let x_1495 : f32 = u_xlat59;
        u_xlat59 = ((x_1492 * x_1493) + x_1495);
        let x_1498 : vec4<f32> = u_xlat14;
        let x_1499 : vec2<f32> = vec2<f32>(x_1498.z, x_1498.w);
        let x_1501 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1499.x, x_1499.y, x_1501);
        let x_1508 : vec3<f32> = txVec20;
        let x_1510 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1508.xy, x_1508.z);
        u_xlat60 = x_1510;
        let x_1512 : f32 = u_xlat17.w;
        let x_1513 : f32 = u_xlat60;
        let x_1515 : f32 = u_xlat59;
        u_xlat59 = ((x_1512 * x_1513) + x_1515);
        let x_1518 : vec4<f32> = u_xlat15;
        let x_1519 : vec2<f32> = vec2<f32>(x_1518.x, x_1518.y);
        let x_1521 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1519.x, x_1519.y, x_1521);
        let x_1528 : vec3<f32> = txVec21;
        let x_1530 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1528.xy, x_1528.z);
        u_xlat60 = x_1530;
        let x_1532 : f32 = u_xlat18.x;
        let x_1533 : f32 = u_xlat60;
        let x_1535 : f32 = u_xlat59;
        u_xlat59 = ((x_1532 * x_1533) + x_1535);
        let x_1538 : vec4<f32> = u_xlat15;
        let x_1539 : vec2<f32> = vec2<f32>(x_1538.z, x_1538.w);
        let x_1541 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1539.x, x_1539.y, x_1541);
        let x_1548 : vec3<f32> = txVec22;
        let x_1550 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1548.xy, x_1548.z);
        u_xlat60 = x_1550;
        let x_1552 : f32 = u_xlat18.y;
        let x_1553 : f32 = u_xlat60;
        let x_1555 : f32 = u_xlat59;
        u_xlat59 = ((x_1552 * x_1553) + x_1555);
        let x_1558 : vec2<f32> = u_xlat26;
        let x_1560 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1558.x, x_1558.y, x_1560);
        let x_1567 : vec3<f32> = txVec23;
        let x_1569 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1567.xy, x_1567.z);
        u_xlat60 = x_1569;
        let x_1571 : f32 = u_xlat18.z;
        let x_1572 : f32 = u_xlat60;
        let x_1574 : f32 = u_xlat59;
        u_xlat59 = ((x_1571 * x_1572) + x_1574);
        let x_1577 : vec2<f32> = u_xlat51;
        let x_1579 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1577.x, x_1577.y, x_1579);
        let x_1586 : vec3<f32> = txVec24;
        let x_1588 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1586.xy, x_1586.z);
        u_xlat60 = x_1588;
        let x_1590 : f32 = u_xlat18.w;
        let x_1591 : f32 = u_xlat60;
        let x_1593 : f32 = u_xlat59;
        u_xlat59 = ((x_1590 * x_1591) + x_1593);
        let x_1596 : vec4<f32> = u_xlat10;
        let x_1597 : vec2<f32> = vec2<f32>(x_1596.x, x_1596.y);
        let x_1599 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1597.x, x_1597.y, x_1599);
        let x_1606 : vec3<f32> = txVec25;
        let x_1608 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1606.xy, x_1606.z);
        u_xlat60 = x_1608;
        let x_1610 : f32 = u_xlat6.x;
        let x_1611 : f32 = u_xlat60;
        let x_1613 : f32 = u_xlat59;
        u_xlat59 = ((x_1610 * x_1611) + x_1613);
        let x_1616 : vec4<f32> = u_xlat10;
        let x_1617 : vec2<f32> = vec2<f32>(x_1616.z, x_1616.w);
        let x_1619 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1617.x, x_1617.y, x_1619);
        let x_1626 : vec3<f32> = txVec26;
        let x_1628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1626.xy, x_1626.z);
        u_xlat60 = x_1628;
        let x_1630 : f32 = u_xlat6.y;
        let x_1631 : f32 = u_xlat60;
        let x_1633 : f32 = u_xlat59;
        u_xlat59 = ((x_1630 * x_1631) + x_1633);
        let x_1636 : vec2<f32> = u_xlat46;
        let x_1638 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1636.x, x_1636.y, x_1638);
        let x_1645 : vec3<f32> = txVec27;
        let x_1647 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1645.xy, x_1645.z);
        u_xlat60 = x_1647;
        let x_1649 : f32 = u_xlat6.z;
        let x_1650 : f32 = u_xlat60;
        let x_1652 : f32 = u_xlat59;
        u_xlat59 = ((x_1649 * x_1650) + x_1652);
        let x_1655 : vec4<f32> = u_xlat5;
        let x_1656 : vec2<f32> = vec2<f32>(x_1655.x, x_1655.y);
        let x_1658 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1656.x, x_1656.y, x_1658);
        let x_1665 : vec3<f32> = txVec28;
        let x_1667 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1665.xy, x_1665.z);
        u_xlat60 = x_1667;
        let x_1669 : f32 = u_xlat6.w;
        let x_1670 : f32 = u_xlat60;
        let x_1672 : f32 = u_xlat59;
        u_xlat58 = ((x_1669 * x_1670) + x_1672);
      }
    }
  } else {
    let x_1676 : vec4<f32> = u_xlat3;
    let x_1677 : vec2<f32> = vec2<f32>(x_1676.x, x_1676.y);
    let x_1679 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1677.x, x_1677.y, x_1679);
    let x_1686 : vec3<f32> = txVec29;
    let x_1688 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1686.xy, x_1686.z);
    u_xlat58 = x_1688;
  }
  let x_1690 : f32 = x_170.x_MainLightShadowParams.x;
  u_xlat59 = (-(x_1690) + 1.0f);
  let x_1693 : f32 = u_xlat58;
  let x_1695 : f32 = x_170.x_MainLightShadowParams.x;
  let x_1697 : f32 = u_xlat59;
  u_xlat58 = ((x_1693 * x_1695) + x_1697);
  let x_1700 : f32 = u_xlat3.z;
  u_xlatb59 = (0.0f >= x_1700);
  let x_1703 : f32 = u_xlat3.z;
  u_xlatb3.x = (x_1703 >= 1.0f);
  let x_1706 : bool = u_xlatb59;
  let x_1708 : bool = u_xlatb3.x;
  u_xlatb59 = (x_1706 | x_1708);
  let x_1710 : bool = u_xlatb59;
  let x_1711 : f32 = u_xlat58;
  u_xlat58 = select(x_1711, 1.0f, x_1710);
  let x_1713 : vec4<f32> = vs_TEXCOORD2;
  let x_1717 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1719 : vec3<f32> = (vec3<f32>(x_1713.x, x_1713.y, x_1713.z) + -(x_1717));
  let x_1720 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1719.x, x_1719.y, x_1719.z, x_1720.w);
  let x_1722 : vec4<f32> = u_xlat3;
  let x_1724 : vec4<f32> = u_xlat3;
  u_xlat59 = dot(vec3<f32>(x_1722.x, x_1722.y, x_1722.z), vec3<f32>(x_1724.x, x_1724.y, x_1724.z));
  let x_1727 : f32 = u_xlat59;
  let x_1729 : f32 = x_170.x_MainLightShadowParams.z;
  let x_1732 : f32 = x_170.x_MainLightShadowParams.w;
  u_xlat59 = ((x_1727 * x_1729) + x_1732);
  let x_1734 : f32 = u_xlat59;
  u_xlat59 = clamp(x_1734, 0.0f, 1.0f);
  let x_1736 : f32 = u_xlat58;
  u_xlat3.x = (-(x_1736) + 1.0f);
  let x_1740 : f32 = u_xlat59;
  let x_1742 : f32 = u_xlat3.x;
  let x_1744 : f32 = u_xlat58;
  u_xlat58 = ((x_1740 * x_1742) + x_1744);
  let x_1752 : f32 = x_1750.x_MainLightCookieTextureFormat;
  u_xlatb59 = !((x_1752 == -1.0f));
  let x_1754 : bool = u_xlatb59;
  if (x_1754) {
    let x_1757 : vec4<f32> = vs_TEXCOORD2;
    let x_1760 : vec4<f32> = x_1750.x_MainLightWorldToLight[1i];
    let x_1762 : vec2<f32> = (vec2<f32>(x_1757.y, x_1757.y) * vec2<f32>(x_1760.x, x_1760.y));
    let x_1763 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1762.x, x_1762.y, x_1763.z, x_1763.w);
    let x_1766 : vec4<f32> = x_1750.x_MainLightWorldToLight[0i];
    let x_1768 : vec4<f32> = vs_TEXCOORD2;
    let x_1771 : vec4<f32> = u_xlat3;
    let x_1773 : vec2<f32> = ((vec2<f32>(x_1766.x, x_1766.y) * vec2<f32>(x_1768.x, x_1768.x)) + vec2<f32>(x_1771.x, x_1771.y));
    let x_1774 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1773.x, x_1773.y, x_1774.z, x_1774.w);
    let x_1777 : vec4<f32> = x_1750.x_MainLightWorldToLight[2i];
    let x_1779 : vec4<f32> = vs_TEXCOORD2;
    let x_1782 : vec4<f32> = u_xlat3;
    let x_1784 : vec2<f32> = ((vec2<f32>(x_1777.x, x_1777.y) * vec2<f32>(x_1779.z, x_1779.z)) + vec2<f32>(x_1782.x, x_1782.y));
    let x_1785 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1784.x, x_1784.y, x_1785.z, x_1785.w);
    let x_1787 : vec4<f32> = u_xlat3;
    let x_1790 : vec4<f32> = x_1750.x_MainLightWorldToLight[3i];
    let x_1792 : vec2<f32> = (vec2<f32>(x_1787.x, x_1787.y) + vec2<f32>(x_1790.x, x_1790.y));
    let x_1793 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1792.x, x_1792.y, x_1793.z, x_1793.w);
    let x_1795 : vec4<f32> = u_xlat3;
    let x_1798 : vec2<f32> = ((vec2<f32>(x_1795.x, x_1795.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1799 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1798.x, x_1798.y, x_1799.z, x_1799.w);
    let x_1806 : vec4<f32> = u_xlat3;
    let x_1809 : f32 = x_43.x_GlobalMipBias.x;
    let x_1810 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1806.x, x_1806.y), x_1809);
    u_xlat3 = x_1810;
    let x_1815 : f32 = x_1750.x_MainLightCookieTextureFormat;
    let x_1817 : f32 = x_1750.x_MainLightCookieTextureFormat;
    let x_1819 : f32 = x_1750.x_MainLightCookieTextureFormat;
    let x_1821 : f32 = x_1750.x_MainLightCookieTextureFormat;
    let x_1822 : vec4<f32> = vec4<f32>(x_1815, x_1817, x_1819, x_1821);
    let x_1829 : vec4<bool> = (vec4<f32>(x_1822.x, x_1822.y, x_1822.z, x_1822.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1829.x, x_1829.y);
    let x_1832 : bool = u_xlatb5.y;
    if (x_1832) {
      let x_1837 : f32 = u_xlat3.w;
      x_1833 = x_1837;
    } else {
      let x_1840 : f32 = u_xlat3.x;
      x_1833 = x_1840;
    }
    let x_1841 : f32 = x_1833;
    u_xlat59 = x_1841;
    let x_1843 : bool = u_xlatb5.x;
    if (x_1843) {
      let x_1847 : vec4<f32> = u_xlat3;
      x_1844 = vec3<f32>(x_1847.x, x_1847.y, x_1847.z);
    } else {
      let x_1850 : f32 = u_xlat59;
      x_1844 = vec3<f32>(x_1850, x_1850, x_1850);
    }
    let x_1852 : vec3<f32> = x_1844;
    let x_1853 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1852.x, x_1852.y, x_1852.z, x_1853.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_1859 : vec4<f32> = u_xlat3;
  let x_1862 : vec4<f32> = x_43.x_MainLightColor;
  let x_1864 : vec3<f32> = (vec3<f32>(x_1859.x, x_1859.y, x_1859.z) * vec3<f32>(x_1862.x, x_1862.y, x_1862.z));
  let x_1865 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1864.x, x_1864.y, x_1864.z, x_1865.w);
  let x_1867 : f32 = u_xlat57;
  let x_1869 : vec4<f32> = u_xlat3;
  let x_1871 : vec3<f32> = (vec3<f32>(x_1867, x_1867, x_1867) * vec3<f32>(x_1869.x, x_1869.y, x_1869.z));
  let x_1872 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1871.x, x_1871.y, x_1871.z, x_1872.w);
  let x_1874 : vec4<f32> = u_xlat0;
  let x_1876 : vec4<f32> = u_xlat4;
  let x_1878 : vec3<f32> = (vec3<f32>(x_1874.x, x_1874.x, x_1874.x) * vec3<f32>(x_1876.x, x_1876.y, x_1876.z));
  let x_1879 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1878.x, x_1878.y, x_1878.z, x_1879.w);
  let x_1881 : f32 = u_xlat58;
  let x_1887 : f32 = x_1885.unity_LightData.z;
  u_xlat0.x = (x_1881 * x_1887);
  let x_1890 : vec4<f32> = u_xlat0;
  let x_1892 : vec4<f32> = u_xlat3;
  let x_1894 : vec3<f32> = (vec3<f32>(x_1890.x, x_1890.x, x_1890.x) * vec3<f32>(x_1892.x, x_1892.y, x_1892.z));
  let x_1895 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1894.x, x_1894.y, x_1894.z, x_1895.w);
  let x_1897 : vec3<f32> = u_xlat2;
  let x_1899 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat0.x = dot(x_1897, vec3<f32>(x_1899.x, x_1899.y, x_1899.z));
  let x_1904 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1904, 0.0f, 1.0f);
  let x_1907 : vec4<f32> = u_xlat0;
  let x_1909 : vec4<f32> = u_xlat3;
  let x_1911 : vec3<f32> = (vec3<f32>(x_1907.x, x_1907.x, x_1907.x) * vec3<f32>(x_1909.x, x_1909.y, x_1909.z));
  let x_1912 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1911.x, x_1911.y, x_1911.z, x_1912.w);
  let x_1914 : vec4<f32> = u_xlat1;
  let x_1916 : vec4<f32> = u_xlat3;
  let x_1918 : vec3<f32> = (vec3<f32>(x_1914.x, x_1914.y, x_1914.z) * vec3<f32>(x_1916.x, x_1916.y, x_1916.z));
  let x_1919 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1918.x, x_1918.y, x_1918.z, x_1919.w);
  let x_1922 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1924 : f32 = x_1885.unity_LightData.y;
  u_xlat0.x = min(x_1922, x_1924);
  let x_1928 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1928));
  let x_1932 : f32 = x_1750.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1934 : f32 = x_1750.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1936 : f32 = x_1750.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1938 : f32 = x_1750.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1939 : vec4<f32> = vec4<f32>(x_1932, x_1934, x_1936, x_1938);
  let x_1945 : vec4<bool> = (vec4<f32>(x_1939.x, x_1939.y, x_1939.z, x_1939.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1945.x, x_1945.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1956 : u32 = u_xlatu_loop_1;
    let x_1957 : u32 = u_xlatu0;
    if ((x_1956 < x_1957)) {
    } else {
      break;
    }
    let x_1960 : u32 = u_xlatu_loop_1;
    u_xlatu59 = (x_1960 >> 2u);
    let x_1963 : u32 = u_xlatu_loop_1;
    u_xlati60 = bitcast<i32>((x_1963 & 3u));
    let x_1966 : u32 = u_xlatu59;
    let x_1969 : vec4<f32> = x_1885.unity_LightIndices[bitcast<i32>(x_1966)];
    let x_1979 : i32 = u_xlati60;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1984 : vec4<u32> = indexable[x_1979];
    u_xlat59 = dot(x_1969, bitcast<vec4<f32>>(x_1984));
    let x_1987 : f32 = u_xlat59;
    u_xlatu59 = bitcast<u32>(i32(x_1987));
    let x_1990 : vec4<f32> = vs_TEXCOORD2;
    let x_2003 : u32 = u_xlatu59;
    let x_2006 : vec4<f32> = x_2002.x_AdditionalLightsPosition[bitcast<i32>(x_2003)];
    let x_2009 : u32 = u_xlatu59;
    let x_2012 : vec4<f32> = x_2002.x_AdditionalLightsPosition[bitcast<i32>(x_2009)];
    let x_2014 : vec3<f32> = ((-(vec3<f32>(x_1990.x, x_1990.y, x_1990.z)) * vec3<f32>(x_2006.w, x_2006.w, x_2006.w)) + vec3<f32>(x_2012.x, x_2012.y, x_2012.z));
    let x_2015 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2014.x, x_2014.y, x_2014.z, x_2015.w);
    let x_2017 : vec4<f32> = u_xlat7;
    let x_2019 : vec4<f32> = u_xlat7;
    u_xlat60 = dot(vec3<f32>(x_2017.x, x_2017.y, x_2017.z), vec3<f32>(x_2019.x, x_2019.y, x_2019.z));
    let x_2022 : f32 = u_xlat60;
    u_xlat60 = max(x_2022, 6.10351562e-05f);
    let x_2025 : f32 = u_xlat60;
    u_xlat61 = inverseSqrt(x_2025);
    let x_2027 : f32 = u_xlat61;
    let x_2029 : vec4<f32> = u_xlat7;
    let x_2031 : vec3<f32> = (vec3<f32>(x_2027, x_2027, x_2027) * vec3<f32>(x_2029.x, x_2029.y, x_2029.z));
    let x_2032 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2031.x, x_2031.y, x_2031.z, x_2032.w);
    let x_2034 : f32 = u_xlat60;
    u_xlat61 = (1.0f / x_2034);
    let x_2036 : f32 = u_xlat60;
    let x_2037 : u32 = u_xlatu59;
    let x_2040 : f32 = x_2002.x_AdditionalLightsAttenuation[bitcast<i32>(x_2037)].x;
    u_xlat60 = (x_2036 * x_2040);
    let x_2042 : f32 = u_xlat60;
    let x_2044 : f32 = u_xlat60;
    u_xlat60 = ((-(x_2042) * x_2044) + 1.0f);
    let x_2047 : f32 = u_xlat60;
    u_xlat60 = max(x_2047, 0.0f);
    let x_2049 : f32 = u_xlat60;
    let x_2050 : f32 = u_xlat60;
    u_xlat60 = (x_2049 * x_2050);
    let x_2052 : f32 = u_xlat60;
    let x_2053 : f32 = u_xlat61;
    u_xlat60 = (x_2052 * x_2053);
    let x_2055 : u32 = u_xlatu59;
    let x_2058 : vec4<f32> = x_2002.x_AdditionalLightsSpotDir[bitcast<i32>(x_2055)];
    let x_2060 : vec4<f32> = u_xlat7;
    u_xlat61 = dot(vec3<f32>(x_2058.x, x_2058.y, x_2058.z), vec3<f32>(x_2060.x, x_2060.y, x_2060.z));
    let x_2063 : f32 = u_xlat61;
    let x_2064 : u32 = u_xlatu59;
    let x_2067 : f32 = x_2002.x_AdditionalLightsAttenuation[bitcast<i32>(x_2064)].z;
    let x_2069 : u32 = u_xlatu59;
    let x_2072 : f32 = x_2002.x_AdditionalLightsAttenuation[bitcast<i32>(x_2069)].w;
    u_xlat61 = ((x_2063 * x_2067) + x_2072);
    let x_2074 : f32 = u_xlat61;
    u_xlat61 = clamp(x_2074, 0.0f, 1.0f);
    let x_2076 : f32 = u_xlat61;
    let x_2077 : f32 = u_xlat61;
    u_xlat61 = (x_2076 * x_2077);
    let x_2079 : f32 = u_xlat60;
    let x_2080 : f32 = u_xlat61;
    u_xlat60 = (x_2079 * x_2080);
    let x_2083 : u32 = u_xlatu59;
    u_xlatu61 = (x_2083 >> 5u);
    let x_2086 : u32 = u_xlatu59;
    u_xlati43 = (1i << bitcast<u32>((bitcast<i32>(x_2086) & 31i)));
    let x_2092 : i32 = u_xlati43;
    let x_2094 : u32 = u_xlatu61;
    let x_2097 : f32 = x_1750.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2094)].el;
    u_xlati61 = bitcast<i32>((bitcast<u32>(x_2092) & bitcast<u32>(x_2097)));
    let x_2101 : i32 = u_xlati61;
    if ((x_2101 != 0i)) {
      let x_2111 : u32 = u_xlatu59;
      let x_2114 : f32 = x_2110.x_AdditionalLightsLightTypes[bitcast<i32>(x_2111)].el;
      u_xlati61 = i32(x_2114);
      let x_2116 : i32 = u_xlati61;
      u_xlati43 = select(1i, 0i, (x_2116 != 0i));
      let x_2120 : u32 = u_xlatu59;
      u_xlati62 = (bitcast<i32>(x_2120) << bitcast<u32>(2i));
      let x_2123 : i32 = u_xlati43;
      if ((x_2123 != 0i)) {
        let x_2127 : vec4<f32> = vs_TEXCOORD2;
        let x_2129 : i32 = u_xlati62;
        let x_2132 : i32 = u_xlati62;
        let x_2136 : vec4<f32> = x_2110.x_AdditionalLightsWorldToLights[((x_2129 + 1i) / 4i)][((x_2132 + 1i) % 4i)];
        let x_2138 : vec3<f32> = (vec3<f32>(x_2127.y, x_2127.y, x_2127.y) * vec3<f32>(x_2136.x, x_2136.y, x_2136.w));
        let x_2139 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2138.x, x_2138.y, x_2138.z, x_2139.w);
        let x_2141 : i32 = u_xlati62;
        let x_2143 : i32 = u_xlati62;
        let x_2146 : vec4<f32> = x_2110.x_AdditionalLightsWorldToLights[(x_2141 / 4i)][(x_2143 % 4i)];
        let x_2148 : vec4<f32> = vs_TEXCOORD2;
        let x_2151 : vec4<f32> = u_xlat8;
        let x_2153 : vec3<f32> = ((vec3<f32>(x_2146.x, x_2146.y, x_2146.w) * vec3<f32>(x_2148.x, x_2148.x, x_2148.x)) + vec3<f32>(x_2151.x, x_2151.y, x_2151.z));
        let x_2154 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2153.x, x_2153.y, x_2153.z, x_2154.w);
        let x_2156 : i32 = u_xlati62;
        let x_2159 : i32 = u_xlati62;
        let x_2163 : vec4<f32> = x_2110.x_AdditionalLightsWorldToLights[((x_2156 + 2i) / 4i)][((x_2159 + 2i) % 4i)];
        let x_2165 : vec4<f32> = vs_TEXCOORD2;
        let x_2168 : vec4<f32> = u_xlat8;
        let x_2170 : vec3<f32> = ((vec3<f32>(x_2163.x, x_2163.y, x_2163.w) * vec3<f32>(x_2165.z, x_2165.z, x_2165.z)) + vec3<f32>(x_2168.x, x_2168.y, x_2168.z));
        let x_2171 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2170.x, x_2170.y, x_2170.z, x_2171.w);
        let x_2173 : vec4<f32> = u_xlat8;
        let x_2175 : i32 = u_xlati62;
        let x_2178 : i32 = u_xlati62;
        let x_2182 : vec4<f32> = x_2110.x_AdditionalLightsWorldToLights[((x_2175 + 3i) / 4i)][((x_2178 + 3i) % 4i)];
        let x_2184 : vec3<f32> = (vec3<f32>(x_2173.x, x_2173.y, x_2173.z) + vec3<f32>(x_2182.x, x_2182.y, x_2182.w));
        let x_2185 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2184.x, x_2184.y, x_2184.z, x_2185.w);
        let x_2187 : vec4<f32> = u_xlat8;
        let x_2189 : vec4<f32> = u_xlat8;
        let x_2191 : vec2<f32> = (vec2<f32>(x_2187.x, x_2187.y) / vec2<f32>(x_2189.z, x_2189.z));
        let x_2192 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2191.x, x_2191.y, x_2192.z, x_2192.w);
        let x_2194 : vec4<f32> = u_xlat8;
        let x_2197 : vec2<f32> = ((vec2<f32>(x_2194.x, x_2194.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2198 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2197.x, x_2197.y, x_2198.z, x_2198.w);
        let x_2200 : vec4<f32> = u_xlat8;
        let x_2204 : vec2<f32> = clamp(vec2<f32>(x_2200.x, x_2200.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2205 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2204.x, x_2204.y, x_2205.z, x_2205.w);
        let x_2207 : u32 = u_xlatu59;
        let x_2210 : vec4<f32> = x_2110.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2207)];
        let x_2212 : vec4<f32> = u_xlat8;
        let x_2215 : u32 = u_xlatu59;
        let x_2218 : vec4<f32> = x_2110.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2215)];
        let x_2220 : vec2<f32> = ((vec2<f32>(x_2210.x, x_2210.y) * vec2<f32>(x_2212.x, x_2212.y)) + vec2<f32>(x_2218.z, x_2218.w));
        let x_2221 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2220.x, x_2220.y, x_2221.z, x_2221.w);
      } else {
        let x_2225 : i32 = u_xlati61;
        u_xlatb61 = (x_2225 == 1i);
        let x_2227 : bool = u_xlatb61;
        u_xlati61 = select(0i, 1i, x_2227);
        let x_2229 : i32 = u_xlati61;
        if ((x_2229 != 0i)) {
          let x_2233 : vec4<f32> = vs_TEXCOORD2;
          let x_2235 : i32 = u_xlati62;
          let x_2238 : i32 = u_xlati62;
          let x_2242 : vec4<f32> = x_2110.x_AdditionalLightsWorldToLights[((x_2235 + 1i) / 4i)][((x_2238 + 1i) % 4i)];
          u_xlat46 = (vec2<f32>(x_2233.y, x_2233.y) * vec2<f32>(x_2242.x, x_2242.y));
          let x_2245 : i32 = u_xlati62;
          let x_2247 : i32 = u_xlati62;
          let x_2250 : vec4<f32> = x_2110.x_AdditionalLightsWorldToLights[(x_2245 / 4i)][(x_2247 % 4i)];
          let x_2252 : vec4<f32> = vs_TEXCOORD2;
          let x_2255 : vec2<f32> = u_xlat46;
          u_xlat46 = ((vec2<f32>(x_2250.x, x_2250.y) * vec2<f32>(x_2252.x, x_2252.x)) + x_2255);
          let x_2257 : i32 = u_xlati62;
          let x_2260 : i32 = u_xlati62;
          let x_2264 : vec4<f32> = x_2110.x_AdditionalLightsWorldToLights[((x_2257 + 2i) / 4i)][((x_2260 + 2i) % 4i)];
          let x_2266 : vec4<f32> = vs_TEXCOORD2;
          let x_2269 : vec2<f32> = u_xlat46;
          u_xlat46 = ((vec2<f32>(x_2264.x, x_2264.y) * vec2<f32>(x_2266.z, x_2266.z)) + x_2269);
          let x_2271 : vec2<f32> = u_xlat46;
          let x_2272 : i32 = u_xlati62;
          let x_2275 : i32 = u_xlati62;
          let x_2279 : vec4<f32> = x_2110.x_AdditionalLightsWorldToLights[((x_2272 + 3i) / 4i)][((x_2275 + 3i) % 4i)];
          u_xlat46 = (x_2271 + vec2<f32>(x_2279.x, x_2279.y));
          let x_2282 : vec2<f32> = u_xlat46;
          u_xlat46 = ((x_2282 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2285 : vec2<f32> = u_xlat46;
          u_xlat46 = fract(x_2285);
          let x_2287 : u32 = u_xlatu59;
          let x_2290 : vec4<f32> = x_2110.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2287)];
          let x_2292 : vec2<f32> = u_xlat46;
          let x_2294 : u32 = u_xlatu59;
          let x_2297 : vec4<f32> = x_2110.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2294)];
          let x_2299 : vec2<f32> = ((vec2<f32>(x_2290.x, x_2290.y) * x_2292) + vec2<f32>(x_2297.z, x_2297.w));
          let x_2300 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2299.x, x_2299.y, x_2300.z, x_2300.w);
        } else {
          let x_2303 : vec4<f32> = vs_TEXCOORD2;
          let x_2305 : i32 = u_xlati62;
          let x_2308 : i32 = u_xlati62;
          let x_2312 : vec4<f32> = x_2110.x_AdditionalLightsWorldToLights[((x_2305 + 1i) / 4i)][((x_2308 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_2303.y, x_2303.y, x_2303.y, x_2303.y) * x_2312);
          let x_2314 : i32 = u_xlati62;
          let x_2316 : i32 = u_xlati62;
          let x_2319 : vec4<f32> = x_2110.x_AdditionalLightsWorldToLights[(x_2314 / 4i)][(x_2316 % 4i)];
          let x_2320 : vec4<f32> = vs_TEXCOORD2;
          let x_2323 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2319 * vec4<f32>(x_2320.x, x_2320.x, x_2320.x, x_2320.x)) + x_2323);
          let x_2325 : i32 = u_xlati62;
          let x_2328 : i32 = u_xlati62;
          let x_2332 : vec4<f32> = x_2110.x_AdditionalLightsWorldToLights[((x_2325 + 2i) / 4i)][((x_2328 + 2i) % 4i)];
          let x_2333 : vec4<f32> = vs_TEXCOORD2;
          let x_2336 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2332 * vec4<f32>(x_2333.z, x_2333.z, x_2333.z, x_2333.z)) + x_2336);
          let x_2338 : vec4<f32> = u_xlat9;
          let x_2339 : i32 = u_xlati62;
          let x_2342 : i32 = u_xlati62;
          let x_2346 : vec4<f32> = x_2110.x_AdditionalLightsWorldToLights[((x_2339 + 3i) / 4i)][((x_2342 + 3i) % 4i)];
          u_xlat9 = (x_2338 + x_2346);
          let x_2348 : vec4<f32> = u_xlat9;
          let x_2350 : vec4<f32> = u_xlat9;
          let x_2352 : vec3<f32> = (vec3<f32>(x_2348.x, x_2348.y, x_2348.z) / vec3<f32>(x_2350.w, x_2350.w, x_2350.w));
          let x_2353 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2352.x, x_2352.y, x_2352.z, x_2353.w);
          let x_2355 : vec4<f32> = u_xlat9;
          let x_2357 : vec4<f32> = u_xlat9;
          u_xlat61 = dot(vec3<f32>(x_2355.x, x_2355.y, x_2355.z), vec3<f32>(x_2357.x, x_2357.y, x_2357.z));
          let x_2360 : f32 = u_xlat61;
          u_xlat61 = inverseSqrt(x_2360);
          let x_2362 : f32 = u_xlat61;
          let x_2364 : vec4<f32> = u_xlat9;
          let x_2366 : vec3<f32> = (vec3<f32>(x_2362, x_2362, x_2362) * vec3<f32>(x_2364.x, x_2364.y, x_2364.z));
          let x_2367 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2366.x, x_2366.y, x_2366.z, x_2367.w);
          let x_2369 : vec4<f32> = u_xlat9;
          u_xlat61 = dot(abs(vec3<f32>(x_2369.x, x_2369.y, x_2369.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2374 : f32 = u_xlat61;
          u_xlat61 = max(x_2374, 0.000001f);
          let x_2377 : f32 = u_xlat61;
          u_xlat61 = (1.0f / x_2377);
          let x_2379 : f32 = u_xlat61;
          let x_2381 : vec4<f32> = u_xlat9;
          let x_2383 : vec3<f32> = (vec3<f32>(x_2379, x_2379, x_2379) * vec3<f32>(x_2381.z, x_2381.x, x_2381.y));
          let x_2384 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2383.x, x_2383.y, x_2383.z, x_2384.w);
          let x_2387 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_2387);
          let x_2391 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_2391, 0.0f, 1.0f);
          let x_2395 : vec4<f32> = u_xlat10;
          let x_2398 : vec4<bool> = (vec4<f32>(x_2395.y, x_2395.z, x_2395.y, x_2395.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb43 = vec2<bool>(x_2398.x, x_2398.y);
          let x_2401 : bool = u_xlatb43.x;
          if (x_2401) {
            let x_2406 : f32 = u_xlat10.x;
            x_2402 = x_2406;
          } else {
            let x_2409 : f32 = u_xlat10.x;
            x_2402 = -(x_2409);
          }
          let x_2411 : f32 = x_2402;
          u_xlat43.x = x_2411;
          let x_2414 : bool = u_xlatb43.y;
          if (x_2414) {
            let x_2419 : f32 = u_xlat10.x;
            x_2415 = x_2419;
          } else {
            let x_2422 : f32 = u_xlat10.x;
            x_2415 = -(x_2422);
          }
          let x_2424 : f32 = x_2415;
          u_xlat43.y = x_2424;
          let x_2426 : vec4<f32> = u_xlat9;
          let x_2428 : f32 = u_xlat61;
          let x_2431 : vec2<f32> = u_xlat43;
          u_xlat43 = ((vec2<f32>(x_2426.x, x_2426.y) * vec2<f32>(x_2428, x_2428)) + x_2431);
          let x_2433 : vec2<f32> = u_xlat43;
          u_xlat43 = ((x_2433 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2436 : vec2<f32> = u_xlat43;
          u_xlat43 = clamp(x_2436, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2440 : u32 = u_xlatu59;
          let x_2443 : vec4<f32> = x_2110.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2440)];
          let x_2445 : vec2<f32> = u_xlat43;
          let x_2447 : u32 = u_xlatu59;
          let x_2450 : vec4<f32> = x_2110.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2447)];
          let x_2452 : vec2<f32> = ((vec2<f32>(x_2443.x, x_2443.y) * x_2445) + vec2<f32>(x_2450.z, x_2450.w));
          let x_2453 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2452.x, x_2452.y, x_2453.z, x_2453.w);
        }
      }
      let x_2460 : vec4<f32> = u_xlat8;
      let x_2463 : f32 = x_43.x_GlobalMipBias.x;
      let x_2464 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2460.x, x_2460.y), x_2463);
      u_xlat8 = x_2464;
      let x_2466 : bool = u_xlatb5.y;
      if (x_2466) {
        let x_2471 : f32 = u_xlat8.w;
        x_2467 = x_2471;
      } else {
        let x_2474 : f32 = u_xlat8.x;
        x_2467 = x_2474;
      }
      let x_2475 : f32 = x_2467;
      u_xlat61 = x_2475;
      let x_2477 : bool = u_xlatb5.x;
      if (x_2477) {
        let x_2481 : vec4<f32> = u_xlat8;
        x_2478 = vec3<f32>(x_2481.x, x_2481.y, x_2481.z);
      } else {
        let x_2484 : f32 = u_xlat61;
        x_2478 = vec3<f32>(x_2484, x_2484, x_2484);
      }
      let x_2486 : vec3<f32> = x_2478;
      let x_2487 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2486.x, x_2486.y, x_2486.z, x_2487.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_2493 : vec4<f32> = u_xlat8;
    let x_2495 : u32 = u_xlatu59;
    let x_2498 : vec4<f32> = x_2002.x_AdditionalLightsColor[bitcast<i32>(x_2495)];
    let x_2500 : vec3<f32> = (vec3<f32>(x_2493.x, x_2493.y, x_2493.z) * vec3<f32>(x_2498.x, x_2498.y, x_2498.z));
    let x_2501 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2500.x, x_2500.y, x_2500.z, x_2501.w);
    let x_2503 : f32 = u_xlat57;
    let x_2505 : vec4<f32> = u_xlat8;
    let x_2507 : vec3<f32> = (vec3<f32>(x_2503, x_2503, x_2503) * vec3<f32>(x_2505.x, x_2505.y, x_2505.z));
    let x_2508 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2507.x, x_2507.y, x_2507.z, x_2508.w);
    let x_2510 : f32 = u_xlat60;
    let x_2512 : vec4<f32> = u_xlat8;
    let x_2514 : vec3<f32> = (vec3<f32>(x_2510, x_2510, x_2510) * vec3<f32>(x_2512.x, x_2512.y, x_2512.z));
    let x_2515 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2514.x, x_2514.y, x_2514.z, x_2515.w);
    let x_2517 : vec3<f32> = u_xlat2;
    let x_2518 : vec4<f32> = u_xlat7;
    u_xlat59 = dot(x_2517, vec3<f32>(x_2518.x, x_2518.y, x_2518.z));
    let x_2521 : f32 = u_xlat59;
    u_xlat59 = clamp(x_2521, 0.0f, 1.0f);
    let x_2523 : f32 = u_xlat59;
    let x_2525 : vec4<f32> = u_xlat8;
    let x_2527 : vec3<f32> = (vec3<f32>(x_2523, x_2523, x_2523) * vec3<f32>(x_2525.x, x_2525.y, x_2525.z));
    let x_2528 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2527.x, x_2527.y, x_2527.z, x_2528.w);
    let x_2530 : vec4<f32> = u_xlat7;
    let x_2532 : vec4<f32> = u_xlat1;
    let x_2535 : vec4<f32> = u_xlat6;
    let x_2537 : vec3<f32> = ((vec3<f32>(x_2530.x, x_2530.y, x_2530.z) * vec3<f32>(x_2532.x, x_2532.y, x_2532.z)) + vec3<f32>(x_2535.x, x_2535.y, x_2535.z));
    let x_2538 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2537.x, x_2537.y, x_2537.z, x_2538.w);

    continuing {
      let x_2540 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2540 + bitcast<u32>(1i));
    }
  }
  let x_2542 : vec4<f32> = u_xlat4;
  let x_2544 : vec4<f32> = u_xlat1;
  let x_2547 : vec4<f32> = u_xlat3;
  let x_2549 : vec3<f32> = ((vec3<f32>(x_2542.x, x_2542.y, x_2542.z) * vec3<f32>(x_2544.x, x_2544.y, x_2544.z)) + vec3<f32>(x_2547.x, x_2547.y, x_2547.z));
  let x_2550 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2549.x, x_2549.y, x_2549.z, x_2550.w);
  let x_2554 : vec4<f32> = u_xlat6;
  let x_2556 : vec4<f32> = u_xlat1;
  let x_2558 : vec3<f32> = (vec3<f32>(x_2554.x, x_2554.y, x_2554.z) + vec3<f32>(x_2556.x, x_2556.y, x_2556.z));
  let x_2559 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2558.x, x_2558.y, x_2558.z, x_2559.w);
  let x_2561 : bool = u_xlatb38;
  let x_2562 : f32 = u_xlat19;
  SV_Target0.w = select(1.0f, x_2562, x_2561);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD7_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

