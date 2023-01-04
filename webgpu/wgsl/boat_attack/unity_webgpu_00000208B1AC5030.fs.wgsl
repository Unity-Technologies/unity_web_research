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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_64 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_170 : MainLightShadows;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1709 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_1844 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1961 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2069 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_1792 : f32;
  var x_1803 : vec3<f32>;
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
  var x_2361 : f32;
  var x_2374 : f32;
  var x_2426 : f32;
  var x_2437 : vec3<f32>;
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
  let x_378 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_375, x_377);
  let x_379 : vec3<f32> = vec3<f32>(x_378.x, x_378.y, x_378.z);
  let x_380 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_384 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_385 : vec2<f32> = vec2<f32>(x_384.x, x_384.y);
  let x_389 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_385.x, x_385.y));
  let x_390 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_389.x, x_390.y, x_390.z, x_389.y);
  let x_392 : vec4<f32> = u_xlat0;
  let x_394 : vec4<f32> = hlslcc_FragCoord;
  let x_396 : vec2<f32> = (vec2<f32>(x_392.x, x_392.w) * vec2<f32>(x_394.x, x_394.y));
  let x_397 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_396.x, x_396.y, x_397.z, x_397.w);
  let x_400 : f32 = u_xlat5.y;
  let x_403 : f32 = x_43.x_ScaleBiasRt.x;
  let x_406 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat0.x = ((x_400 * x_403) + x_406);
  let x_410 : f32 = u_xlat0.x;
  u_xlat5.z = (-(x_410) + 1.0f);
  let x_419 : vec4<f32> = u_xlat5;
  let x_422 : f32 = x_43.x_GlobalMipBias.x;
  let x_423 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_419.x, x_419.z), x_422);
  u_xlat0.x = x_423.x;
  let x_427 : f32 = u_xlat0.x;
  u_xlat57 = (x_427 + -1.0f);
  let x_430 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_431 : f32 = u_xlat57;
  u_xlat57 = ((x_430 * x_431) + 1.0f);
  let x_435 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_435, 1.0f);
  let x_440 : f32 = x_170.x_MainLightShadowParams.y;
  u_xlatb58 = (0.0f < x_440);
  let x_442 : bool = u_xlatb58;
  if (x_442) {
    let x_446 : f32 = x_170.x_MainLightShadowParams.y;
    u_xlatb58 = (x_446 == 1.0f);
    let x_448 : bool = u_xlatb58;
    if (x_448) {
      let x_451 : vec4<f32> = u_xlat3;
      let x_455 : vec4<f32> = x_170.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_451.x, x_451.y, x_451.x, x_451.y) + x_455);
      let x_458 : vec4<f32> = u_xlat5;
      let x_459 : vec2<f32> = vec2<f32>(x_458.x, x_458.y);
      let x_461 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_459.x, x_459.y, x_461);
      let x_473 : vec3<f32> = txVec0;
      let x_475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_473.xy, x_473.z);
      u_xlat6.x = x_475;
      let x_478 : vec4<f32> = u_xlat5;
      let x_479 : vec2<f32> = vec2<f32>(x_478.z, x_478.w);
      let x_481 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_479.x, x_479.y, x_481);
      let x_488 : vec3<f32> = txVec1;
      let x_490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_488.xy, x_488.z);
      u_xlat6.y = x_490;
      let x_492 : vec4<f32> = u_xlat3;
      let x_496 : vec4<f32> = x_170.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_492.x, x_492.y, x_492.x, x_492.y) + x_496);
      let x_499 : vec4<f32> = u_xlat5;
      let x_500 : vec2<f32> = vec2<f32>(x_499.x, x_499.y);
      let x_502 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_500.x, x_500.y, x_502);
      let x_509 : vec3<f32> = txVec2;
      let x_511 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_509.xy, x_509.z);
      u_xlat6.z = x_511;
      let x_514 : vec4<f32> = u_xlat5;
      let x_515 : vec2<f32> = vec2<f32>(x_514.z, x_514.w);
      let x_517 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_515.x, x_515.y, x_517);
      let x_524 : vec3<f32> = txVec3;
      let x_526 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_524.xy, x_524.z);
      u_xlat6.w = x_526;
      let x_529 : vec4<f32> = u_xlat6;
      u_xlat58 = dot(x_529, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_536 : f32 = x_170.x_MainLightShadowParams.y;
      u_xlatb59 = (x_536 == 2.0f);
      let x_538 : bool = u_xlatb59;
      if (x_538) {
        let x_541 : vec4<f32> = u_xlat3;
        let x_545 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_549 : vec2<f32> = ((vec2<f32>(x_541.x, x_541.y) * vec2<f32>(x_545.z, x_545.w)) + vec2<f32>(0.5f, 0.5f));
        let x_550 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_549.x, x_549.y, x_550.z, x_550.w);
        let x_552 : vec4<f32> = u_xlat5;
        let x_554 : vec2<f32> = floor(vec2<f32>(x_552.x, x_552.y));
        let x_555 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_554.x, x_554.y, x_555.z, x_555.w);
        let x_559 : vec4<f32> = u_xlat3;
        let x_562 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_565 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_559.x, x_559.y) * vec2<f32>(x_562.z, x_562.w)) + -(vec2<f32>(x_565.x, x_565.y)));
        let x_569 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_569.x, x_569.x, x_569.y, x_569.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_574 : vec4<f32> = u_xlat6;
        let x_576 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_574.x, x_574.x, x_574.z, x_574.z) * vec4<f32>(x_576.x, x_576.x, x_576.z, x_576.z));
        let x_579 : vec4<f32> = u_xlat7;
        let x_583 : vec2<f32> = (vec2<f32>(x_579.y, x_579.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_584 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_583.x, x_584.y, x_583.y, x_584.w);
        let x_586 : vec4<f32> = u_xlat7;
        let x_589 : vec2<f32> = u_xlat43;
        let x_591 : vec2<f32> = ((vec2<f32>(x_586.x, x_586.z) * vec2<f32>(0.5f, 0.5f)) + -(x_589));
        let x_592 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_591.x, x_591.y, x_592.z, x_592.w);
        let x_595 : vec2<f32> = u_xlat43;
        u_xlat45 = (-(x_595) + vec2<f32>(1.0f, 1.0f));
        let x_599 : vec2<f32> = u_xlat43;
        let x_601 : vec2<f32> = min(x_599, vec2<f32>(0.0f, 0.0f));
        let x_602 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_601.x, x_601.y, x_602.z, x_602.w);
        let x_604 : vec4<f32> = u_xlat8;
        let x_607 : vec4<f32> = u_xlat8;
        let x_610 : vec2<f32> = u_xlat45;
        let x_611 : vec2<f32> = ((-(vec2<f32>(x_604.x, x_604.y)) * vec2<f32>(x_607.x, x_607.y)) + x_610);
        let x_612 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_611.x, x_611.y, x_612.z, x_612.w);
        let x_614 : vec2<f32> = u_xlat43;
        u_xlat43 = max(x_614, vec2<f32>(0.0f, 0.0f));
        let x_616 : vec2<f32> = u_xlat43;
        let x_618 : vec2<f32> = u_xlat43;
        let x_620 : vec4<f32> = u_xlat6;
        u_xlat43 = ((-(x_616) * x_618) + vec2<f32>(x_620.y, x_620.w));
        let x_623 : vec4<f32> = u_xlat8;
        let x_625 : vec2<f32> = (vec2<f32>(x_623.x, x_623.y) + vec2<f32>(1.0f, 1.0f));
        let x_626 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_625.x, x_625.y, x_626.z, x_626.w);
        let x_628 : vec2<f32> = u_xlat43;
        u_xlat43 = (x_628 + vec2<f32>(1.0f, 1.0f));
        let x_631 : vec4<f32> = u_xlat7;
        let x_635 : vec2<f32> = (vec2<f32>(x_631.x, x_631.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_636 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_635.x, x_635.y, x_636.z, x_636.w);
        let x_638 : vec2<f32> = u_xlat45;
        let x_639 : vec2<f32> = (x_638 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_640 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_639.x, x_639.y, x_640.z, x_640.w);
        let x_642 : vec4<f32> = u_xlat8;
        let x_644 : vec2<f32> = (vec2<f32>(x_642.x, x_642.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_645 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_644.x, x_644.y, x_645.z, x_645.w);
        let x_648 : vec2<f32> = u_xlat43;
        let x_649 : vec2<f32> = (x_648 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_650 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_649.x, x_649.y, x_650.z, x_650.w);
        let x_652 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_652.y, x_652.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_656 : f32 = u_xlat8.x;
        u_xlat9.z = x_656;
        let x_659 : f32 = u_xlat43.x;
        u_xlat9.w = x_659;
        let x_662 : f32 = u_xlat10.x;
        u_xlat7.z = x_662;
        let x_665 : f32 = u_xlat6.x;
        u_xlat7.w = x_665;
        let x_668 : vec4<f32> = u_xlat7;
        let x_670 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_668.z, x_668.w, x_668.x, x_668.z) + vec4<f32>(x_670.z, x_670.w, x_670.x, x_670.z));
        let x_674 : f32 = u_xlat9.y;
        u_xlat8.z = x_674;
        let x_677 : f32 = u_xlat43.y;
        u_xlat8.w = x_677;
        let x_680 : f32 = u_xlat7.y;
        u_xlat10.z = x_680;
        let x_683 : f32 = u_xlat6.z;
        u_xlat10.w = x_683;
        let x_685 : vec4<f32> = u_xlat8;
        let x_687 : vec4<f32> = u_xlat10;
        let x_689 : vec3<f32> = (vec3<f32>(x_685.z, x_685.y, x_685.w) + vec3<f32>(x_687.z, x_687.y, x_687.w));
        let x_690 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
        let x_692 : vec4<f32> = u_xlat7;
        let x_694 : vec4<f32> = u_xlat11;
        let x_696 : vec3<f32> = (vec3<f32>(x_692.x, x_692.z, x_692.w) / vec3<f32>(x_694.z, x_694.w, x_694.y));
        let x_697 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
        let x_699 : vec4<f32> = u_xlat7;
        let x_705 : vec3<f32> = (vec3<f32>(x_699.x, x_699.y, x_699.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_706 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
        let x_708 : vec4<f32> = u_xlat10;
        let x_710 : vec4<f32> = u_xlat6;
        let x_712 : vec3<f32> = (vec3<f32>(x_708.z, x_708.y, x_708.w) / vec3<f32>(x_710.x, x_710.y, x_710.z));
        let x_713 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
        let x_715 : vec4<f32> = u_xlat8;
        let x_717 : vec3<f32> = (vec3<f32>(x_715.x, x_715.y, x_715.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_718 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
        let x_720 : vec4<f32> = u_xlat7;
        let x_723 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_725 : vec3<f32> = (vec3<f32>(x_720.y, x_720.x, x_720.z) * vec3<f32>(x_723.x, x_723.x, x_723.x));
        let x_726 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
        let x_728 : vec4<f32> = u_xlat8;
        let x_731 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_733 : vec3<f32> = (vec3<f32>(x_728.x, x_728.y, x_728.z) * vec3<f32>(x_731.y, x_731.y, x_731.y));
        let x_734 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_733.x, x_733.y, x_733.z, x_734.w);
        let x_737 : f32 = u_xlat8.x;
        u_xlat7.w = x_737;
        let x_739 : vec4<f32> = u_xlat5;
        let x_742 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_745 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_739.x, x_739.y, x_739.x, x_739.y) * vec4<f32>(x_742.x, x_742.y, x_742.x, x_742.y)) + vec4<f32>(x_745.y, x_745.w, x_745.x, x_745.w));
        let x_748 : vec4<f32> = u_xlat5;
        let x_751 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_754 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_748.x, x_748.y) * vec2<f32>(x_751.x, x_751.y)) + vec2<f32>(x_754.z, x_754.w));
        let x_758 : f32 = u_xlat7.y;
        u_xlat8.w = x_758;
        let x_760 : vec4<f32> = u_xlat8;
        let x_761 : vec2<f32> = vec2<f32>(x_760.y, x_760.z);
        let x_762 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_762.x, x_761.x, x_762.z, x_761.y);
        let x_764 : vec4<f32> = u_xlat5;
        let x_767 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_770 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_764.x, x_764.y, x_764.x, x_764.y) * vec4<f32>(x_767.x, x_767.y, x_767.x, x_767.y)) + vec4<f32>(x_770.x, x_770.y, x_770.z, x_770.y));
        let x_773 : vec4<f32> = u_xlat5;
        let x_776 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_779 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_773.x, x_773.y, x_773.x, x_773.y) * vec4<f32>(x_776.x, x_776.y, x_776.x, x_776.y)) + vec4<f32>(x_779.w, x_779.y, x_779.w, x_779.z));
        let x_782 : vec4<f32> = u_xlat5;
        let x_785 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_788 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_782.x, x_782.y, x_782.x, x_782.y) * vec4<f32>(x_785.x, x_785.y, x_785.x, x_785.y)) + vec4<f32>(x_788.x, x_788.w, x_788.z, x_788.w));
        let x_792 : vec4<f32> = u_xlat6;
        let x_794 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_792.x, x_792.x, x_792.x, x_792.y) * vec4<f32>(x_794.z, x_794.w, x_794.y, x_794.z));
        let x_798 : vec4<f32> = u_xlat6;
        let x_800 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_798.y, x_798.y, x_798.z, x_798.z) * x_800);
        let x_804 : f32 = u_xlat6.z;
        let x_806 : f32 = u_xlat11.y;
        u_xlat59 = (x_804 * x_806);
        let x_809 : vec4<f32> = u_xlat9;
        let x_810 : vec2<f32> = vec2<f32>(x_809.x, x_809.y);
        let x_812 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_810.x, x_810.y, x_812);
        let x_820 : vec3<f32> = txVec4;
        let x_822 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_820.xy, x_820.z);
        u_xlat60 = x_822;
        let x_824 : vec4<f32> = u_xlat9;
        let x_825 : vec2<f32> = vec2<f32>(x_824.z, x_824.w);
        let x_827 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_825.x, x_825.y, x_827);
        let x_835 : vec3<f32> = txVec5;
        let x_837 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_835.xy, x_835.z);
        u_xlat61 = x_837;
        let x_838 : f32 = u_xlat61;
        let x_840 : f32 = u_xlat12.y;
        u_xlat61 = (x_838 * x_840);
        let x_843 : f32 = u_xlat12.x;
        let x_844 : f32 = u_xlat60;
        let x_846 : f32 = u_xlat61;
        u_xlat60 = ((x_843 * x_844) + x_846);
        let x_849 : vec2<f32> = u_xlat43;
        let x_851 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_849.x, x_849.y, x_851);
        let x_858 : vec3<f32> = txVec6;
        let x_860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_858.xy, x_858.z);
        u_xlat61 = x_860;
        let x_862 : f32 = u_xlat12.z;
        let x_863 : f32 = u_xlat61;
        let x_865 : f32 = u_xlat60;
        u_xlat60 = ((x_862 * x_863) + x_865);
        let x_868 : vec4<f32> = u_xlat8;
        let x_869 : vec2<f32> = vec2<f32>(x_868.x, x_868.y);
        let x_871 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_869.x, x_869.y, x_871);
        let x_878 : vec3<f32> = txVec7;
        let x_880 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_878.xy, x_878.z);
        u_xlat61 = x_880;
        let x_882 : f32 = u_xlat12.w;
        let x_883 : f32 = u_xlat61;
        let x_885 : f32 = u_xlat60;
        u_xlat60 = ((x_882 * x_883) + x_885);
        let x_888 : vec4<f32> = u_xlat10;
        let x_889 : vec2<f32> = vec2<f32>(x_888.x, x_888.y);
        let x_891 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_889.x, x_889.y, x_891);
        let x_898 : vec3<f32> = txVec8;
        let x_900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_898.xy, x_898.z);
        u_xlat61 = x_900;
        let x_902 : f32 = u_xlat13.x;
        let x_903 : f32 = u_xlat61;
        let x_905 : f32 = u_xlat60;
        u_xlat60 = ((x_902 * x_903) + x_905);
        let x_908 : vec4<f32> = u_xlat10;
        let x_909 : vec2<f32> = vec2<f32>(x_908.z, x_908.w);
        let x_911 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_909.x, x_909.y, x_911);
        let x_918 : vec3<f32> = txVec9;
        let x_920 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_918.xy, x_918.z);
        u_xlat61 = x_920;
        let x_922 : f32 = u_xlat13.y;
        let x_923 : f32 = u_xlat61;
        let x_925 : f32 = u_xlat60;
        u_xlat60 = ((x_922 * x_923) + x_925);
        let x_928 : vec4<f32> = u_xlat8;
        let x_929 : vec2<f32> = vec2<f32>(x_928.z, x_928.w);
        let x_931 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_929.x, x_929.y, x_931);
        let x_938 : vec3<f32> = txVec10;
        let x_940 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_938.xy, x_938.z);
        u_xlat61 = x_940;
        let x_942 : f32 = u_xlat13.z;
        let x_943 : f32 = u_xlat61;
        let x_945 : f32 = u_xlat60;
        u_xlat60 = ((x_942 * x_943) + x_945);
        let x_948 : vec4<f32> = u_xlat7;
        let x_949 : vec2<f32> = vec2<f32>(x_948.x, x_948.y);
        let x_951 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_949.x, x_949.y, x_951);
        let x_958 : vec3<f32> = txVec11;
        let x_960 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_958.xy, x_958.z);
        u_xlat61 = x_960;
        let x_962 : f32 = u_xlat13.w;
        let x_963 : f32 = u_xlat61;
        let x_965 : f32 = u_xlat60;
        u_xlat60 = ((x_962 * x_963) + x_965);
        let x_968 : vec4<f32> = u_xlat7;
        let x_969 : vec2<f32> = vec2<f32>(x_968.z, x_968.w);
        let x_971 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_969.x, x_969.y, x_971);
        let x_978 : vec3<f32> = txVec12;
        let x_980 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_978.xy, x_978.z);
        u_xlat61 = x_980;
        let x_981 : f32 = u_xlat59;
        let x_982 : f32 = u_xlat61;
        let x_984 : f32 = u_xlat60;
        u_xlat58 = ((x_981 * x_982) + x_984);
      } else {
        let x_987 : vec4<f32> = u_xlat3;
        let x_990 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_993 : vec2<f32> = ((vec2<f32>(x_987.x, x_987.y) * vec2<f32>(x_990.z, x_990.w)) + vec2<f32>(0.5f, 0.5f));
        let x_994 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_993.x, x_993.y, x_994.z, x_994.w);
        let x_996 : vec4<f32> = u_xlat5;
        let x_998 : vec2<f32> = floor(vec2<f32>(x_996.x, x_996.y));
        let x_999 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_998.x, x_998.y, x_999.z, x_999.w);
        let x_1001 : vec4<f32> = u_xlat3;
        let x_1004 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_1007 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_1001.x, x_1001.y) * vec2<f32>(x_1004.z, x_1004.w)) + -(vec2<f32>(x_1007.x, x_1007.y)));
        let x_1011 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_1011.x, x_1011.x, x_1011.y, x_1011.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1014 : vec4<f32> = u_xlat6;
        let x_1016 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1014.x, x_1014.x, x_1014.z, x_1014.z) * vec4<f32>(x_1016.x, x_1016.x, x_1016.z, x_1016.z));
        let x_1019 : vec4<f32> = u_xlat7;
        let x_1023 : vec2<f32> = (vec2<f32>(x_1019.y, x_1019.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1024 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1024.x, x_1023.x, x_1024.z, x_1023.y);
        let x_1026 : vec4<f32> = u_xlat7;
        let x_1029 : vec2<f32> = u_xlat43;
        let x_1031 : vec2<f32> = ((vec2<f32>(x_1026.x, x_1026.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1029));
        let x_1032 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1031.x, x_1032.y, x_1031.y, x_1032.w);
        let x_1034 : vec2<f32> = u_xlat43;
        let x_1036 : vec2<f32> = (-(x_1034) + vec2<f32>(1.0f, 1.0f));
        let x_1037 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1036.x, x_1036.y, x_1037.z, x_1037.w);
        let x_1039 : vec2<f32> = u_xlat43;
        u_xlat45 = min(x_1039, vec2<f32>(0.0f, 0.0f));
        let x_1041 : vec2<f32> = u_xlat45;
        let x_1043 : vec2<f32> = u_xlat45;
        let x_1045 : vec4<f32> = u_xlat7;
        let x_1047 : vec2<f32> = ((-(x_1041) * x_1043) + vec2<f32>(x_1045.x, x_1045.y));
        let x_1048 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1047.x, x_1047.y, x_1048.z, x_1048.w);
        let x_1050 : vec2<f32> = u_xlat43;
        u_xlat45 = max(x_1050, vec2<f32>(0.0f, 0.0f));
        let x_1053 : vec2<f32> = u_xlat45;
        let x_1055 : vec2<f32> = u_xlat45;
        let x_1057 : vec4<f32> = u_xlat6;
        let x_1059 : vec2<f32> = ((-(x_1053) * x_1055) + vec2<f32>(x_1057.y, x_1057.w));
        let x_1060 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1059.x, x_1060.y, x_1059.y);
        let x_1062 : vec4<f32> = u_xlat7;
        let x_1065 : vec2<f32> = (vec2<f32>(x_1062.x, x_1062.y) + vec2<f32>(2.0f, 2.0f));
        let x_1066 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1065.x, x_1065.y, x_1066.z, x_1066.w);
        let x_1068 : vec3<f32> = u_xlat25;
        let x_1070 : vec2<f32> = (vec2<f32>(x_1068.x, x_1068.z) + vec2<f32>(2.0f, 2.0f));
        let x_1071 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1071.x, x_1070.x, x_1071.z, x_1070.y);
        let x_1074 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1074 * 0.081632003f);
        let x_1078 : vec4<f32> = u_xlat6;
        let x_1081 : vec3<f32> = (vec3<f32>(x_1078.z, x_1078.x, x_1078.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1082 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1081.x, x_1081.y, x_1081.z, x_1082.w);
        let x_1084 : vec4<f32> = u_xlat7;
        let x_1087 : vec2<f32> = (vec2<f32>(x_1084.x, x_1084.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1088 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1087.x, x_1087.y, x_1088.z, x_1088.w);
        let x_1091 : f32 = u_xlat10.y;
        u_xlat9.x = x_1091;
        let x_1093 : vec2<f32> = u_xlat43;
        let x_1100 : vec2<f32> = ((vec2<f32>(x_1093.x, x_1093.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1101 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1101.x, x_1100.x, x_1101.z, x_1100.y);
        let x_1103 : vec2<f32> = u_xlat43;
        let x_1107 : vec2<f32> = ((vec2<f32>(x_1103.x, x_1103.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1108 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1107.x, x_1108.y, x_1107.y, x_1108.w);
        let x_1111 : f32 = u_xlat6.x;
        u_xlat7.y = x_1111;
        let x_1114 : f32 = u_xlat8.y;
        u_xlat7.w = x_1114;
        let x_1116 : vec4<f32> = u_xlat7;
        let x_1117 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1116 + x_1117);
        let x_1119 : vec2<f32> = u_xlat43;
        let x_1122 : vec2<f32> = ((vec2<f32>(x_1119.y, x_1119.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1123 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1123.x, x_1122.x, x_1123.z, x_1122.y);
        let x_1125 : vec2<f32> = u_xlat43;
        let x_1128 : vec2<f32> = ((vec2<f32>(x_1125.y, x_1125.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1129 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1128.x, x_1129.y, x_1128.y, x_1129.w);
        let x_1132 : f32 = u_xlat6.y;
        u_xlat8.y = x_1132;
        let x_1134 : vec4<f32> = u_xlat8;
        let x_1135 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1134 + x_1135);
        let x_1137 : vec4<f32> = u_xlat7;
        let x_1138 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1137 / x_1138);
        let x_1140 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1140 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1146 : vec4<f32> = u_xlat8;
        let x_1147 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1146 / x_1147);
        let x_1149 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1149 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1151 : vec4<f32> = u_xlat7;
        let x_1154 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1151.w, x_1151.x, x_1151.y, x_1151.z) * vec4<f32>(x_1154.x, x_1154.x, x_1154.x, x_1154.x));
        let x_1157 : vec4<f32> = u_xlat8;
        let x_1160 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1157.x, x_1157.w, x_1157.y, x_1157.z) * vec4<f32>(x_1160.y, x_1160.y, x_1160.y, x_1160.y));
        let x_1163 : vec4<f32> = u_xlat7;
        let x_1164 : vec3<f32> = vec3<f32>(x_1163.y, x_1163.z, x_1163.w);
        let x_1165 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1164.x, x_1165.y, x_1164.y, x_1164.z);
        let x_1168 : f32 = u_xlat8.x;
        u_xlat10.y = x_1168;
        let x_1170 : vec4<f32> = u_xlat5;
        let x_1173 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_1176 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1170.x, x_1170.y, x_1170.x, x_1170.y) * vec4<f32>(x_1173.x, x_1173.y, x_1173.x, x_1173.y)) + vec4<f32>(x_1176.x, x_1176.y, x_1176.z, x_1176.y));
        let x_1179 : vec4<f32> = u_xlat5;
        let x_1182 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_1185 : vec4<f32> = u_xlat10;
        u_xlat43 = ((vec2<f32>(x_1179.x, x_1179.y) * vec2<f32>(x_1182.x, x_1182.y)) + vec2<f32>(x_1185.w, x_1185.y));
        let x_1189 : f32 = u_xlat10.y;
        u_xlat7.y = x_1189;
        let x_1192 : f32 = u_xlat8.z;
        u_xlat10.y = x_1192;
        let x_1194 : vec4<f32> = u_xlat5;
        let x_1197 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_1200 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1194.x, x_1194.y, x_1194.x, x_1194.y) * vec4<f32>(x_1197.x, x_1197.y, x_1197.x, x_1197.y)) + vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1200.y));
        let x_1203 : vec4<f32> = u_xlat5;
        let x_1206 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_1209 : vec4<f32> = u_xlat10;
        let x_1211 : vec2<f32> = ((vec2<f32>(x_1203.x, x_1203.y) * vec2<f32>(x_1206.x, x_1206.y)) + vec2<f32>(x_1209.w, x_1209.y));
        let x_1212 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1211.x, x_1211.y, x_1212.z, x_1212.w);
        let x_1215 : f32 = u_xlat10.y;
        u_xlat7.z = x_1215;
        let x_1218 : vec4<f32> = u_xlat5;
        let x_1221 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_1224 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1218.x, x_1218.y, x_1218.x, x_1218.y) * vec4<f32>(x_1221.x, x_1221.y, x_1221.x, x_1221.y)) + vec4<f32>(x_1224.x, x_1224.y, x_1224.x, x_1224.z));
        let x_1228 : f32 = u_xlat8.w;
        u_xlat10.y = x_1228;
        let x_1231 : vec4<f32> = u_xlat5;
        let x_1234 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_1237 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1231.x, x_1231.y, x_1231.x, x_1231.y) * vec4<f32>(x_1234.x, x_1234.y, x_1234.x, x_1234.y)) + vec4<f32>(x_1237.x, x_1237.y, x_1237.z, x_1237.y));
        let x_1241 : vec4<f32> = u_xlat5;
        let x_1244 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_1247 : vec4<f32> = u_xlat10;
        u_xlat26 = ((vec2<f32>(x_1241.x, x_1241.y) * vec2<f32>(x_1244.x, x_1244.y)) + vec2<f32>(x_1247.w, x_1247.y));
        let x_1251 : f32 = u_xlat10.y;
        u_xlat7.w = x_1251;
        let x_1254 : vec4<f32> = u_xlat5;
        let x_1257 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_1260 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1254.x, x_1254.y) * vec2<f32>(x_1257.x, x_1257.y)) + vec2<f32>(x_1260.x, x_1260.w));
        let x_1263 : vec4<f32> = u_xlat10;
        let x_1264 : vec3<f32> = vec3<f32>(x_1263.x, x_1263.z, x_1263.w);
        let x_1265 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1264.x, x_1265.y, x_1264.y, x_1264.z);
        let x_1267 : vec4<f32> = u_xlat5;
        let x_1270 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_1273 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1267.x, x_1267.y, x_1267.x, x_1267.y) * vec4<f32>(x_1270.x, x_1270.y, x_1270.x, x_1270.y)) + vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1273.y));
        let x_1277 : vec4<f32> = u_xlat5;
        let x_1280 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_1283 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1277.x, x_1277.y) * vec2<f32>(x_1280.x, x_1280.y)) + vec2<f32>(x_1283.w, x_1283.y));
        let x_1287 : f32 = u_xlat7.x;
        u_xlat8.x = x_1287;
        let x_1289 : vec4<f32> = u_xlat5;
        let x_1292 : vec4<f32> = x_170.x_MainLightShadowmapSize;
        let x_1295 : vec4<f32> = u_xlat8;
        let x_1297 : vec2<f32> = ((vec2<f32>(x_1289.x, x_1289.y) * vec2<f32>(x_1292.x, x_1292.y)) + vec2<f32>(x_1295.x, x_1295.y));
        let x_1298 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1297.x, x_1297.y, x_1298.z, x_1298.w);
        let x_1301 : vec4<f32> = u_xlat6;
        let x_1303 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1301.x, x_1301.x, x_1301.x, x_1301.x) * x_1303);
        let x_1306 : vec4<f32> = u_xlat6;
        let x_1308 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1306.y, x_1306.y, x_1306.y, x_1306.y) * x_1308);
        let x_1311 : vec4<f32> = u_xlat6;
        let x_1313 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1311.z, x_1311.z, x_1311.z, x_1311.z) * x_1313);
        let x_1315 : vec4<f32> = u_xlat6;
        let x_1317 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1315.w, x_1315.w, x_1315.w, x_1315.w) * x_1317);
        let x_1320 : vec4<f32> = u_xlat11;
        let x_1321 : vec2<f32> = vec2<f32>(x_1320.x, x_1320.y);
        let x_1323 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1321.x, x_1321.y, x_1323);
        let x_1330 : vec3<f32> = txVec13;
        let x_1332 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1330.xy, x_1330.z);
        u_xlat59 = x_1332;
        let x_1334 : vec4<f32> = u_xlat11;
        let x_1335 : vec2<f32> = vec2<f32>(x_1334.z, x_1334.w);
        let x_1337 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1335.x, x_1335.y, x_1337);
        let x_1344 : vec3<f32> = txVec14;
        let x_1346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1344.xy, x_1344.z);
        u_xlat60 = x_1346;
        let x_1347 : f32 = u_xlat60;
        let x_1349 : f32 = u_xlat16.y;
        u_xlat60 = (x_1347 * x_1349);
        let x_1352 : f32 = u_xlat16.x;
        let x_1353 : f32 = u_xlat59;
        let x_1355 : f32 = u_xlat60;
        u_xlat59 = ((x_1352 * x_1353) + x_1355);
        let x_1358 : vec2<f32> = u_xlat43;
        let x_1360 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1358.x, x_1358.y, x_1360);
        let x_1367 : vec3<f32> = txVec15;
        let x_1369 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1367.xy, x_1367.z);
        u_xlat60 = x_1369;
        let x_1371 : f32 = u_xlat16.z;
        let x_1372 : f32 = u_xlat60;
        let x_1374 : f32 = u_xlat59;
        u_xlat59 = ((x_1371 * x_1372) + x_1374);
        let x_1377 : vec4<f32> = u_xlat14;
        let x_1378 : vec2<f32> = vec2<f32>(x_1377.x, x_1377.y);
        let x_1380 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1378.x, x_1378.y, x_1380);
        let x_1387 : vec3<f32> = txVec16;
        let x_1389 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1387.xy, x_1387.z);
        u_xlat60 = x_1389;
        let x_1391 : f32 = u_xlat16.w;
        let x_1392 : f32 = u_xlat60;
        let x_1394 : f32 = u_xlat59;
        u_xlat59 = ((x_1391 * x_1392) + x_1394);
        let x_1397 : vec4<f32> = u_xlat12;
        let x_1398 : vec2<f32> = vec2<f32>(x_1397.x, x_1397.y);
        let x_1400 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1398.x, x_1398.y, x_1400);
        let x_1407 : vec3<f32> = txVec17;
        let x_1409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1407.xy, x_1407.z);
        u_xlat60 = x_1409;
        let x_1411 : f32 = u_xlat17.x;
        let x_1412 : f32 = u_xlat60;
        let x_1414 : f32 = u_xlat59;
        u_xlat59 = ((x_1411 * x_1412) + x_1414);
        let x_1417 : vec4<f32> = u_xlat12;
        let x_1418 : vec2<f32> = vec2<f32>(x_1417.z, x_1417.w);
        let x_1420 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1418.x, x_1418.y, x_1420);
        let x_1427 : vec3<f32> = txVec18;
        let x_1429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1427.xy, x_1427.z);
        u_xlat60 = x_1429;
        let x_1431 : f32 = u_xlat17.y;
        let x_1432 : f32 = u_xlat60;
        let x_1434 : f32 = u_xlat59;
        u_xlat59 = ((x_1431 * x_1432) + x_1434);
        let x_1437 : vec4<f32> = u_xlat13;
        let x_1438 : vec2<f32> = vec2<f32>(x_1437.x, x_1437.y);
        let x_1440 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1438.x, x_1438.y, x_1440);
        let x_1447 : vec3<f32> = txVec19;
        let x_1449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1447.xy, x_1447.z);
        u_xlat60 = x_1449;
        let x_1451 : f32 = u_xlat17.z;
        let x_1452 : f32 = u_xlat60;
        let x_1454 : f32 = u_xlat59;
        u_xlat59 = ((x_1451 * x_1452) + x_1454);
        let x_1457 : vec4<f32> = u_xlat14;
        let x_1458 : vec2<f32> = vec2<f32>(x_1457.z, x_1457.w);
        let x_1460 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1458.x, x_1458.y, x_1460);
        let x_1467 : vec3<f32> = txVec20;
        let x_1469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1467.xy, x_1467.z);
        u_xlat60 = x_1469;
        let x_1471 : f32 = u_xlat17.w;
        let x_1472 : f32 = u_xlat60;
        let x_1474 : f32 = u_xlat59;
        u_xlat59 = ((x_1471 * x_1472) + x_1474);
        let x_1477 : vec4<f32> = u_xlat15;
        let x_1478 : vec2<f32> = vec2<f32>(x_1477.x, x_1477.y);
        let x_1480 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1478.x, x_1478.y, x_1480);
        let x_1487 : vec3<f32> = txVec21;
        let x_1489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1487.xy, x_1487.z);
        u_xlat60 = x_1489;
        let x_1491 : f32 = u_xlat18.x;
        let x_1492 : f32 = u_xlat60;
        let x_1494 : f32 = u_xlat59;
        u_xlat59 = ((x_1491 * x_1492) + x_1494);
        let x_1497 : vec4<f32> = u_xlat15;
        let x_1498 : vec2<f32> = vec2<f32>(x_1497.z, x_1497.w);
        let x_1500 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1498.x, x_1498.y, x_1500);
        let x_1507 : vec3<f32> = txVec22;
        let x_1509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1507.xy, x_1507.z);
        u_xlat60 = x_1509;
        let x_1511 : f32 = u_xlat18.y;
        let x_1512 : f32 = u_xlat60;
        let x_1514 : f32 = u_xlat59;
        u_xlat59 = ((x_1511 * x_1512) + x_1514);
        let x_1517 : vec2<f32> = u_xlat26;
        let x_1519 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1517.x, x_1517.y, x_1519);
        let x_1526 : vec3<f32> = txVec23;
        let x_1528 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1526.xy, x_1526.z);
        u_xlat60 = x_1528;
        let x_1530 : f32 = u_xlat18.z;
        let x_1531 : f32 = u_xlat60;
        let x_1533 : f32 = u_xlat59;
        u_xlat59 = ((x_1530 * x_1531) + x_1533);
        let x_1536 : vec2<f32> = u_xlat51;
        let x_1538 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1536.x, x_1536.y, x_1538);
        let x_1545 : vec3<f32> = txVec24;
        let x_1547 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1545.xy, x_1545.z);
        u_xlat60 = x_1547;
        let x_1549 : f32 = u_xlat18.w;
        let x_1550 : f32 = u_xlat60;
        let x_1552 : f32 = u_xlat59;
        u_xlat59 = ((x_1549 * x_1550) + x_1552);
        let x_1555 : vec4<f32> = u_xlat10;
        let x_1556 : vec2<f32> = vec2<f32>(x_1555.x, x_1555.y);
        let x_1558 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1556.x, x_1556.y, x_1558);
        let x_1565 : vec3<f32> = txVec25;
        let x_1567 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1565.xy, x_1565.z);
        u_xlat60 = x_1567;
        let x_1569 : f32 = u_xlat6.x;
        let x_1570 : f32 = u_xlat60;
        let x_1572 : f32 = u_xlat59;
        u_xlat59 = ((x_1569 * x_1570) + x_1572);
        let x_1575 : vec4<f32> = u_xlat10;
        let x_1576 : vec2<f32> = vec2<f32>(x_1575.z, x_1575.w);
        let x_1578 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1576.x, x_1576.y, x_1578);
        let x_1585 : vec3<f32> = txVec26;
        let x_1587 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1585.xy, x_1585.z);
        u_xlat60 = x_1587;
        let x_1589 : f32 = u_xlat6.y;
        let x_1590 : f32 = u_xlat60;
        let x_1592 : f32 = u_xlat59;
        u_xlat59 = ((x_1589 * x_1590) + x_1592);
        let x_1595 : vec2<f32> = u_xlat46;
        let x_1597 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1595.x, x_1595.y, x_1597);
        let x_1604 : vec3<f32> = txVec27;
        let x_1606 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1604.xy, x_1604.z);
        u_xlat60 = x_1606;
        let x_1608 : f32 = u_xlat6.z;
        let x_1609 : f32 = u_xlat60;
        let x_1611 : f32 = u_xlat59;
        u_xlat59 = ((x_1608 * x_1609) + x_1611);
        let x_1614 : vec4<f32> = u_xlat5;
        let x_1615 : vec2<f32> = vec2<f32>(x_1614.x, x_1614.y);
        let x_1617 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1615.x, x_1615.y, x_1617);
        let x_1624 : vec3<f32> = txVec28;
        let x_1626 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1624.xy, x_1624.z);
        u_xlat60 = x_1626;
        let x_1628 : f32 = u_xlat6.w;
        let x_1629 : f32 = u_xlat60;
        let x_1631 : f32 = u_xlat59;
        u_xlat58 = ((x_1628 * x_1629) + x_1631);
      }
    }
  } else {
    let x_1635 : vec4<f32> = u_xlat3;
    let x_1636 : vec2<f32> = vec2<f32>(x_1635.x, x_1635.y);
    let x_1638 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1636.x, x_1636.y, x_1638);
    let x_1645 : vec3<f32> = txVec29;
    let x_1647 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1645.xy, x_1645.z);
    u_xlat58 = x_1647;
  }
  let x_1649 : f32 = x_170.x_MainLightShadowParams.x;
  u_xlat59 = (-(x_1649) + 1.0f);
  let x_1652 : f32 = u_xlat58;
  let x_1654 : f32 = x_170.x_MainLightShadowParams.x;
  let x_1656 : f32 = u_xlat59;
  u_xlat58 = ((x_1652 * x_1654) + x_1656);
  let x_1659 : f32 = u_xlat3.z;
  u_xlatb59 = (0.0f >= x_1659);
  let x_1662 : f32 = u_xlat3.z;
  u_xlatb3.x = (x_1662 >= 1.0f);
  let x_1665 : bool = u_xlatb59;
  let x_1667 : bool = u_xlatb3.x;
  u_xlatb59 = (x_1665 | x_1667);
  let x_1669 : bool = u_xlatb59;
  let x_1670 : f32 = u_xlat58;
  u_xlat58 = select(x_1670, 1.0f, x_1669);
  let x_1672 : vec4<f32> = vs_TEXCOORD2;
  let x_1676 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1678 : vec3<f32> = (vec3<f32>(x_1672.x, x_1672.y, x_1672.z) + -(x_1676));
  let x_1679 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1678.x, x_1678.y, x_1678.z, x_1679.w);
  let x_1681 : vec4<f32> = u_xlat3;
  let x_1683 : vec4<f32> = u_xlat3;
  u_xlat59 = dot(vec3<f32>(x_1681.x, x_1681.y, x_1681.z), vec3<f32>(x_1683.x, x_1683.y, x_1683.z));
  let x_1686 : f32 = u_xlat59;
  let x_1688 : f32 = x_170.x_MainLightShadowParams.z;
  let x_1691 : f32 = x_170.x_MainLightShadowParams.w;
  u_xlat59 = ((x_1686 * x_1688) + x_1691);
  let x_1693 : f32 = u_xlat59;
  u_xlat59 = clamp(x_1693, 0.0f, 1.0f);
  let x_1695 : f32 = u_xlat58;
  u_xlat3.x = (-(x_1695) + 1.0f);
  let x_1699 : f32 = u_xlat59;
  let x_1701 : f32 = u_xlat3.x;
  let x_1703 : f32 = u_xlat58;
  u_xlat58 = ((x_1699 * x_1701) + x_1703);
  let x_1711 : f32 = x_1709.x_MainLightCookieTextureFormat;
  u_xlatb59 = !((x_1711 == -1.0f));
  let x_1713 : bool = u_xlatb59;
  if (x_1713) {
    let x_1716 : vec4<f32> = vs_TEXCOORD2;
    let x_1719 : vec4<f32> = x_1709.x_MainLightWorldToLight[1i];
    let x_1721 : vec2<f32> = (vec2<f32>(x_1716.y, x_1716.y) * vec2<f32>(x_1719.x, x_1719.y));
    let x_1722 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1721.x, x_1721.y, x_1722.z, x_1722.w);
    let x_1725 : vec4<f32> = x_1709.x_MainLightWorldToLight[0i];
    let x_1727 : vec4<f32> = vs_TEXCOORD2;
    let x_1730 : vec4<f32> = u_xlat3;
    let x_1732 : vec2<f32> = ((vec2<f32>(x_1725.x, x_1725.y) * vec2<f32>(x_1727.x, x_1727.x)) + vec2<f32>(x_1730.x, x_1730.y));
    let x_1733 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1732.x, x_1732.y, x_1733.z, x_1733.w);
    let x_1736 : vec4<f32> = x_1709.x_MainLightWorldToLight[2i];
    let x_1738 : vec4<f32> = vs_TEXCOORD2;
    let x_1741 : vec4<f32> = u_xlat3;
    let x_1743 : vec2<f32> = ((vec2<f32>(x_1736.x, x_1736.y) * vec2<f32>(x_1738.z, x_1738.z)) + vec2<f32>(x_1741.x, x_1741.y));
    let x_1744 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1743.x, x_1743.y, x_1744.z, x_1744.w);
    let x_1746 : vec4<f32> = u_xlat3;
    let x_1749 : vec4<f32> = x_1709.x_MainLightWorldToLight[3i];
    let x_1751 : vec2<f32> = (vec2<f32>(x_1746.x, x_1746.y) + vec2<f32>(x_1749.x, x_1749.y));
    let x_1752 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1751.x, x_1751.y, x_1752.z, x_1752.w);
    let x_1754 : vec4<f32> = u_xlat3;
    let x_1757 : vec2<f32> = ((vec2<f32>(x_1754.x, x_1754.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1758 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1757.x, x_1757.y, x_1758.z, x_1758.w);
    let x_1765 : vec4<f32> = u_xlat3;
    let x_1768 : f32 = x_43.x_GlobalMipBias.x;
    let x_1769 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1765.x, x_1765.y), x_1768);
    u_xlat3 = x_1769;
    let x_1774 : f32 = x_1709.x_MainLightCookieTextureFormat;
    let x_1776 : f32 = x_1709.x_MainLightCookieTextureFormat;
    let x_1778 : f32 = x_1709.x_MainLightCookieTextureFormat;
    let x_1780 : f32 = x_1709.x_MainLightCookieTextureFormat;
    let x_1781 : vec4<f32> = vec4<f32>(x_1774, x_1776, x_1778, x_1780);
    let x_1788 : vec4<bool> = (vec4<f32>(x_1781.x, x_1781.y, x_1781.z, x_1781.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1788.x, x_1788.y);
    let x_1791 : bool = u_xlatb5.y;
    if (x_1791) {
      let x_1796 : f32 = u_xlat3.w;
      x_1792 = x_1796;
    } else {
      let x_1799 : f32 = u_xlat3.x;
      x_1792 = x_1799;
    }
    let x_1800 : f32 = x_1792;
    u_xlat59 = x_1800;
    let x_1802 : bool = u_xlatb5.x;
    if (x_1802) {
      let x_1806 : vec4<f32> = u_xlat3;
      x_1803 = vec3<f32>(x_1806.x, x_1806.y, x_1806.z);
    } else {
      let x_1809 : f32 = u_xlat59;
      x_1803 = vec3<f32>(x_1809, x_1809, x_1809);
    }
    let x_1811 : vec3<f32> = x_1803;
    let x_1812 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1811.x, x_1811.y, x_1811.z, x_1812.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_1818 : vec4<f32> = u_xlat3;
  let x_1821 : vec4<f32> = x_43.x_MainLightColor;
  let x_1823 : vec3<f32> = (vec3<f32>(x_1818.x, x_1818.y, x_1818.z) * vec3<f32>(x_1821.x, x_1821.y, x_1821.z));
  let x_1824 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1823.x, x_1823.y, x_1823.z, x_1824.w);
  let x_1826 : f32 = u_xlat57;
  let x_1828 : vec4<f32> = u_xlat3;
  let x_1830 : vec3<f32> = (vec3<f32>(x_1826, x_1826, x_1826) * vec3<f32>(x_1828.x, x_1828.y, x_1828.z));
  let x_1831 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1830.x, x_1830.y, x_1830.z, x_1831.w);
  let x_1833 : vec4<f32> = u_xlat0;
  let x_1835 : vec4<f32> = u_xlat4;
  let x_1837 : vec3<f32> = (vec3<f32>(x_1833.x, x_1833.x, x_1833.x) * vec3<f32>(x_1835.x, x_1835.y, x_1835.z));
  let x_1838 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1837.x, x_1837.y, x_1837.z, x_1838.w);
  let x_1840 : f32 = u_xlat58;
  let x_1846 : f32 = x_1844.unity_LightData.z;
  u_xlat0.x = (x_1840 * x_1846);
  let x_1849 : vec4<f32> = u_xlat0;
  let x_1851 : vec4<f32> = u_xlat3;
  let x_1853 : vec3<f32> = (vec3<f32>(x_1849.x, x_1849.x, x_1849.x) * vec3<f32>(x_1851.x, x_1851.y, x_1851.z));
  let x_1854 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1853.x, x_1853.y, x_1853.z, x_1854.w);
  let x_1856 : vec3<f32> = u_xlat2;
  let x_1858 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat0.x = dot(x_1856, vec3<f32>(x_1858.x, x_1858.y, x_1858.z));
  let x_1863 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1863, 0.0f, 1.0f);
  let x_1866 : vec4<f32> = u_xlat0;
  let x_1868 : vec4<f32> = u_xlat3;
  let x_1870 : vec3<f32> = (vec3<f32>(x_1866.x, x_1866.x, x_1866.x) * vec3<f32>(x_1868.x, x_1868.y, x_1868.z));
  let x_1871 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1870.x, x_1870.y, x_1870.z, x_1871.w);
  let x_1873 : vec4<f32> = u_xlat1;
  let x_1875 : vec4<f32> = u_xlat3;
  let x_1877 : vec3<f32> = (vec3<f32>(x_1873.x, x_1873.y, x_1873.z) * vec3<f32>(x_1875.x, x_1875.y, x_1875.z));
  let x_1878 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1877.x, x_1877.y, x_1877.z, x_1878.w);
  let x_1881 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1883 : f32 = x_1844.unity_LightData.y;
  u_xlat0.x = min(x_1881, x_1883);
  let x_1887 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1887));
  let x_1891 : f32 = x_1709.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1893 : f32 = x_1709.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1895 : f32 = x_1709.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1897 : f32 = x_1709.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1898 : vec4<f32> = vec4<f32>(x_1891, x_1893, x_1895, x_1897);
  let x_1904 : vec4<bool> = (vec4<f32>(x_1898.x, x_1898.y, x_1898.z, x_1898.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1904.x, x_1904.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1915 : u32 = u_xlatu_loop_1;
    let x_1916 : u32 = u_xlatu0;
    if ((x_1915 < x_1916)) {
    } else {
      break;
    }
    let x_1919 : u32 = u_xlatu_loop_1;
    u_xlatu59 = (x_1919 >> 2u);
    let x_1922 : u32 = u_xlatu_loop_1;
    u_xlati60 = bitcast<i32>((x_1922 & 3u));
    let x_1925 : u32 = u_xlatu59;
    let x_1928 : vec4<f32> = x_1844.unity_LightIndices[bitcast<i32>(x_1925)];
    let x_1938 : i32 = u_xlati60;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1943 : vec4<u32> = indexable[x_1938];
    u_xlat59 = dot(x_1928, bitcast<vec4<f32>>(x_1943));
    let x_1946 : f32 = u_xlat59;
    u_xlatu59 = bitcast<u32>(i32(x_1946));
    let x_1949 : vec4<f32> = vs_TEXCOORD2;
    let x_1962 : u32 = u_xlatu59;
    let x_1965 : vec4<f32> = x_1961.x_AdditionalLightsPosition[bitcast<i32>(x_1962)];
    let x_1968 : u32 = u_xlatu59;
    let x_1971 : vec4<f32> = x_1961.x_AdditionalLightsPosition[bitcast<i32>(x_1968)];
    let x_1973 : vec3<f32> = ((-(vec3<f32>(x_1949.x, x_1949.y, x_1949.z)) * vec3<f32>(x_1965.w, x_1965.w, x_1965.w)) + vec3<f32>(x_1971.x, x_1971.y, x_1971.z));
    let x_1974 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1973.x, x_1973.y, x_1973.z, x_1974.w);
    let x_1976 : vec4<f32> = u_xlat7;
    let x_1978 : vec4<f32> = u_xlat7;
    u_xlat60 = dot(vec3<f32>(x_1976.x, x_1976.y, x_1976.z), vec3<f32>(x_1978.x, x_1978.y, x_1978.z));
    let x_1981 : f32 = u_xlat60;
    u_xlat60 = max(x_1981, 6.10351562e-05f);
    let x_1984 : f32 = u_xlat60;
    u_xlat61 = inverseSqrt(x_1984);
    let x_1986 : f32 = u_xlat61;
    let x_1988 : vec4<f32> = u_xlat7;
    let x_1990 : vec3<f32> = (vec3<f32>(x_1986, x_1986, x_1986) * vec3<f32>(x_1988.x, x_1988.y, x_1988.z));
    let x_1991 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1990.x, x_1990.y, x_1990.z, x_1991.w);
    let x_1993 : f32 = u_xlat60;
    u_xlat61 = (1.0f / x_1993);
    let x_1995 : f32 = u_xlat60;
    let x_1996 : u32 = u_xlatu59;
    let x_1999 : f32 = x_1961.x_AdditionalLightsAttenuation[bitcast<i32>(x_1996)].x;
    u_xlat60 = (x_1995 * x_1999);
    let x_2001 : f32 = u_xlat60;
    let x_2003 : f32 = u_xlat60;
    u_xlat60 = ((-(x_2001) * x_2003) + 1.0f);
    let x_2006 : f32 = u_xlat60;
    u_xlat60 = max(x_2006, 0.0f);
    let x_2008 : f32 = u_xlat60;
    let x_2009 : f32 = u_xlat60;
    u_xlat60 = (x_2008 * x_2009);
    let x_2011 : f32 = u_xlat60;
    let x_2012 : f32 = u_xlat61;
    u_xlat60 = (x_2011 * x_2012);
    let x_2014 : u32 = u_xlatu59;
    let x_2017 : vec4<f32> = x_1961.x_AdditionalLightsSpotDir[bitcast<i32>(x_2014)];
    let x_2019 : vec4<f32> = u_xlat7;
    u_xlat61 = dot(vec3<f32>(x_2017.x, x_2017.y, x_2017.z), vec3<f32>(x_2019.x, x_2019.y, x_2019.z));
    let x_2022 : f32 = u_xlat61;
    let x_2023 : u32 = u_xlatu59;
    let x_2026 : f32 = x_1961.x_AdditionalLightsAttenuation[bitcast<i32>(x_2023)].z;
    let x_2028 : u32 = u_xlatu59;
    let x_2031 : f32 = x_1961.x_AdditionalLightsAttenuation[bitcast<i32>(x_2028)].w;
    u_xlat61 = ((x_2022 * x_2026) + x_2031);
    let x_2033 : f32 = u_xlat61;
    u_xlat61 = clamp(x_2033, 0.0f, 1.0f);
    let x_2035 : f32 = u_xlat61;
    let x_2036 : f32 = u_xlat61;
    u_xlat61 = (x_2035 * x_2036);
    let x_2038 : f32 = u_xlat60;
    let x_2039 : f32 = u_xlat61;
    u_xlat60 = (x_2038 * x_2039);
    let x_2042 : u32 = u_xlatu59;
    u_xlatu61 = (x_2042 >> 5u);
    let x_2045 : u32 = u_xlatu59;
    u_xlati43 = (1i << bitcast<u32>((bitcast<i32>(x_2045) & 31i)));
    let x_2051 : i32 = u_xlati43;
    let x_2053 : u32 = u_xlatu61;
    let x_2056 : f32 = x_1709.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2053)].el;
    u_xlati61 = bitcast<i32>((bitcast<u32>(x_2051) & bitcast<u32>(x_2056)));
    let x_2060 : i32 = u_xlati61;
    if ((x_2060 != 0i)) {
      let x_2070 : u32 = u_xlatu59;
      let x_2073 : f32 = x_2069.x_AdditionalLightsLightTypes[bitcast<i32>(x_2070)].el;
      u_xlati61 = i32(x_2073);
      let x_2075 : i32 = u_xlati61;
      u_xlati43 = select(1i, 0i, (x_2075 != 0i));
      let x_2079 : u32 = u_xlatu59;
      u_xlati62 = (bitcast<i32>(x_2079) << bitcast<u32>(2i));
      let x_2082 : i32 = u_xlati43;
      if ((x_2082 != 0i)) {
        let x_2086 : vec4<f32> = vs_TEXCOORD2;
        let x_2088 : i32 = u_xlati62;
        let x_2091 : i32 = u_xlati62;
        let x_2095 : vec4<f32> = x_2069.x_AdditionalLightsWorldToLights[((x_2088 + 1i) / 4i)][((x_2091 + 1i) % 4i)];
        let x_2097 : vec3<f32> = (vec3<f32>(x_2086.y, x_2086.y, x_2086.y) * vec3<f32>(x_2095.x, x_2095.y, x_2095.w));
        let x_2098 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2097.x, x_2097.y, x_2097.z, x_2098.w);
        let x_2100 : i32 = u_xlati62;
        let x_2102 : i32 = u_xlati62;
        let x_2105 : vec4<f32> = x_2069.x_AdditionalLightsWorldToLights[(x_2100 / 4i)][(x_2102 % 4i)];
        let x_2107 : vec4<f32> = vs_TEXCOORD2;
        let x_2110 : vec4<f32> = u_xlat8;
        let x_2112 : vec3<f32> = ((vec3<f32>(x_2105.x, x_2105.y, x_2105.w) * vec3<f32>(x_2107.x, x_2107.x, x_2107.x)) + vec3<f32>(x_2110.x, x_2110.y, x_2110.z));
        let x_2113 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2112.x, x_2112.y, x_2112.z, x_2113.w);
        let x_2115 : i32 = u_xlati62;
        let x_2118 : i32 = u_xlati62;
        let x_2122 : vec4<f32> = x_2069.x_AdditionalLightsWorldToLights[((x_2115 + 2i) / 4i)][((x_2118 + 2i) % 4i)];
        let x_2124 : vec4<f32> = vs_TEXCOORD2;
        let x_2127 : vec4<f32> = u_xlat8;
        let x_2129 : vec3<f32> = ((vec3<f32>(x_2122.x, x_2122.y, x_2122.w) * vec3<f32>(x_2124.z, x_2124.z, x_2124.z)) + vec3<f32>(x_2127.x, x_2127.y, x_2127.z));
        let x_2130 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2129.x, x_2129.y, x_2129.z, x_2130.w);
        let x_2132 : vec4<f32> = u_xlat8;
        let x_2134 : i32 = u_xlati62;
        let x_2137 : i32 = u_xlati62;
        let x_2141 : vec4<f32> = x_2069.x_AdditionalLightsWorldToLights[((x_2134 + 3i) / 4i)][((x_2137 + 3i) % 4i)];
        let x_2143 : vec3<f32> = (vec3<f32>(x_2132.x, x_2132.y, x_2132.z) + vec3<f32>(x_2141.x, x_2141.y, x_2141.w));
        let x_2144 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2143.x, x_2143.y, x_2143.z, x_2144.w);
        let x_2146 : vec4<f32> = u_xlat8;
        let x_2148 : vec4<f32> = u_xlat8;
        let x_2150 : vec2<f32> = (vec2<f32>(x_2146.x, x_2146.y) / vec2<f32>(x_2148.z, x_2148.z));
        let x_2151 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2150.x, x_2150.y, x_2151.z, x_2151.w);
        let x_2153 : vec4<f32> = u_xlat8;
        let x_2156 : vec2<f32> = ((vec2<f32>(x_2153.x, x_2153.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2157 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2156.x, x_2156.y, x_2157.z, x_2157.w);
        let x_2159 : vec4<f32> = u_xlat8;
        let x_2163 : vec2<f32> = clamp(vec2<f32>(x_2159.x, x_2159.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2164 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2163.x, x_2163.y, x_2164.z, x_2164.w);
        let x_2166 : u32 = u_xlatu59;
        let x_2169 : vec4<f32> = x_2069.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2166)];
        let x_2171 : vec4<f32> = u_xlat8;
        let x_2174 : u32 = u_xlatu59;
        let x_2177 : vec4<f32> = x_2069.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2174)];
        let x_2179 : vec2<f32> = ((vec2<f32>(x_2169.x, x_2169.y) * vec2<f32>(x_2171.x, x_2171.y)) + vec2<f32>(x_2177.z, x_2177.w));
        let x_2180 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2179.x, x_2179.y, x_2180.z, x_2180.w);
      } else {
        let x_2184 : i32 = u_xlati61;
        u_xlatb61 = (x_2184 == 1i);
        let x_2186 : bool = u_xlatb61;
        u_xlati61 = select(0i, 1i, x_2186);
        let x_2188 : i32 = u_xlati61;
        if ((x_2188 != 0i)) {
          let x_2192 : vec4<f32> = vs_TEXCOORD2;
          let x_2194 : i32 = u_xlati62;
          let x_2197 : i32 = u_xlati62;
          let x_2201 : vec4<f32> = x_2069.x_AdditionalLightsWorldToLights[((x_2194 + 1i) / 4i)][((x_2197 + 1i) % 4i)];
          u_xlat46 = (vec2<f32>(x_2192.y, x_2192.y) * vec2<f32>(x_2201.x, x_2201.y));
          let x_2204 : i32 = u_xlati62;
          let x_2206 : i32 = u_xlati62;
          let x_2209 : vec4<f32> = x_2069.x_AdditionalLightsWorldToLights[(x_2204 / 4i)][(x_2206 % 4i)];
          let x_2211 : vec4<f32> = vs_TEXCOORD2;
          let x_2214 : vec2<f32> = u_xlat46;
          u_xlat46 = ((vec2<f32>(x_2209.x, x_2209.y) * vec2<f32>(x_2211.x, x_2211.x)) + x_2214);
          let x_2216 : i32 = u_xlati62;
          let x_2219 : i32 = u_xlati62;
          let x_2223 : vec4<f32> = x_2069.x_AdditionalLightsWorldToLights[((x_2216 + 2i) / 4i)][((x_2219 + 2i) % 4i)];
          let x_2225 : vec4<f32> = vs_TEXCOORD2;
          let x_2228 : vec2<f32> = u_xlat46;
          u_xlat46 = ((vec2<f32>(x_2223.x, x_2223.y) * vec2<f32>(x_2225.z, x_2225.z)) + x_2228);
          let x_2230 : vec2<f32> = u_xlat46;
          let x_2231 : i32 = u_xlati62;
          let x_2234 : i32 = u_xlati62;
          let x_2238 : vec4<f32> = x_2069.x_AdditionalLightsWorldToLights[((x_2231 + 3i) / 4i)][((x_2234 + 3i) % 4i)];
          u_xlat46 = (x_2230 + vec2<f32>(x_2238.x, x_2238.y));
          let x_2241 : vec2<f32> = u_xlat46;
          u_xlat46 = ((x_2241 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2244 : vec2<f32> = u_xlat46;
          u_xlat46 = fract(x_2244);
          let x_2246 : u32 = u_xlatu59;
          let x_2249 : vec4<f32> = x_2069.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2246)];
          let x_2251 : vec2<f32> = u_xlat46;
          let x_2253 : u32 = u_xlatu59;
          let x_2256 : vec4<f32> = x_2069.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2253)];
          let x_2258 : vec2<f32> = ((vec2<f32>(x_2249.x, x_2249.y) * x_2251) + vec2<f32>(x_2256.z, x_2256.w));
          let x_2259 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2258.x, x_2258.y, x_2259.z, x_2259.w);
        } else {
          let x_2262 : vec4<f32> = vs_TEXCOORD2;
          let x_2264 : i32 = u_xlati62;
          let x_2267 : i32 = u_xlati62;
          let x_2271 : vec4<f32> = x_2069.x_AdditionalLightsWorldToLights[((x_2264 + 1i) / 4i)][((x_2267 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_2262.y, x_2262.y, x_2262.y, x_2262.y) * x_2271);
          let x_2273 : i32 = u_xlati62;
          let x_2275 : i32 = u_xlati62;
          let x_2278 : vec4<f32> = x_2069.x_AdditionalLightsWorldToLights[(x_2273 / 4i)][(x_2275 % 4i)];
          let x_2279 : vec4<f32> = vs_TEXCOORD2;
          let x_2282 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2278 * vec4<f32>(x_2279.x, x_2279.x, x_2279.x, x_2279.x)) + x_2282);
          let x_2284 : i32 = u_xlati62;
          let x_2287 : i32 = u_xlati62;
          let x_2291 : vec4<f32> = x_2069.x_AdditionalLightsWorldToLights[((x_2284 + 2i) / 4i)][((x_2287 + 2i) % 4i)];
          let x_2292 : vec4<f32> = vs_TEXCOORD2;
          let x_2295 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2291 * vec4<f32>(x_2292.z, x_2292.z, x_2292.z, x_2292.z)) + x_2295);
          let x_2297 : vec4<f32> = u_xlat9;
          let x_2298 : i32 = u_xlati62;
          let x_2301 : i32 = u_xlati62;
          let x_2305 : vec4<f32> = x_2069.x_AdditionalLightsWorldToLights[((x_2298 + 3i) / 4i)][((x_2301 + 3i) % 4i)];
          u_xlat9 = (x_2297 + x_2305);
          let x_2307 : vec4<f32> = u_xlat9;
          let x_2309 : vec4<f32> = u_xlat9;
          let x_2311 : vec3<f32> = (vec3<f32>(x_2307.x, x_2307.y, x_2307.z) / vec3<f32>(x_2309.w, x_2309.w, x_2309.w));
          let x_2312 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2311.x, x_2311.y, x_2311.z, x_2312.w);
          let x_2314 : vec4<f32> = u_xlat9;
          let x_2316 : vec4<f32> = u_xlat9;
          u_xlat61 = dot(vec3<f32>(x_2314.x, x_2314.y, x_2314.z), vec3<f32>(x_2316.x, x_2316.y, x_2316.z));
          let x_2319 : f32 = u_xlat61;
          u_xlat61 = inverseSqrt(x_2319);
          let x_2321 : f32 = u_xlat61;
          let x_2323 : vec4<f32> = u_xlat9;
          let x_2325 : vec3<f32> = (vec3<f32>(x_2321, x_2321, x_2321) * vec3<f32>(x_2323.x, x_2323.y, x_2323.z));
          let x_2326 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2325.x, x_2325.y, x_2325.z, x_2326.w);
          let x_2328 : vec4<f32> = u_xlat9;
          u_xlat61 = dot(abs(vec3<f32>(x_2328.x, x_2328.y, x_2328.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2333 : f32 = u_xlat61;
          u_xlat61 = max(x_2333, 0.000001f);
          let x_2336 : f32 = u_xlat61;
          u_xlat61 = (1.0f / x_2336);
          let x_2338 : f32 = u_xlat61;
          let x_2340 : vec4<f32> = u_xlat9;
          let x_2342 : vec3<f32> = (vec3<f32>(x_2338, x_2338, x_2338) * vec3<f32>(x_2340.z, x_2340.x, x_2340.y));
          let x_2343 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2342.x, x_2342.y, x_2342.z, x_2343.w);
          let x_2346 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_2346);
          let x_2350 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_2350, 0.0f, 1.0f);
          let x_2354 : vec4<f32> = u_xlat10;
          let x_2357 : vec4<bool> = (vec4<f32>(x_2354.y, x_2354.z, x_2354.y, x_2354.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb43 = vec2<bool>(x_2357.x, x_2357.y);
          let x_2360 : bool = u_xlatb43.x;
          if (x_2360) {
            let x_2365 : f32 = u_xlat10.x;
            x_2361 = x_2365;
          } else {
            let x_2368 : f32 = u_xlat10.x;
            x_2361 = -(x_2368);
          }
          let x_2370 : f32 = x_2361;
          u_xlat43.x = x_2370;
          let x_2373 : bool = u_xlatb43.y;
          if (x_2373) {
            let x_2378 : f32 = u_xlat10.x;
            x_2374 = x_2378;
          } else {
            let x_2381 : f32 = u_xlat10.x;
            x_2374 = -(x_2381);
          }
          let x_2383 : f32 = x_2374;
          u_xlat43.y = x_2383;
          let x_2385 : vec4<f32> = u_xlat9;
          let x_2387 : f32 = u_xlat61;
          let x_2390 : vec2<f32> = u_xlat43;
          u_xlat43 = ((vec2<f32>(x_2385.x, x_2385.y) * vec2<f32>(x_2387, x_2387)) + x_2390);
          let x_2392 : vec2<f32> = u_xlat43;
          u_xlat43 = ((x_2392 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2395 : vec2<f32> = u_xlat43;
          u_xlat43 = clamp(x_2395, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2399 : u32 = u_xlatu59;
          let x_2402 : vec4<f32> = x_2069.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2399)];
          let x_2404 : vec2<f32> = u_xlat43;
          let x_2406 : u32 = u_xlatu59;
          let x_2409 : vec4<f32> = x_2069.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2406)];
          let x_2411 : vec2<f32> = ((vec2<f32>(x_2402.x, x_2402.y) * x_2404) + vec2<f32>(x_2409.z, x_2409.w));
          let x_2412 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2411.x, x_2411.y, x_2412.z, x_2412.w);
        }
      }
      let x_2419 : vec4<f32> = u_xlat8;
      let x_2422 : f32 = x_43.x_GlobalMipBias.x;
      let x_2423 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2419.x, x_2419.y), x_2422);
      u_xlat8 = x_2423;
      let x_2425 : bool = u_xlatb5.y;
      if (x_2425) {
        let x_2430 : f32 = u_xlat8.w;
        x_2426 = x_2430;
      } else {
        let x_2433 : f32 = u_xlat8.x;
        x_2426 = x_2433;
      }
      let x_2434 : f32 = x_2426;
      u_xlat61 = x_2434;
      let x_2436 : bool = u_xlatb5.x;
      if (x_2436) {
        let x_2440 : vec4<f32> = u_xlat8;
        x_2437 = vec3<f32>(x_2440.x, x_2440.y, x_2440.z);
      } else {
        let x_2443 : f32 = u_xlat61;
        x_2437 = vec3<f32>(x_2443, x_2443, x_2443);
      }
      let x_2445 : vec3<f32> = x_2437;
      let x_2446 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2445.x, x_2445.y, x_2445.z, x_2446.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_2452 : vec4<f32> = u_xlat8;
    let x_2454 : u32 = u_xlatu59;
    let x_2457 : vec4<f32> = x_1961.x_AdditionalLightsColor[bitcast<i32>(x_2454)];
    let x_2459 : vec3<f32> = (vec3<f32>(x_2452.x, x_2452.y, x_2452.z) * vec3<f32>(x_2457.x, x_2457.y, x_2457.z));
    let x_2460 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2459.x, x_2459.y, x_2459.z, x_2460.w);
    let x_2462 : f32 = u_xlat57;
    let x_2464 : vec4<f32> = u_xlat8;
    let x_2466 : vec3<f32> = (vec3<f32>(x_2462, x_2462, x_2462) * vec3<f32>(x_2464.x, x_2464.y, x_2464.z));
    let x_2467 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2466.x, x_2466.y, x_2466.z, x_2467.w);
    let x_2469 : f32 = u_xlat60;
    let x_2471 : vec4<f32> = u_xlat8;
    let x_2473 : vec3<f32> = (vec3<f32>(x_2469, x_2469, x_2469) * vec3<f32>(x_2471.x, x_2471.y, x_2471.z));
    let x_2474 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2473.x, x_2473.y, x_2473.z, x_2474.w);
    let x_2476 : vec3<f32> = u_xlat2;
    let x_2477 : vec4<f32> = u_xlat7;
    u_xlat59 = dot(x_2476, vec3<f32>(x_2477.x, x_2477.y, x_2477.z));
    let x_2480 : f32 = u_xlat59;
    u_xlat59 = clamp(x_2480, 0.0f, 1.0f);
    let x_2482 : f32 = u_xlat59;
    let x_2484 : vec4<f32> = u_xlat8;
    let x_2486 : vec3<f32> = (vec3<f32>(x_2482, x_2482, x_2482) * vec3<f32>(x_2484.x, x_2484.y, x_2484.z));
    let x_2487 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2486.x, x_2486.y, x_2486.z, x_2487.w);
    let x_2489 : vec4<f32> = u_xlat7;
    let x_2491 : vec4<f32> = u_xlat1;
    let x_2494 : vec4<f32> = u_xlat6;
    let x_2496 : vec3<f32> = ((vec3<f32>(x_2489.x, x_2489.y, x_2489.z) * vec3<f32>(x_2491.x, x_2491.y, x_2491.z)) + vec3<f32>(x_2494.x, x_2494.y, x_2494.z));
    let x_2497 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2496.x, x_2496.y, x_2496.z, x_2497.w);

    continuing {
      let x_2499 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2499 + bitcast<u32>(1i));
    }
  }
  let x_2501 : vec4<f32> = u_xlat4;
  let x_2503 : vec4<f32> = u_xlat1;
  let x_2506 : vec4<f32> = u_xlat3;
  let x_2508 : vec3<f32> = ((vec3<f32>(x_2501.x, x_2501.y, x_2501.z) * vec3<f32>(x_2503.x, x_2503.y, x_2503.z)) + vec3<f32>(x_2506.x, x_2506.y, x_2506.z));
  let x_2509 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2508.x, x_2508.y, x_2508.z, x_2509.w);
  let x_2513 : vec4<f32> = u_xlat6;
  let x_2515 : vec4<f32> = u_xlat1;
  let x_2517 : vec3<f32> = (vec3<f32>(x_2513.x, x_2513.y, x_2513.z) + vec3<f32>(x_2515.x, x_2515.y, x_2515.z));
  let x_2518 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2517.x, x_2517.y, x_2517.z, x_2518.w);
  let x_2520 : bool = u_xlatb38;
  let x_2521 : f32 = u_xlat19;
  SV_Target0.w = select(1.0f, x_2521, x_2520);
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

