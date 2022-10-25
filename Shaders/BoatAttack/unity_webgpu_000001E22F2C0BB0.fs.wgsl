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

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_87 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_285 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1766 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_2011 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2120 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu2 : u32;
  var u_xlati2 : i32;
  var u_xlat20 : vec3<f32>;
  var u_xlat55 : f32;
  var u_xlat56 : f32;
  var u_xlatb57 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat57 : f32;
  var u_xlatb4 : vec2<bool>;
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
  var u_xlat22 : f32;
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
  var u_xlat60 : f32;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat58 : f32;
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
  var u_xlatb20 : vec2<bool>;
  var u_xlatb38 : bool;
  var x_1714 : f32;
  var u_xlat38 : f32;
  var x_1848 : f32;
  var x_1859 : vec3<f32>;
  var u_xlatu55 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu40 : u32;
  var u_xlati58 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat59 : f32;
  var u_xlatu59 : u32;
  var u_xlati60 : i32;
  var u_xlati59 : i32;
  var u_xlati7 : i32;
  var u_xlat25 : vec3<f32>;
  var u_xlatb59 : bool;
  var u_xlatb7 : vec4<bool>;
  var x_2422 : f32;
  var x_2435 : f32;
  var x_2497 : f32;
  var x_2508 : vec3<f32>;
  var u_xlat18 : vec3<f32>;
  var u_xlatb18 : bool;
  var x_2598 : f32;
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
  let x_81 : vec3<f32> = vs_TEXCOORD1;
  let x_89 : vec4<f32> = x_87.x_CascadeShadowSplitSpheres0;
  let x_92 : vec3<f32> = (x_81 + -(vec3<f32>(x_89.x, x_89.y, x_89.z)));
  let x_93 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_96 : vec3<f32> = vs_TEXCOORD1;
  let x_99 : vec4<f32> = x_87.x_CascadeShadowSplitSpheres1;
  let x_102 : vec3<f32> = (x_96 + -(vec3<f32>(x_99.x, x_99.y, x_99.z)));
  let x_103 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_102.x, x_102.y, x_102.z, x_103.w);
  let x_106 : vec3<f32> = vs_TEXCOORD1;
  let x_109 : vec4<f32> = x_87.x_CascadeShadowSplitSpheres2;
  let x_112 : vec3<f32> = (x_106 + -(vec3<f32>(x_109.x, x_109.y, x_109.z)));
  let x_113 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_112.x, x_112.y, x_112.z, x_113.w);
  let x_116 : vec3<f32> = vs_TEXCOORD1;
  let x_119 : vec4<f32> = x_87.x_CascadeShadowSplitSpheres3;
  let x_122 : vec3<f32> = (x_116 + -(vec3<f32>(x_119.x, x_119.y, x_119.z)));
  let x_123 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_125 : vec4<f32> = u_xlat2;
  let x_127 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_125.x, x_125.y, x_125.z), vec3<f32>(x_127.x, x_127.y, x_127.z));
  let x_131 : vec4<f32> = u_xlat3;
  let x_133 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_131.x, x_131.y, x_131.z), vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_138 : vec4<f32> = u_xlat4;
  let x_140 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_138.x, x_138.y, x_138.z), vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_145 : vec4<f32> = u_xlat5;
  let x_147 : vec4<f32> = u_xlat5;
  u_xlat2.w = dot(vec3<f32>(x_145.x, x_145.y, x_145.z), vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_155 : vec4<f32> = u_xlat2;
  let x_158 : vec4<f32> = x_87.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_155 < x_158);
  let x_162 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_162);
  let x_167 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_167);
  let x_171 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_171);
  let x_175 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_175);
  let x_179 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_179);
  let x_185 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_185);
  let x_189 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_189);
  let x_192 : vec4<f32> = u_xlat2;
  let x_194 : vec4<f32> = u_xlat3;
  let x_196 : vec3<f32> = (vec3<f32>(x_192.x, x_192.y, x_192.z) + vec3<f32>(x_194.y, x_194.z, x_194.w));
  let x_197 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
  let x_199 : vec4<f32> = u_xlat2;
  let x_202 : vec3<f32> = max(vec3<f32>(x_199.x, x_199.y, x_199.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_203 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_203.x, x_202.x, x_202.y, x_202.z);
  let x_205 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_205, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_213 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_213) + 4.0f);
  let x_220 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_220);
  let x_224 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_224) << bitcast<u32>(2i));
  let x_229 : vec3<f32> = vs_TEXCOORD1;
  let x_232 : i32 = u_xlati2;
  let x_235 : i32 = u_xlati2;
  let x_239 : vec4<f32> = x_87.x_MainLightWorldToShadow[((x_232 + 1i) / 4i)][((x_235 + 1i) % 4i)];
  u_xlat20 = (vec3<f32>(x_229.y, x_229.y, x_229.y) * vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_242 : i32 = u_xlati2;
  let x_244 : i32 = u_xlati2;
  let x_247 : vec4<f32> = x_87.x_MainLightWorldToShadow[(x_242 / 4i)][(x_244 % 4i)];
  let x_249 : vec3<f32> = vs_TEXCOORD1;
  let x_252 : vec3<f32> = u_xlat20;
  u_xlat20 = ((vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_249.x, x_249.x, x_249.x)) + x_252);
  let x_254 : i32 = u_xlati2;
  let x_257 : i32 = u_xlati2;
  let x_261 : vec4<f32> = x_87.x_MainLightWorldToShadow[((x_254 + 2i) / 4i)][((x_257 + 2i) % 4i)];
  let x_263 : vec3<f32> = vs_TEXCOORD1;
  let x_266 : vec3<f32> = u_xlat20;
  u_xlat20 = ((vec3<f32>(x_261.x, x_261.y, x_261.z) * vec3<f32>(x_263.z, x_263.z, x_263.z)) + x_266);
  let x_268 : vec3<f32> = u_xlat20;
  let x_269 : i32 = u_xlati2;
  let x_272 : i32 = u_xlati2;
  let x_276 : vec4<f32> = x_87.x_MainLightWorldToShadow[((x_269 + 3i) / 4i)][((x_272 + 3i) % 4i)];
  let x_278 : vec3<f32> = (x_268 + vec3<f32>(x_276.x, x_276.y, x_276.z));
  let x_279 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  u_xlat1.w = 1.0f;
  let x_288 : vec4<f32> = x_285.unity_SHAr;
  let x_289 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_288, x_289);
  let x_294 : vec4<f32> = x_285.unity_SHAg;
  let x_295 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_294, x_295);
  let x_300 : vec4<f32> = x_285.unity_SHAb;
  let x_301 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_300, x_301);
  let x_304 : vec4<f32> = u_xlat1;
  let x_306 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_304.y, x_304.z, x_304.z, x_304.x) * vec4<f32>(x_306.x, x_306.y, x_306.z, x_306.z));
  let x_311 : vec4<f32> = x_285.unity_SHBr;
  let x_312 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_311, x_312);
  let x_317 : vec4<f32> = x_285.unity_SHBg;
  let x_318 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_317, x_318);
  let x_323 : vec4<f32> = x_285.unity_SHBb;
  let x_324 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_323, x_324);
  let x_329 : f32 = u_xlat1.y;
  let x_331 : f32 = u_xlat1.y;
  u_xlat55 = (x_329 * x_331);
  let x_334 : f32 = u_xlat1.x;
  let x_336 : f32 = u_xlat1.x;
  let x_338 : f32 = u_xlat55;
  u_xlat55 = ((x_334 * x_336) + -(x_338));
  let x_343 : vec4<f32> = x_285.unity_SHC;
  let x_345 : f32 = u_xlat55;
  let x_348 : vec4<f32> = u_xlat5;
  let x_350 : vec3<f32> = ((vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_345, x_345, x_345)) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : vec4<f32> = u_xlat3;
  let x_355 : vec4<f32> = u_xlat4;
  let x_357 : vec3<f32> = (vec3<f32>(x_353.x, x_353.y, x_353.z) + vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec4<f32> = u_xlat3;
  let x_362 : vec3<f32> = max(vec3<f32>(x_360.x, x_360.y, x_360.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_363 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_367 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_368 : vec2<f32> = vec2<f32>(x_367.x, x_367.y);
  let x_372 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_368.x, x_368.y));
  let x_373 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_372.x, x_372.y, x_373.z, x_373.w);
  let x_375 : vec4<f32> = u_xlat4;
  let x_377 : vec4<f32> = hlslcc_FragCoord;
  let x_379 : vec2<f32> = (vec2<f32>(x_375.x, x_375.y) * vec2<f32>(x_377.x, x_377.y));
  let x_380 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_379.x, x_379.y, x_380.z, x_380.w);
  let x_383 : f32 = u_xlat4.y;
  let x_386 : f32 = x_43.x_ScaleBiasRt.x;
  let x_389 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat55 = ((x_383 * x_386) + x_389);
  let x_391 : f32 = u_xlat55;
  u_xlat4.z = (-(x_391) + 1.0f);
  let x_400 : vec4<f32> = u_xlat4;
  let x_403 : f32 = x_43.x_GlobalMipBias.x;
  let x_404 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_400.x, x_400.z), x_403);
  u_xlat55 = x_404.x;
  let x_407 : f32 = u_xlat55;
  u_xlat56 = (x_407 + -1.0f);
  let x_410 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_411 : f32 = u_xlat56;
  u_xlat56 = ((x_410 * x_411) + 1.0f);
  let x_414 : f32 = u_xlat55;
  u_xlat55 = min(x_414, 1.0f);
  let x_419 : f32 = x_87.x_MainLightShadowParams.y;
  u_xlatb57 = (0.0f < x_419);
  let x_421 : bool = u_xlatb57;
  if (x_421) {
    let x_425 : f32 = x_87.x_MainLightShadowParams.y;
    u_xlatb57 = (x_425 == 1.0f);
    let x_427 : bool = u_xlatb57;
    if (x_427) {
      let x_430 : vec4<f32> = u_xlat2;
      let x_434 : vec4<f32> = x_87.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_430.x, x_430.y, x_430.x, x_430.y) + x_434);
      let x_437 : vec4<f32> = u_xlat4;
      let x_438 : vec2<f32> = vec2<f32>(x_437.x, x_437.y);
      let x_440 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_438.x, x_438.y, x_440);
      let x_452 : vec3<f32> = txVec0;
      let x_454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_452.xy, x_452.z);
      u_xlat5.x = x_454;
      let x_457 : vec4<f32> = u_xlat4;
      let x_458 : vec2<f32> = vec2<f32>(x_457.z, x_457.w);
      let x_460 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_458.x, x_458.y, x_460);
      let x_467 : vec3<f32> = txVec1;
      let x_469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_467.xy, x_467.z);
      u_xlat5.y = x_469;
      let x_471 : vec4<f32> = u_xlat2;
      let x_474 : vec4<f32> = x_87.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_471.x, x_471.y, x_471.x, x_471.y) + x_474);
      let x_477 : vec4<f32> = u_xlat4;
      let x_478 : vec2<f32> = vec2<f32>(x_477.x, x_477.y);
      let x_480 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_478.x, x_478.y, x_480);
      let x_487 : vec3<f32> = txVec2;
      let x_489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_487.xy, x_487.z);
      u_xlat5.z = x_489;
      let x_492 : vec4<f32> = u_xlat4;
      let x_493 : vec2<f32> = vec2<f32>(x_492.z, x_492.w);
      let x_495 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_493.x, x_493.y, x_495);
      let x_502 : vec3<f32> = txVec3;
      let x_504 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_502.xy, x_502.z);
      u_xlat5.w = x_504;
      let x_507 : vec4<f32> = u_xlat5;
      u_xlat57 = dot(x_507, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_516 : f32 = x_87.x_MainLightShadowParams.y;
      u_xlatb4.x = (x_516 == 2.0f);
      let x_520 : bool = u_xlatb4.x;
      if (x_520) {
        let x_523 : vec4<f32> = u_xlat2;
        let x_527 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_532 : vec2<f32> = ((vec2<f32>(x_523.x, x_523.y) * vec2<f32>(x_527.z, x_527.w)) + vec2<f32>(0.5f, 0.5f));
        let x_533 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_532.x, x_532.y, x_533.z, x_533.w);
        let x_535 : vec4<f32> = u_xlat4;
        let x_537 : vec2<f32> = floor(vec2<f32>(x_535.x, x_535.y));
        let x_538 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_537.x, x_537.y, x_538.z, x_538.w);
        let x_542 : vec4<f32> = u_xlat2;
        let x_545 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_548 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_542.x, x_542.y) * vec2<f32>(x_545.z, x_545.w)) + -(vec2<f32>(x_548.x, x_548.y)));
        let x_552 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_552.x, x_552.x, x_552.y, x_552.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_557 : vec4<f32> = u_xlat5;
        let x_559 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_557.x, x_557.x, x_557.z, x_557.z) * vec4<f32>(x_559.x, x_559.x, x_559.z, x_559.z));
        let x_562 : vec4<f32> = u_xlat6;
        let x_566 : vec2<f32> = (vec2<f32>(x_562.y, x_562.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_567 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_566.x, x_567.y, x_566.y, x_567.w);
        let x_569 : vec4<f32> = u_xlat6;
        let x_572 : vec2<f32> = u_xlat40;
        let x_574 : vec2<f32> = ((vec2<f32>(x_569.x, x_569.z) * vec2<f32>(0.5f, 0.5f)) + -(x_572));
        let x_575 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_574.x, x_574.y, x_575.z, x_575.w);
        let x_578 : vec2<f32> = u_xlat40;
        u_xlat42 = (-(x_578) + vec2<f32>(1.0f, 1.0f));
        let x_582 : vec2<f32> = u_xlat40;
        let x_584 : vec2<f32> = min(x_582, vec2<f32>(0.0f, 0.0f));
        let x_585 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_584.x, x_584.y, x_585.z, x_585.w);
        let x_587 : vec4<f32> = u_xlat7;
        let x_590 : vec4<f32> = u_xlat7;
        let x_593 : vec2<f32> = u_xlat42;
        let x_594 : vec2<f32> = ((-(vec2<f32>(x_587.x, x_587.y)) * vec2<f32>(x_590.x, x_590.y)) + x_593);
        let x_595 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_594.x, x_594.y, x_595.z, x_595.w);
        let x_597 : vec2<f32> = u_xlat40;
        u_xlat40 = max(x_597, vec2<f32>(0.0f, 0.0f));
        let x_599 : vec2<f32> = u_xlat40;
        let x_601 : vec2<f32> = u_xlat40;
        let x_603 : vec4<f32> = u_xlat5;
        u_xlat40 = ((-(x_599) * x_601) + vec2<f32>(x_603.y, x_603.w));
        let x_606 : vec4<f32> = u_xlat7;
        let x_608 : vec2<f32> = (vec2<f32>(x_606.x, x_606.y) + vec2<f32>(1.0f, 1.0f));
        let x_609 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_608.x, x_608.y, x_609.z, x_609.w);
        let x_611 : vec2<f32> = u_xlat40;
        u_xlat40 = (x_611 + vec2<f32>(1.0f, 1.0f));
        let x_614 : vec4<f32> = u_xlat6;
        let x_618 : vec2<f32> = (vec2<f32>(x_614.x, x_614.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_619 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_618.x, x_618.y, x_619.z, x_619.w);
        let x_621 : vec2<f32> = u_xlat42;
        let x_622 : vec2<f32> = (x_621 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_623 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_622.x, x_622.y, x_623.z, x_623.w);
        let x_625 : vec4<f32> = u_xlat7;
        let x_627 : vec2<f32> = (vec2<f32>(x_625.x, x_625.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_628 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_627.x, x_627.y, x_628.z, x_628.w);
        let x_631 : vec2<f32> = u_xlat40;
        let x_632 : vec2<f32> = (x_631 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_633 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_632.x, x_632.y, x_633.z, x_633.w);
        let x_635 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_635.y, x_635.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_639 : f32 = u_xlat7.x;
        u_xlat8.z = x_639;
        let x_642 : f32 = u_xlat40.x;
        u_xlat8.w = x_642;
        let x_645 : f32 = u_xlat9.x;
        u_xlat6.z = x_645;
        let x_648 : f32 = u_xlat5.x;
        u_xlat6.w = x_648;
        let x_651 : vec4<f32> = u_xlat6;
        let x_653 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_651.z, x_651.w, x_651.x, x_651.z) + vec4<f32>(x_653.z, x_653.w, x_653.x, x_653.z));
        let x_657 : f32 = u_xlat8.y;
        u_xlat7.z = x_657;
        let x_660 : f32 = u_xlat40.y;
        u_xlat7.w = x_660;
        let x_663 : f32 = u_xlat6.y;
        u_xlat9.z = x_663;
        let x_666 : f32 = u_xlat5.z;
        u_xlat9.w = x_666;
        let x_668 : vec4<f32> = u_xlat7;
        let x_670 : vec4<f32> = u_xlat9;
        let x_672 : vec3<f32> = (vec3<f32>(x_668.z, x_668.y, x_668.w) + vec3<f32>(x_670.z, x_670.y, x_670.w));
        let x_673 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
        let x_675 : vec4<f32> = u_xlat6;
        let x_677 : vec4<f32> = u_xlat10;
        let x_679 : vec3<f32> = (vec3<f32>(x_675.x, x_675.z, x_675.w) / vec3<f32>(x_677.z, x_677.w, x_677.y));
        let x_680 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
        let x_682 : vec4<f32> = u_xlat6;
        let x_688 : vec3<f32> = (vec3<f32>(x_682.x, x_682.y, x_682.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_689 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
        let x_691 : vec4<f32> = u_xlat9;
        let x_693 : vec4<f32> = u_xlat5;
        let x_695 : vec3<f32> = (vec3<f32>(x_691.z, x_691.y, x_691.w) / vec3<f32>(x_693.x, x_693.y, x_693.z));
        let x_696 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
        let x_698 : vec4<f32> = u_xlat7;
        let x_700 : vec3<f32> = (vec3<f32>(x_698.x, x_698.y, x_698.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_701 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
        let x_703 : vec4<f32> = u_xlat6;
        let x_706 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_708 : vec3<f32> = (vec3<f32>(x_703.y, x_703.x, x_703.z) * vec3<f32>(x_706.x, x_706.x, x_706.x));
        let x_709 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
        let x_711 : vec4<f32> = u_xlat7;
        let x_714 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_716 : vec3<f32> = (vec3<f32>(x_711.x, x_711.y, x_711.z) * vec3<f32>(x_714.y, x_714.y, x_714.y));
        let x_717 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
        let x_720 : f32 = u_xlat7.x;
        u_xlat6.w = x_720;
        let x_722 : vec4<f32> = u_xlat4;
        let x_725 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_728 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_722.x, x_722.y, x_722.x, x_722.y) * vec4<f32>(x_725.x, x_725.y, x_725.x, x_725.y)) + vec4<f32>(x_728.y, x_728.w, x_728.x, x_728.w));
        let x_731 : vec4<f32> = u_xlat4;
        let x_734 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_737 : vec4<f32> = u_xlat6;
        u_xlat40 = ((vec2<f32>(x_731.x, x_731.y) * vec2<f32>(x_734.x, x_734.y)) + vec2<f32>(x_737.z, x_737.w));
        let x_741 : f32 = u_xlat6.y;
        u_xlat7.w = x_741;
        let x_743 : vec4<f32> = u_xlat7;
        let x_744 : vec2<f32> = vec2<f32>(x_743.y, x_743.z);
        let x_745 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_745.x, x_744.x, x_745.z, x_744.y);
        let x_747 : vec4<f32> = u_xlat4;
        let x_750 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_753 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_747.x, x_747.y, x_747.x, x_747.y) * vec4<f32>(x_750.x, x_750.y, x_750.x, x_750.y)) + vec4<f32>(x_753.x, x_753.y, x_753.z, x_753.y));
        let x_756 : vec4<f32> = u_xlat4;
        let x_759 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_762 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_756.x, x_756.y, x_756.x, x_756.y) * vec4<f32>(x_759.x, x_759.y, x_759.x, x_759.y)) + vec4<f32>(x_762.w, x_762.y, x_762.w, x_762.z));
        let x_765 : vec4<f32> = u_xlat4;
        let x_768 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_771 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_765.x, x_765.y, x_765.x, x_765.y) * vec4<f32>(x_768.x, x_768.y, x_768.x, x_768.y)) + vec4<f32>(x_771.x, x_771.w, x_771.z, x_771.w));
        let x_775 : vec4<f32> = u_xlat5;
        let x_777 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_775.x, x_775.x, x_775.x, x_775.y) * vec4<f32>(x_777.z, x_777.w, x_777.y, x_777.z));
        let x_781 : vec4<f32> = u_xlat5;
        let x_783 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_781.y, x_781.y, x_781.z, x_781.z) * x_783);
        let x_786 : f32 = u_xlat5.z;
        let x_788 : f32 = u_xlat10.y;
        u_xlat4.x = (x_786 * x_788);
        let x_792 : vec4<f32> = u_xlat8;
        let x_793 : vec2<f32> = vec2<f32>(x_792.x, x_792.y);
        let x_795 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_793.x, x_793.y, x_795);
        let x_803 : vec3<f32> = txVec4;
        let x_805 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_803.xy, x_803.z);
        u_xlat22 = x_805;
        let x_807 : vec4<f32> = u_xlat8;
        let x_808 : vec2<f32> = vec2<f32>(x_807.z, x_807.w);
        let x_810 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_808.x, x_808.y, x_810);
        let x_817 : vec3<f32> = txVec5;
        let x_819 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_817.xy, x_817.z);
        u_xlat5.x = x_819;
        let x_822 : f32 = u_xlat5.x;
        let x_824 : f32 = u_xlat11.y;
        u_xlat5.x = (x_822 * x_824);
        let x_828 : f32 = u_xlat11.x;
        let x_829 : f32 = u_xlat22;
        let x_832 : f32 = u_xlat5.x;
        u_xlat22 = ((x_828 * x_829) + x_832);
        let x_835 : vec2<f32> = u_xlat40;
        let x_837 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_835.x, x_835.y, x_837);
        let x_844 : vec3<f32> = txVec6;
        let x_846 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_844.xy, x_844.z);
        u_xlat40.x = x_846;
        let x_849 : f32 = u_xlat11.z;
        let x_851 : f32 = u_xlat40.x;
        let x_853 : f32 = u_xlat22;
        u_xlat22 = ((x_849 * x_851) + x_853);
        let x_856 : vec4<f32> = u_xlat7;
        let x_857 : vec2<f32> = vec2<f32>(x_856.x, x_856.y);
        let x_859 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_857.x, x_857.y, x_859);
        let x_866 : vec3<f32> = txVec7;
        let x_868 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_866.xy, x_866.z);
        u_xlat40.x = x_868;
        let x_871 : f32 = u_xlat11.w;
        let x_873 : f32 = u_xlat40.x;
        let x_875 : f32 = u_xlat22;
        u_xlat22 = ((x_871 * x_873) + x_875);
        let x_878 : vec4<f32> = u_xlat9;
        let x_879 : vec2<f32> = vec2<f32>(x_878.x, x_878.y);
        let x_881 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_879.x, x_879.y, x_881);
        let x_888 : vec3<f32> = txVec8;
        let x_890 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_888.xy, x_888.z);
        u_xlat40.x = x_890;
        let x_893 : f32 = u_xlat12.x;
        let x_895 : f32 = u_xlat40.x;
        let x_897 : f32 = u_xlat22;
        u_xlat22 = ((x_893 * x_895) + x_897);
        let x_900 : vec4<f32> = u_xlat9;
        let x_901 : vec2<f32> = vec2<f32>(x_900.z, x_900.w);
        let x_903 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_901.x, x_901.y, x_903);
        let x_910 : vec3<f32> = txVec9;
        let x_912 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_910.xy, x_910.z);
        u_xlat40.x = x_912;
        let x_915 : f32 = u_xlat12.y;
        let x_917 : f32 = u_xlat40.x;
        let x_919 : f32 = u_xlat22;
        u_xlat22 = ((x_915 * x_917) + x_919);
        let x_922 : vec4<f32> = u_xlat7;
        let x_923 : vec2<f32> = vec2<f32>(x_922.z, x_922.w);
        let x_925 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_923.x, x_923.y, x_925);
        let x_932 : vec3<f32> = txVec10;
        let x_934 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_932.xy, x_932.z);
        u_xlat40.x = x_934;
        let x_937 : f32 = u_xlat12.z;
        let x_939 : f32 = u_xlat40.x;
        let x_941 : f32 = u_xlat22;
        u_xlat22 = ((x_937 * x_939) + x_941);
        let x_944 : vec4<f32> = u_xlat6;
        let x_945 : vec2<f32> = vec2<f32>(x_944.x, x_944.y);
        let x_947 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_945.x, x_945.y, x_947);
        let x_954 : vec3<f32> = txVec11;
        let x_956 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_954.xy, x_954.z);
        u_xlat40.x = x_956;
        let x_959 : f32 = u_xlat12.w;
        let x_961 : f32 = u_xlat40.x;
        let x_963 : f32 = u_xlat22;
        u_xlat22 = ((x_959 * x_961) + x_963);
        let x_966 : vec4<f32> = u_xlat6;
        let x_967 : vec2<f32> = vec2<f32>(x_966.z, x_966.w);
        let x_969 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_967.x, x_967.y, x_969);
        let x_976 : vec3<f32> = txVec12;
        let x_978 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_976.xy, x_976.z);
        u_xlat40.x = x_978;
        let x_981 : f32 = u_xlat4.x;
        let x_983 : f32 = u_xlat40.x;
        let x_985 : f32 = u_xlat22;
        u_xlat57 = ((x_981 * x_983) + x_985);
      } else {
        let x_988 : vec4<f32> = u_xlat2;
        let x_991 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_994 : vec2<f32> = ((vec2<f32>(x_988.x, x_988.y) * vec2<f32>(x_991.z, x_991.w)) + vec2<f32>(0.5f, 0.5f));
        let x_995 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_994.x, x_994.y, x_995.z, x_995.w);
        let x_997 : vec4<f32> = u_xlat4;
        let x_999 : vec2<f32> = floor(vec2<f32>(x_997.x, x_997.y));
        let x_1000 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_999.x, x_999.y, x_1000.z, x_1000.w);
        let x_1002 : vec4<f32> = u_xlat2;
        let x_1005 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1008 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_1002.x, x_1002.y) * vec2<f32>(x_1005.z, x_1005.w)) + -(vec2<f32>(x_1008.x, x_1008.y)));
        let x_1012 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_1012.x, x_1012.x, x_1012.y, x_1012.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1015 : vec4<f32> = u_xlat5;
        let x_1017 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_1015.x, x_1015.x, x_1015.z, x_1015.z) * vec4<f32>(x_1017.x, x_1017.x, x_1017.z, x_1017.z));
        let x_1020 : vec4<f32> = u_xlat6;
        let x_1024 : vec2<f32> = (vec2<f32>(x_1020.y, x_1020.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1025 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1025.x, x_1024.x, x_1025.z, x_1024.y);
        let x_1027 : vec4<f32> = u_xlat6;
        let x_1030 : vec2<f32> = u_xlat40;
        let x_1032 : vec2<f32> = ((vec2<f32>(x_1027.x, x_1027.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1030));
        let x_1033 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1032.x, x_1033.y, x_1032.y, x_1033.w);
        let x_1035 : vec2<f32> = u_xlat40;
        let x_1037 : vec2<f32> = (-(x_1035) + vec2<f32>(1.0f, 1.0f));
        let x_1038 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1037.x, x_1037.y, x_1038.z, x_1038.w);
        let x_1040 : vec2<f32> = u_xlat40;
        u_xlat42 = min(x_1040, vec2<f32>(0.0f, 0.0f));
        let x_1042 : vec2<f32> = u_xlat42;
        let x_1044 : vec2<f32> = u_xlat42;
        let x_1046 : vec4<f32> = u_xlat6;
        let x_1048 : vec2<f32> = ((-(x_1042) * x_1044) + vec2<f32>(x_1046.x, x_1046.y));
        let x_1049 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1048.x, x_1048.y, x_1049.z, x_1049.w);
        let x_1051 : vec2<f32> = u_xlat40;
        u_xlat42 = max(x_1051, vec2<f32>(0.0f, 0.0f));
        let x_1054 : vec2<f32> = u_xlat42;
        let x_1056 : vec2<f32> = u_xlat42;
        let x_1058 : vec4<f32> = u_xlat5;
        let x_1060 : vec2<f32> = ((-(x_1054) * x_1056) + vec2<f32>(x_1058.y, x_1058.w));
        let x_1061 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1060.x, x_1061.y, x_1060.y);
        let x_1063 : vec4<f32> = u_xlat6;
        let x_1066 : vec2<f32> = (vec2<f32>(x_1063.x, x_1063.y) + vec2<f32>(2.0f, 2.0f));
        let x_1067 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1066.x, x_1066.y, x_1067.z, x_1067.w);
        let x_1069 : vec3<f32> = u_xlat23;
        let x_1071 : vec2<f32> = (vec2<f32>(x_1069.x, x_1069.z) + vec2<f32>(2.0f, 2.0f));
        let x_1072 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1072.x, x_1071.x, x_1072.z, x_1071.y);
        let x_1075 : f32 = u_xlat5.y;
        u_xlat8.z = (x_1075 * 0.081632003f);
        let x_1079 : vec4<f32> = u_xlat5;
        let x_1082 : vec3<f32> = (vec3<f32>(x_1079.z, x_1079.x, x_1079.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1083 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1082.x, x_1082.y, x_1082.z, x_1083.w);
        let x_1085 : vec4<f32> = u_xlat6;
        let x_1088 : vec2<f32> = (vec2<f32>(x_1085.x, x_1085.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1089 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1088.x, x_1088.y, x_1089.z, x_1089.w);
        let x_1092 : f32 = u_xlat9.y;
        u_xlat8.x = x_1092;
        let x_1094 : vec2<f32> = u_xlat40;
        let x_1101 : vec2<f32> = ((vec2<f32>(x_1094.x, x_1094.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1102 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1102.x, x_1101.x, x_1102.z, x_1101.y);
        let x_1104 : vec2<f32> = u_xlat40;
        let x_1108 : vec2<f32> = ((vec2<f32>(x_1104.x, x_1104.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1109 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1108.x, x_1109.y, x_1108.y, x_1109.w);
        let x_1112 : f32 = u_xlat5.x;
        u_xlat6.y = x_1112;
        let x_1115 : f32 = u_xlat7.y;
        u_xlat6.w = x_1115;
        let x_1117 : vec4<f32> = u_xlat6;
        let x_1118 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1117 + x_1118);
        let x_1120 : vec2<f32> = u_xlat40;
        let x_1123 : vec2<f32> = ((vec2<f32>(x_1120.y, x_1120.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1124 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1124.x, x_1123.x, x_1124.z, x_1123.y);
        let x_1126 : vec2<f32> = u_xlat40;
        let x_1129 : vec2<f32> = ((vec2<f32>(x_1126.y, x_1126.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1130 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1129.x, x_1130.y, x_1129.y, x_1130.w);
        let x_1133 : f32 = u_xlat5.y;
        u_xlat7.y = x_1133;
        let x_1135 : vec4<f32> = u_xlat7;
        let x_1136 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1135 + x_1136);
        let x_1138 : vec4<f32> = u_xlat6;
        let x_1139 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1138 / x_1139);
        let x_1141 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1141 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1147 : vec4<f32> = u_xlat7;
        let x_1148 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1147 / x_1148);
        let x_1150 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1150 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1152 : vec4<f32> = u_xlat6;
        let x_1155 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1152.w, x_1152.x, x_1152.y, x_1152.z) * vec4<f32>(x_1155.x, x_1155.x, x_1155.x, x_1155.x));
        let x_1158 : vec4<f32> = u_xlat7;
        let x_1161 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1158.x, x_1158.w, x_1158.y, x_1158.z) * vec4<f32>(x_1161.y, x_1161.y, x_1161.y, x_1161.y));
        let x_1164 : vec4<f32> = u_xlat6;
        let x_1165 : vec3<f32> = vec3<f32>(x_1164.y, x_1164.z, x_1164.w);
        let x_1166 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1165.x, x_1166.y, x_1165.y, x_1165.z);
        let x_1169 : f32 = u_xlat7.x;
        u_xlat9.y = x_1169;
        let x_1171 : vec4<f32> = u_xlat4;
        let x_1174 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1177 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1171.x, x_1171.y, x_1171.x, x_1171.y) * vec4<f32>(x_1174.x, x_1174.y, x_1174.x, x_1174.y)) + vec4<f32>(x_1177.x, x_1177.y, x_1177.z, x_1177.y));
        let x_1180 : vec4<f32> = u_xlat4;
        let x_1183 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1186 : vec4<f32> = u_xlat9;
        u_xlat40 = ((vec2<f32>(x_1180.x, x_1180.y) * vec2<f32>(x_1183.x, x_1183.y)) + vec2<f32>(x_1186.w, x_1186.y));
        let x_1190 : f32 = u_xlat9.y;
        u_xlat6.y = x_1190;
        let x_1193 : f32 = u_xlat7.z;
        u_xlat9.y = x_1193;
        let x_1195 : vec4<f32> = u_xlat4;
        let x_1198 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1201 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1195.x, x_1195.y, x_1195.x, x_1195.y) * vec4<f32>(x_1198.x, x_1198.y, x_1198.x, x_1198.y)) + vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1201.y));
        let x_1204 : vec4<f32> = u_xlat4;
        let x_1207 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1210 : vec4<f32> = u_xlat9;
        let x_1212 : vec2<f32> = ((vec2<f32>(x_1204.x, x_1204.y) * vec2<f32>(x_1207.x, x_1207.y)) + vec2<f32>(x_1210.w, x_1210.y));
        let x_1213 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1212.x, x_1212.y, x_1213.z, x_1213.w);
        let x_1216 : f32 = u_xlat9.y;
        u_xlat6.z = x_1216;
        let x_1219 : vec4<f32> = u_xlat4;
        let x_1222 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1225 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1219.x, x_1219.y, x_1219.x, x_1219.y) * vec4<f32>(x_1222.x, x_1222.y, x_1222.x, x_1222.y)) + vec4<f32>(x_1225.x, x_1225.y, x_1225.x, x_1225.z));
        let x_1229 : f32 = u_xlat7.w;
        u_xlat9.y = x_1229;
        let x_1232 : vec4<f32> = u_xlat4;
        let x_1235 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1238 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1232.x, x_1232.y, x_1232.x, x_1232.y) * vec4<f32>(x_1235.x, x_1235.y, x_1235.x, x_1235.y)) + vec4<f32>(x_1238.x, x_1238.y, x_1238.z, x_1238.y));
        let x_1242 : vec4<f32> = u_xlat4;
        let x_1245 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1248 : vec4<f32> = u_xlat9;
        u_xlat24 = ((vec2<f32>(x_1242.x, x_1242.y) * vec2<f32>(x_1245.x, x_1245.y)) + vec2<f32>(x_1248.w, x_1248.y));
        let x_1252 : f32 = u_xlat9.y;
        u_xlat6.w = x_1252;
        let x_1255 : vec4<f32> = u_xlat4;
        let x_1258 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1261 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1255.x, x_1255.y) * vec2<f32>(x_1258.x, x_1258.y)) + vec2<f32>(x_1261.x, x_1261.w));
        let x_1264 : vec4<f32> = u_xlat9;
        let x_1265 : vec3<f32> = vec3<f32>(x_1264.x, x_1264.z, x_1264.w);
        let x_1266 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1265.x, x_1266.y, x_1265.y, x_1265.z);
        let x_1268 : vec4<f32> = u_xlat4;
        let x_1271 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1274 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1268.x, x_1268.y, x_1268.x, x_1268.y) * vec4<f32>(x_1271.x, x_1271.y, x_1271.x, x_1271.y)) + vec4<f32>(x_1274.x, x_1274.y, x_1274.z, x_1274.y));
        let x_1278 : vec4<f32> = u_xlat4;
        let x_1281 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1284 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1278.x, x_1278.y) * vec2<f32>(x_1281.x, x_1281.y)) + vec2<f32>(x_1284.w, x_1284.y));
        let x_1288 : f32 = u_xlat6.x;
        u_xlat7.x = x_1288;
        let x_1290 : vec4<f32> = u_xlat4;
        let x_1293 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1296 : vec4<f32> = u_xlat7;
        let x_1298 : vec2<f32> = ((vec2<f32>(x_1290.x, x_1290.y) * vec2<f32>(x_1293.x, x_1293.y)) + vec2<f32>(x_1296.x, x_1296.y));
        let x_1299 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1298.x, x_1298.y, x_1299.z, x_1299.w);
        let x_1302 : vec4<f32> = u_xlat5;
        let x_1304 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1302.x, x_1302.x, x_1302.x, x_1302.x) * x_1304);
        let x_1307 : vec4<f32> = u_xlat5;
        let x_1309 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1307.y, x_1307.y, x_1307.y, x_1307.y) * x_1309);
        let x_1312 : vec4<f32> = u_xlat5;
        let x_1314 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1312.z, x_1312.z, x_1312.z, x_1312.z) * x_1314);
        let x_1316 : vec4<f32> = u_xlat5;
        let x_1318 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1316.w, x_1316.w, x_1316.w, x_1316.w) * x_1318);
        let x_1321 : vec4<f32> = u_xlat10;
        let x_1322 : vec2<f32> = vec2<f32>(x_1321.x, x_1321.y);
        let x_1324 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1322.x, x_1322.y, x_1324);
        let x_1331 : vec3<f32> = txVec13;
        let x_1333 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1331.xy, x_1331.z);
        u_xlat6.x = x_1333;
        let x_1336 : vec4<f32> = u_xlat10;
        let x_1337 : vec2<f32> = vec2<f32>(x_1336.z, x_1336.w);
        let x_1339 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1337.x, x_1337.y, x_1339);
        let x_1347 : vec3<f32> = txVec14;
        let x_1349 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1347.xy, x_1347.z);
        u_xlat60 = x_1349;
        let x_1350 : f32 = u_xlat60;
        let x_1352 : f32 = u_xlat15.y;
        u_xlat60 = (x_1350 * x_1352);
        let x_1355 : f32 = u_xlat15.x;
        let x_1357 : f32 = u_xlat6.x;
        let x_1359 : f32 = u_xlat60;
        u_xlat6.x = ((x_1355 * x_1357) + x_1359);
        let x_1363 : vec2<f32> = u_xlat40;
        let x_1365 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1363.x, x_1363.y, x_1365);
        let x_1372 : vec3<f32> = txVec15;
        let x_1374 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1372.xy, x_1372.z);
        u_xlat40.x = x_1374;
        let x_1377 : f32 = u_xlat15.z;
        let x_1379 : f32 = u_xlat40.x;
        let x_1382 : f32 = u_xlat6.x;
        u_xlat40.x = ((x_1377 * x_1379) + x_1382);
        let x_1386 : vec4<f32> = u_xlat13;
        let x_1387 : vec2<f32> = vec2<f32>(x_1386.x, x_1386.y);
        let x_1389 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1387.x, x_1387.y, x_1389);
        let x_1397 : vec3<f32> = txVec16;
        let x_1399 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1397.xy, x_1397.z);
        u_xlat58 = x_1399;
        let x_1401 : f32 = u_xlat15.w;
        let x_1402 : f32 = u_xlat58;
        let x_1405 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1401 * x_1402) + x_1405);
        let x_1409 : vec4<f32> = u_xlat11;
        let x_1410 : vec2<f32> = vec2<f32>(x_1409.x, x_1409.y);
        let x_1412 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1410.x, x_1410.y, x_1412);
        let x_1419 : vec3<f32> = txVec17;
        let x_1421 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1419.xy, x_1419.z);
        u_xlat58 = x_1421;
        let x_1423 : f32 = u_xlat16.x;
        let x_1424 : f32 = u_xlat58;
        let x_1427 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1423 * x_1424) + x_1427);
        let x_1431 : vec4<f32> = u_xlat11;
        let x_1432 : vec2<f32> = vec2<f32>(x_1431.z, x_1431.w);
        let x_1434 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1432.x, x_1432.y, x_1434);
        let x_1441 : vec3<f32> = txVec18;
        let x_1443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1441.xy, x_1441.z);
        u_xlat58 = x_1443;
        let x_1445 : f32 = u_xlat16.y;
        let x_1446 : f32 = u_xlat58;
        let x_1449 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1445 * x_1446) + x_1449);
        let x_1453 : vec4<f32> = u_xlat12;
        let x_1454 : vec2<f32> = vec2<f32>(x_1453.x, x_1453.y);
        let x_1456 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1454.x, x_1454.y, x_1456);
        let x_1463 : vec3<f32> = txVec19;
        let x_1465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1463.xy, x_1463.z);
        u_xlat58 = x_1465;
        let x_1467 : f32 = u_xlat16.z;
        let x_1468 : f32 = u_xlat58;
        let x_1471 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1467 * x_1468) + x_1471);
        let x_1475 : vec4<f32> = u_xlat13;
        let x_1476 : vec2<f32> = vec2<f32>(x_1475.z, x_1475.w);
        let x_1478 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1476.x, x_1476.y, x_1478);
        let x_1485 : vec3<f32> = txVec20;
        let x_1487 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1485.xy, x_1485.z);
        u_xlat58 = x_1487;
        let x_1489 : f32 = u_xlat16.w;
        let x_1490 : f32 = u_xlat58;
        let x_1493 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1489 * x_1490) + x_1493);
        let x_1497 : vec4<f32> = u_xlat14;
        let x_1498 : vec2<f32> = vec2<f32>(x_1497.x, x_1497.y);
        let x_1500 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1498.x, x_1498.y, x_1500);
        let x_1507 : vec3<f32> = txVec21;
        let x_1509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1507.xy, x_1507.z);
        u_xlat58 = x_1509;
        let x_1511 : f32 = u_xlat17.x;
        let x_1512 : f32 = u_xlat58;
        let x_1515 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1511 * x_1512) + x_1515);
        let x_1519 : vec4<f32> = u_xlat14;
        let x_1520 : vec2<f32> = vec2<f32>(x_1519.z, x_1519.w);
        let x_1522 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1520.x, x_1520.y, x_1522);
        let x_1529 : vec3<f32> = txVec22;
        let x_1531 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1529.xy, x_1529.z);
        u_xlat58 = x_1531;
        let x_1533 : f32 = u_xlat17.y;
        let x_1534 : f32 = u_xlat58;
        let x_1537 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1533 * x_1534) + x_1537);
        let x_1541 : vec2<f32> = u_xlat24;
        let x_1543 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1541.x, x_1541.y, x_1543);
        let x_1550 : vec3<f32> = txVec23;
        let x_1552 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1550.xy, x_1550.z);
        u_xlat58 = x_1552;
        let x_1554 : f32 = u_xlat17.z;
        let x_1555 : f32 = u_xlat58;
        let x_1558 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1554 * x_1555) + x_1558);
        let x_1562 : vec2<f32> = u_xlat48;
        let x_1564 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1562.x, x_1562.y, x_1564);
        let x_1571 : vec3<f32> = txVec24;
        let x_1573 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1571.xy, x_1571.z);
        u_xlat58 = x_1573;
        let x_1575 : f32 = u_xlat17.w;
        let x_1576 : f32 = u_xlat58;
        let x_1579 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1575 * x_1576) + x_1579);
        let x_1583 : vec4<f32> = u_xlat9;
        let x_1584 : vec2<f32> = vec2<f32>(x_1583.x, x_1583.y);
        let x_1586 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1584.x, x_1584.y, x_1586);
        let x_1593 : vec3<f32> = txVec25;
        let x_1595 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1593.xy, x_1593.z);
        u_xlat58 = x_1595;
        let x_1597 : f32 = u_xlat5.x;
        let x_1598 : f32 = u_xlat58;
        let x_1601 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1597 * x_1598) + x_1601);
        let x_1605 : vec4<f32> = u_xlat9;
        let x_1606 : vec2<f32> = vec2<f32>(x_1605.z, x_1605.w);
        let x_1608 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1606.x, x_1606.y, x_1608);
        let x_1615 : vec3<f32> = txVec26;
        let x_1617 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1615.xy, x_1615.z);
        u_xlat58 = x_1617;
        let x_1619 : f32 = u_xlat5.y;
        let x_1620 : f32 = u_xlat58;
        let x_1623 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1619 * x_1620) + x_1623);
        let x_1627 : vec2<f32> = u_xlat43;
        let x_1629 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1627.x, x_1627.y, x_1629);
        let x_1636 : vec3<f32> = txVec27;
        let x_1638 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1636.xy, x_1636.z);
        u_xlat58 = x_1638;
        let x_1640 : f32 = u_xlat5.z;
        let x_1641 : f32 = u_xlat58;
        let x_1644 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1640 * x_1641) + x_1644);
        let x_1648 : vec4<f32> = u_xlat4;
        let x_1649 : vec2<f32> = vec2<f32>(x_1648.x, x_1648.y);
        let x_1651 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1649.x, x_1649.y, x_1651);
        let x_1658 : vec3<f32> = txVec28;
        let x_1660 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1658.xy, x_1658.z);
        u_xlat4.x = x_1660;
        let x_1663 : f32 = u_xlat5.w;
        let x_1665 : f32 = u_xlat4.x;
        let x_1668 : f32 = u_xlat40.x;
        u_xlat57 = ((x_1663 * x_1665) + x_1668);
      }
    }
  } else {
    let x_1672 : vec4<f32> = u_xlat2;
    let x_1673 : vec2<f32> = vec2<f32>(x_1672.x, x_1672.y);
    let x_1675 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1673.x, x_1673.y, x_1675);
    let x_1682 : vec3<f32> = txVec29;
    let x_1684 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1682.xy, x_1682.z);
    u_xlat57 = x_1684;
  }
  let x_1686 : f32 = x_87.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1686) + 1.0f);
  let x_1690 : f32 = u_xlat57;
  let x_1692 : f32 = x_87.x_MainLightShadowParams.x;
  let x_1695 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1690 * x_1692) + x_1695);
  let x_1700 : f32 = u_xlat2.z;
  u_xlatb20.x = (0.0f >= x_1700);
  let x_1705 : f32 = u_xlat2.z;
  u_xlatb38 = (x_1705 >= 1.0f);
  let x_1707 : bool = u_xlatb38;
  let x_1709 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_1707 | x_1709);
  let x_1713 : bool = u_xlatb20.x;
  if (x_1713) {
    x_1714 = 1.0f;
  } else {
    let x_1719 : f32 = u_xlat2.x;
    x_1714 = x_1719;
  }
  let x_1720 : f32 = x_1714;
  u_xlat2.x = x_1720;
  let x_1722 : vec3<f32> = vs_TEXCOORD1;
  let x_1725 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1727 : vec3<f32> = (x_1722 + -(x_1725));
  let x_1728 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1727.x, x_1727.y, x_1727.z, x_1728.w);
  let x_1730 : vec4<f32> = u_xlat4;
  let x_1732 : vec4<f32> = u_xlat4;
  u_xlat20.x = dot(vec3<f32>(x_1730.x, x_1730.y, x_1730.z), vec3<f32>(x_1732.x, x_1732.y, x_1732.z));
  let x_1737 : f32 = u_xlat20.x;
  let x_1739 : f32 = x_87.x_MainLightShadowParams.z;
  let x_1742 : f32 = x_87.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_1737 * x_1739) + x_1742);
  let x_1746 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_1746, 0.0f, 1.0f);
  let x_1751 : f32 = u_xlat2.x;
  u_xlat38 = (-(x_1751) + 1.0f);
  let x_1755 : f32 = u_xlat20.x;
  let x_1756 : f32 = u_xlat38;
  let x_1759 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1755 * x_1756) + x_1759);
  let x_1768 : f32 = x_1766.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_1768 == -1.0f));
  let x_1772 : bool = u_xlatb20.x;
  if (x_1772) {
    let x_1775 : vec3<f32> = vs_TEXCOORD1;
    let x_1778 : vec4<f32> = x_1766.x_MainLightWorldToLight[1i];
    let x_1780 : vec2<f32> = (vec2<f32>(x_1775.y, x_1775.y) * vec2<f32>(x_1778.x, x_1778.y));
    let x_1781 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1780.x, x_1780.y, x_1781.z);
    let x_1784 : vec4<f32> = x_1766.x_MainLightWorldToLight[0i];
    let x_1786 : vec3<f32> = vs_TEXCOORD1;
    let x_1789 : vec3<f32> = u_xlat20;
    let x_1791 : vec2<f32> = ((vec2<f32>(x_1784.x, x_1784.y) * vec2<f32>(x_1786.x, x_1786.x)) + vec2<f32>(x_1789.x, x_1789.y));
    let x_1792 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1791.x, x_1791.y, x_1792.z);
    let x_1795 : vec4<f32> = x_1766.x_MainLightWorldToLight[2i];
    let x_1797 : vec3<f32> = vs_TEXCOORD1;
    let x_1800 : vec3<f32> = u_xlat20;
    let x_1802 : vec2<f32> = ((vec2<f32>(x_1795.x, x_1795.y) * vec2<f32>(x_1797.z, x_1797.z)) + vec2<f32>(x_1800.x, x_1800.y));
    let x_1803 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1802.x, x_1802.y, x_1803.z);
    let x_1805 : vec3<f32> = u_xlat20;
    let x_1808 : vec4<f32> = x_1766.x_MainLightWorldToLight[3i];
    let x_1810 : vec2<f32> = (vec2<f32>(x_1805.x, x_1805.y) + vec2<f32>(x_1808.x, x_1808.y));
    let x_1811 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1810.x, x_1810.y, x_1811.z);
    let x_1813 : vec3<f32> = u_xlat20;
    let x_1816 : vec2<f32> = ((vec2<f32>(x_1813.x, x_1813.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1817 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1816.x, x_1816.y, x_1817.z);
    let x_1824 : vec3<f32> = u_xlat20;
    let x_1827 : f32 = x_43.x_GlobalMipBias.x;
    let x_1828 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1824.x, x_1824.y), x_1827);
    u_xlat4 = x_1828;
    let x_1830 : f32 = x_1766.x_MainLightCookieTextureFormat;
    let x_1832 : f32 = x_1766.x_MainLightCookieTextureFormat;
    let x_1834 : f32 = x_1766.x_MainLightCookieTextureFormat;
    let x_1836 : f32 = x_1766.x_MainLightCookieTextureFormat;
    let x_1837 : vec4<f32> = vec4<f32>(x_1830, x_1832, x_1834, x_1836);
    let x_1844 : vec4<bool> = (vec4<f32>(x_1837.x, x_1837.y, x_1837.z, x_1837.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_1844.x, x_1844.y);
    let x_1847 : bool = u_xlatb20.y;
    if (x_1847) {
      let x_1852 : f32 = u_xlat4.w;
      x_1848 = x_1852;
    } else {
      let x_1855 : f32 = u_xlat4.x;
      x_1848 = x_1855;
    }
    let x_1856 : f32 = x_1848;
    u_xlat38 = x_1856;
    let x_1858 : bool = u_xlatb20.x;
    if (x_1858) {
      let x_1862 : vec4<f32> = u_xlat4;
      x_1859 = vec3<f32>(x_1862.x, x_1862.y, x_1862.z);
    } else {
      let x_1865 : f32 = u_xlat38;
      x_1859 = vec3<f32>(x_1865, x_1865, x_1865);
    }
    let x_1867 : vec3<f32> = x_1859;
    let x_1868 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1867.x, x_1867.y, x_1867.z, x_1868.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1874 : vec4<f32> = u_xlat4;
  let x_1877 : vec4<f32> = x_43.x_MainLightColor;
  let x_1879 : vec3<f32> = (vec3<f32>(x_1874.x, x_1874.y, x_1874.z) * vec3<f32>(x_1877.x, x_1877.y, x_1877.z));
  let x_1880 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1879.x, x_1879.y, x_1879.z, x_1880.w);
  let x_1882 : f32 = u_xlat56;
  let x_1884 : vec4<f32> = u_xlat4;
  let x_1886 : vec3<f32> = (vec3<f32>(x_1882, x_1882, x_1882) * vec3<f32>(x_1884.x, x_1884.y, x_1884.z));
  let x_1887 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1886.x, x_1886.y, x_1886.z, x_1887.w);
  let x_1889 : f32 = u_xlat55;
  let x_1891 : vec4<f32> = u_xlat3;
  let x_1893 : vec3<f32> = (vec3<f32>(x_1889, x_1889, x_1889) * vec3<f32>(x_1891.x, x_1891.y, x_1891.z));
  let x_1894 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1893.x, x_1893.y, x_1893.z, x_1894.w);
  let x_1897 : f32 = u_xlat2.x;
  let x_1899 : f32 = x_285.unity_LightData.z;
  u_xlat55 = (x_1897 * x_1899);
  let x_1901 : f32 = u_xlat55;
  let x_1903 : vec4<f32> = u_xlat4;
  let x_1905 : vec3<f32> = (vec3<f32>(x_1901, x_1901, x_1901) * vec3<f32>(x_1903.x, x_1903.y, x_1903.z));
  let x_1906 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1905.x, x_1905.y, x_1905.z, x_1906.w);
  let x_1908 : vec4<f32> = u_xlat1;
  let x_1911 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat55 = dot(vec3<f32>(x_1908.x, x_1908.y, x_1908.z), vec3<f32>(x_1911.x, x_1911.y, x_1911.z));
  let x_1914 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1914, 0.0f, 1.0f);
  let x_1916 : f32 = u_xlat55;
  let x_1918 : vec4<f32> = u_xlat2;
  let x_1920 : vec3<f32> = (vec3<f32>(x_1916, x_1916, x_1916) * vec3<f32>(x_1918.x, x_1918.y, x_1918.z));
  let x_1921 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1920.x, x_1920.y, x_1920.z, x_1921.w);
  let x_1923 : vec4<f32> = u_xlat0;
  let x_1925 : vec4<f32> = u_xlat2;
  let x_1927 : vec3<f32> = (vec3<f32>(x_1923.y, x_1923.z, x_1923.w) * vec3<f32>(x_1925.x, x_1925.y, x_1925.z));
  let x_1928 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1927.x, x_1927.y, x_1927.z, x_1928.w);
  let x_1931 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1933 : f32 = x_285.unity_LightData.y;
  u_xlat55 = min(x_1931, x_1933);
  let x_1936 : f32 = u_xlat55;
  u_xlatu55 = bitcast<u32>(i32(x_1936));
  let x_1940 : f32 = x_1766.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1942 : f32 = x_1766.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1944 : f32 = x_1766.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1946 : f32 = x_1766.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1947 : vec4<f32> = vec4<f32>(x_1940, x_1942, x_1944, x_1946);
  let x_1953 : vec4<bool> = (vec4<f32>(x_1947.x, x_1947.y, x_1947.z, x_1947.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_1953.x, x_1953.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1964 : u32 = u_xlatu_loop_1;
    let x_1965 : u32 = u_xlatu55;
    if ((x_1964 < x_1965)) {
    } else {
      break;
    }
    let x_1968 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_1968 >> 2u);
    let x_1971 : u32 = u_xlatu_loop_1;
    u_xlati58 = bitcast<i32>((x_1971 & 3u));
    let x_1974 : u32 = u_xlatu40;
    let x_1977 : vec4<f32> = x_285.unity_LightIndices[bitcast<i32>(x_1974)];
    let x_1987 : i32 = u_xlati58;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1992 : vec4<u32> = indexable[x_1987];
    u_xlat40.x = dot(x_1977, bitcast<vec4<f32>>(x_1992));
    let x_1997 : f32 = u_xlat40.x;
    u_xlatu40 = bitcast<u32>(i32(x_1997));
    let x_2000 : vec3<f32> = vs_TEXCOORD1;
    let x_2012 : u32 = u_xlatu40;
    let x_2015 : vec4<f32> = x_2011.x_AdditionalLightsPosition[bitcast<i32>(x_2012)];
    let x_2018 : u32 = u_xlatu40;
    let x_2021 : vec4<f32> = x_2011.x_AdditionalLightsPosition[bitcast<i32>(x_2018)];
    let x_2023 : vec3<f32> = ((-(x_2000) * vec3<f32>(x_2015.w, x_2015.w, x_2015.w)) + vec3<f32>(x_2021.x, x_2021.y, x_2021.z));
    let x_2024 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2023.x, x_2023.y, x_2023.z, x_2024.w);
    let x_2026 : vec4<f32> = u_xlat6;
    let x_2028 : vec4<f32> = u_xlat6;
    u_xlat58 = dot(vec3<f32>(x_2026.x, x_2026.y, x_2026.z), vec3<f32>(x_2028.x, x_2028.y, x_2028.z));
    let x_2031 : f32 = u_xlat58;
    u_xlat58 = max(x_2031, 6.10351562e-05f);
    let x_2035 : f32 = u_xlat58;
    u_xlat59 = inverseSqrt(x_2035);
    let x_2037 : f32 = u_xlat59;
    let x_2039 : vec4<f32> = u_xlat6;
    let x_2041 : vec3<f32> = (vec3<f32>(x_2037, x_2037, x_2037) * vec3<f32>(x_2039.x, x_2039.y, x_2039.z));
    let x_2042 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2041.x, x_2041.y, x_2041.z, x_2042.w);
    let x_2044 : f32 = u_xlat58;
    u_xlat59 = (1.0f / x_2044);
    let x_2046 : f32 = u_xlat58;
    let x_2047 : u32 = u_xlatu40;
    let x_2050 : f32 = x_2011.x_AdditionalLightsAttenuation[bitcast<i32>(x_2047)].x;
    u_xlat58 = (x_2046 * x_2050);
    let x_2052 : f32 = u_xlat58;
    let x_2054 : f32 = u_xlat58;
    u_xlat58 = ((-(x_2052) * x_2054) + 1.0f);
    let x_2057 : f32 = u_xlat58;
    u_xlat58 = max(x_2057, 0.0f);
    let x_2059 : f32 = u_xlat58;
    let x_2060 : f32 = u_xlat58;
    u_xlat58 = (x_2059 * x_2060);
    let x_2062 : f32 = u_xlat58;
    let x_2063 : f32 = u_xlat59;
    u_xlat58 = (x_2062 * x_2063);
    let x_2065 : u32 = u_xlatu40;
    let x_2068 : vec4<f32> = x_2011.x_AdditionalLightsSpotDir[bitcast<i32>(x_2065)];
    let x_2070 : vec4<f32> = u_xlat6;
    u_xlat59 = dot(vec3<f32>(x_2068.x, x_2068.y, x_2068.z), vec3<f32>(x_2070.x, x_2070.y, x_2070.z));
    let x_2073 : f32 = u_xlat59;
    let x_2074 : u32 = u_xlatu40;
    let x_2077 : f32 = x_2011.x_AdditionalLightsAttenuation[bitcast<i32>(x_2074)].z;
    let x_2079 : u32 = u_xlatu40;
    let x_2082 : f32 = x_2011.x_AdditionalLightsAttenuation[bitcast<i32>(x_2079)].w;
    u_xlat59 = ((x_2073 * x_2077) + x_2082);
    let x_2084 : f32 = u_xlat59;
    u_xlat59 = clamp(x_2084, 0.0f, 1.0f);
    let x_2086 : f32 = u_xlat59;
    let x_2087 : f32 = u_xlat59;
    u_xlat59 = (x_2086 * x_2087);
    let x_2089 : f32 = u_xlat58;
    let x_2090 : f32 = u_xlat59;
    u_xlat58 = (x_2089 * x_2090);
    let x_2093 : u32 = u_xlatu40;
    u_xlatu59 = (x_2093 >> 5u);
    let x_2096 : u32 = u_xlatu40;
    u_xlati60 = (1i << bitcast<u32>((bitcast<i32>(x_2096) & 31i)));
    let x_2102 : i32 = u_xlati60;
    let x_2104 : u32 = u_xlatu59;
    let x_2107 : f32 = x_1766.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2104)].el;
    u_xlati59 = bitcast<i32>((bitcast<u32>(x_2102) & bitcast<u32>(x_2107)));
    let x_2111 : i32 = u_xlati59;
    if ((x_2111 != 0i)) {
      let x_2121 : u32 = u_xlatu40;
      let x_2124 : f32 = x_2120.x_AdditionalLightsLightTypes[bitcast<i32>(x_2121)].el;
      u_xlati59 = i32(x_2124);
      let x_2126 : i32 = u_xlati59;
      u_xlati60 = select(1i, 0i, (x_2126 != 0i));
      let x_2130 : u32 = u_xlatu40;
      u_xlati7 = (bitcast<i32>(x_2130) << bitcast<u32>(2i));
      let x_2133 : i32 = u_xlati60;
      if ((x_2133 != 0i)) {
        let x_2138 : vec3<f32> = vs_TEXCOORD1;
        let x_2140 : i32 = u_xlati7;
        let x_2143 : i32 = u_xlati7;
        let x_2147 : vec4<f32> = x_2120.x_AdditionalLightsWorldToLights[((x_2140 + 1i) / 4i)][((x_2143 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_2138.y, x_2138.y, x_2138.y) * vec3<f32>(x_2147.x, x_2147.y, x_2147.w));
        let x_2150 : i32 = u_xlati7;
        let x_2152 : i32 = u_xlati7;
        let x_2155 : vec4<f32> = x_2120.x_AdditionalLightsWorldToLights[(x_2150 / 4i)][(x_2152 % 4i)];
        let x_2157 : vec3<f32> = vs_TEXCOORD1;
        let x_2160 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_2155.x, x_2155.y, x_2155.w) * vec3<f32>(x_2157.x, x_2157.x, x_2157.x)) + x_2160);
        let x_2162 : i32 = u_xlati7;
        let x_2165 : i32 = u_xlati7;
        let x_2169 : vec4<f32> = x_2120.x_AdditionalLightsWorldToLights[((x_2162 + 2i) / 4i)][((x_2165 + 2i) % 4i)];
        let x_2171 : vec3<f32> = vs_TEXCOORD1;
        let x_2174 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_2169.x, x_2169.y, x_2169.w) * vec3<f32>(x_2171.z, x_2171.z, x_2171.z)) + x_2174);
        let x_2176 : vec3<f32> = u_xlat25;
        let x_2177 : i32 = u_xlati7;
        let x_2180 : i32 = u_xlati7;
        let x_2184 : vec4<f32> = x_2120.x_AdditionalLightsWorldToLights[((x_2177 + 3i) / 4i)][((x_2180 + 3i) % 4i)];
        u_xlat25 = (x_2176 + vec3<f32>(x_2184.x, x_2184.y, x_2184.w));
        let x_2187 : vec3<f32> = u_xlat25;
        let x_2189 : vec3<f32> = u_xlat25;
        let x_2191 : vec2<f32> = (vec2<f32>(x_2187.x, x_2187.y) / vec2<f32>(x_2189.z, x_2189.z));
        let x_2192 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2191.x, x_2191.y, x_2192.z);
        let x_2194 : vec3<f32> = u_xlat25;
        let x_2197 : vec2<f32> = ((vec2<f32>(x_2194.x, x_2194.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2198 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2197.x, x_2197.y, x_2198.z);
        let x_2200 : vec3<f32> = u_xlat25;
        let x_2204 : vec2<f32> = clamp(vec2<f32>(x_2200.x, x_2200.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2205 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2204.x, x_2204.y, x_2205.z);
        let x_2207 : u32 = u_xlatu40;
        let x_2210 : vec4<f32> = x_2120.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2207)];
        let x_2212 : vec3<f32> = u_xlat25;
        let x_2215 : u32 = u_xlatu40;
        let x_2218 : vec4<f32> = x_2120.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2215)];
        let x_2220 : vec2<f32> = ((vec2<f32>(x_2210.x, x_2210.y) * vec2<f32>(x_2212.x, x_2212.y)) + vec2<f32>(x_2218.z, x_2218.w));
        let x_2221 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2220.x, x_2220.y, x_2221.z);
      } else {
        let x_2225 : i32 = u_xlati59;
        u_xlatb59 = (x_2225 == 1i);
        let x_2227 : bool = u_xlatb59;
        u_xlati59 = select(0i, 1i, x_2227);
        let x_2229 : i32 = u_xlati59;
        if ((x_2229 != 0i)) {
          let x_2233 : vec3<f32> = vs_TEXCOORD1;
          let x_2235 : i32 = u_xlati7;
          let x_2238 : i32 = u_xlati7;
          let x_2242 : vec4<f32> = x_2120.x_AdditionalLightsWorldToLights[((x_2235 + 1i) / 4i)][((x_2238 + 1i) % 4i)];
          let x_2244 : vec2<f32> = (vec2<f32>(x_2233.y, x_2233.y) * vec2<f32>(x_2242.x, x_2242.y));
          let x_2245 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2244.x, x_2244.y, x_2245.z, x_2245.w);
          let x_2247 : i32 = u_xlati7;
          let x_2249 : i32 = u_xlati7;
          let x_2252 : vec4<f32> = x_2120.x_AdditionalLightsWorldToLights[(x_2247 / 4i)][(x_2249 % 4i)];
          let x_2254 : vec3<f32> = vs_TEXCOORD1;
          let x_2257 : vec4<f32> = u_xlat8;
          let x_2259 : vec2<f32> = ((vec2<f32>(x_2252.x, x_2252.y) * vec2<f32>(x_2254.x, x_2254.x)) + vec2<f32>(x_2257.x, x_2257.y));
          let x_2260 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2259.x, x_2259.y, x_2260.z, x_2260.w);
          let x_2262 : i32 = u_xlati7;
          let x_2265 : i32 = u_xlati7;
          let x_2269 : vec4<f32> = x_2120.x_AdditionalLightsWorldToLights[((x_2262 + 2i) / 4i)][((x_2265 + 2i) % 4i)];
          let x_2271 : vec3<f32> = vs_TEXCOORD1;
          let x_2274 : vec4<f32> = u_xlat8;
          let x_2276 : vec2<f32> = ((vec2<f32>(x_2269.x, x_2269.y) * vec2<f32>(x_2271.z, x_2271.z)) + vec2<f32>(x_2274.x, x_2274.y));
          let x_2277 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2276.x, x_2276.y, x_2277.z, x_2277.w);
          let x_2279 : vec4<f32> = u_xlat8;
          let x_2281 : i32 = u_xlati7;
          let x_2284 : i32 = u_xlati7;
          let x_2288 : vec4<f32> = x_2120.x_AdditionalLightsWorldToLights[((x_2281 + 3i) / 4i)][((x_2284 + 3i) % 4i)];
          let x_2290 : vec2<f32> = (vec2<f32>(x_2279.x, x_2279.y) + vec2<f32>(x_2288.x, x_2288.y));
          let x_2291 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2290.x, x_2290.y, x_2291.z, x_2291.w);
          let x_2293 : vec4<f32> = u_xlat8;
          let x_2296 : vec2<f32> = ((vec2<f32>(x_2293.x, x_2293.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2297 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2296.x, x_2296.y, x_2297.z, x_2297.w);
          let x_2299 : vec4<f32> = u_xlat8;
          let x_2301 : vec2<f32> = fract(vec2<f32>(x_2299.x, x_2299.y));
          let x_2302 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2301.x, x_2301.y, x_2302.z, x_2302.w);
          let x_2304 : u32 = u_xlatu40;
          let x_2307 : vec4<f32> = x_2120.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2304)];
          let x_2309 : vec4<f32> = u_xlat8;
          let x_2312 : u32 = u_xlatu40;
          let x_2315 : vec4<f32> = x_2120.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2312)];
          let x_2317 : vec2<f32> = ((vec2<f32>(x_2307.x, x_2307.y) * vec2<f32>(x_2309.x, x_2309.y)) + vec2<f32>(x_2315.z, x_2315.w));
          let x_2318 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2317.x, x_2317.y, x_2318.z);
        } else {
          let x_2321 : vec3<f32> = vs_TEXCOORD1;
          let x_2323 : i32 = u_xlati7;
          let x_2326 : i32 = u_xlati7;
          let x_2330 : vec4<f32> = x_2120.x_AdditionalLightsWorldToLights[((x_2323 + 1i) / 4i)][((x_2326 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_2321.y, x_2321.y, x_2321.y, x_2321.y) * x_2330);
          let x_2332 : i32 = u_xlati7;
          let x_2334 : i32 = u_xlati7;
          let x_2337 : vec4<f32> = x_2120.x_AdditionalLightsWorldToLights[(x_2332 / 4i)][(x_2334 % 4i)];
          let x_2338 : vec3<f32> = vs_TEXCOORD1;
          let x_2341 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_2337 * vec4<f32>(x_2338.x, x_2338.x, x_2338.x, x_2338.x)) + x_2341);
          let x_2343 : i32 = u_xlati7;
          let x_2346 : i32 = u_xlati7;
          let x_2350 : vec4<f32> = x_2120.x_AdditionalLightsWorldToLights[((x_2343 + 2i) / 4i)][((x_2346 + 2i) % 4i)];
          let x_2351 : vec3<f32> = vs_TEXCOORD1;
          let x_2354 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_2350 * vec4<f32>(x_2351.z, x_2351.z, x_2351.z, x_2351.z)) + x_2354);
          let x_2356 : vec4<f32> = u_xlat8;
          let x_2357 : i32 = u_xlati7;
          let x_2360 : i32 = u_xlati7;
          let x_2364 : vec4<f32> = x_2120.x_AdditionalLightsWorldToLights[((x_2357 + 3i) / 4i)][((x_2360 + 3i) % 4i)];
          u_xlat8 = (x_2356 + x_2364);
          let x_2366 : vec4<f32> = u_xlat8;
          let x_2368 : vec4<f32> = u_xlat8;
          let x_2370 : vec3<f32> = (vec3<f32>(x_2366.x, x_2366.y, x_2366.z) / vec3<f32>(x_2368.w, x_2368.w, x_2368.w));
          let x_2371 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2370.x, x_2370.y, x_2370.z, x_2371.w);
          let x_2373 : vec4<f32> = u_xlat8;
          let x_2375 : vec4<f32> = u_xlat8;
          u_xlat59 = dot(vec3<f32>(x_2373.x, x_2373.y, x_2373.z), vec3<f32>(x_2375.x, x_2375.y, x_2375.z));
          let x_2378 : f32 = u_xlat59;
          u_xlat59 = inverseSqrt(x_2378);
          let x_2380 : f32 = u_xlat59;
          let x_2382 : vec4<f32> = u_xlat8;
          let x_2384 : vec3<f32> = (vec3<f32>(x_2380, x_2380, x_2380) * vec3<f32>(x_2382.x, x_2382.y, x_2382.z));
          let x_2385 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2384.x, x_2384.y, x_2384.z, x_2385.w);
          let x_2387 : vec4<f32> = u_xlat8;
          u_xlat59 = dot(abs(vec3<f32>(x_2387.x, x_2387.y, x_2387.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2392 : f32 = u_xlat59;
          u_xlat59 = max(x_2392, 0.000001f);
          let x_2395 : f32 = u_xlat59;
          u_xlat59 = (1.0f / x_2395);
          let x_2397 : f32 = u_xlat59;
          let x_2399 : vec4<f32> = u_xlat8;
          let x_2401 : vec3<f32> = (vec3<f32>(x_2397, x_2397, x_2397) * vec3<f32>(x_2399.z, x_2399.x, x_2399.y));
          let x_2402 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2401.x, x_2401.y, x_2401.z, x_2402.w);
          let x_2405 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_2405);
          let x_2409 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_2409, 0.0f, 1.0f);
          let x_2413 : vec4<f32> = u_xlat9;
          let x_2416 : vec4<bool> = (vec4<f32>(x_2413.y, x_2413.y, x_2413.y, x_2413.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2417 : vec2<bool> = vec2<bool>(x_2416.x, x_2416.w);
          let x_2418 : vec4<bool> = u_xlatb7;
          u_xlatb7 = vec4<bool>(x_2417.x, x_2418.y, x_2418.z, x_2417.y);
          let x_2421 : bool = u_xlatb7.x;
          if (x_2421) {
            let x_2426 : f32 = u_xlat9.x;
            x_2422 = x_2426;
          } else {
            let x_2429 : f32 = u_xlat9.x;
            x_2422 = -(x_2429);
          }
          let x_2431 : f32 = x_2422;
          u_xlat7.x = x_2431;
          let x_2434 : bool = u_xlatb7.w;
          if (x_2434) {
            let x_2439 : f32 = u_xlat9.x;
            x_2435 = x_2439;
          } else {
            let x_2442 : f32 = u_xlat9.x;
            x_2435 = -(x_2442);
          }
          let x_2444 : f32 = x_2435;
          u_xlat7.w = x_2444;
          let x_2446 : vec4<f32> = u_xlat8;
          let x_2448 : f32 = u_xlat59;
          let x_2451 : vec4<f32> = u_xlat7;
          let x_2453 : vec2<f32> = ((vec2<f32>(x_2446.x, x_2446.y) * vec2<f32>(x_2448, x_2448)) + vec2<f32>(x_2451.x, x_2451.w));
          let x_2454 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_2453.x, x_2454.y, x_2454.z, x_2453.y);
          let x_2456 : vec4<f32> = u_xlat7;
          let x_2459 : vec2<f32> = ((vec2<f32>(x_2456.x, x_2456.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2460 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_2459.x, x_2460.y, x_2460.z, x_2459.y);
          let x_2462 : vec4<f32> = u_xlat7;
          let x_2466 : vec2<f32> = clamp(vec2<f32>(x_2462.x, x_2462.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2467 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_2466.x, x_2467.y, x_2467.z, x_2466.y);
          let x_2469 : u32 = u_xlatu40;
          let x_2472 : vec4<f32> = x_2120.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2469)];
          let x_2474 : vec4<f32> = u_xlat7;
          let x_2477 : u32 = u_xlatu40;
          let x_2480 : vec4<f32> = x_2120.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2477)];
          let x_2482 : vec2<f32> = ((vec2<f32>(x_2472.x, x_2472.y) * vec2<f32>(x_2474.x, x_2474.w)) + vec2<f32>(x_2480.z, x_2480.w));
          let x_2483 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2482.x, x_2482.y, x_2483.z);
        }
      }
      let x_2490 : vec3<f32> = u_xlat25;
      let x_2493 : f32 = x_43.x_GlobalMipBias.x;
      let x_2494 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2490.x, x_2490.y), x_2493);
      u_xlat7 = x_2494;
      let x_2496 : bool = u_xlatb4.y;
      if (x_2496) {
        let x_2501 : f32 = u_xlat7.w;
        x_2497 = x_2501;
      } else {
        let x_2504 : f32 = u_xlat7.x;
        x_2497 = x_2504;
      }
      let x_2505 : f32 = x_2497;
      u_xlat59 = x_2505;
      let x_2507 : bool = u_xlatb4.x;
      if (x_2507) {
        let x_2511 : vec4<f32> = u_xlat7;
        x_2508 = vec3<f32>(x_2511.x, x_2511.y, x_2511.z);
      } else {
        let x_2514 : f32 = u_xlat59;
        x_2508 = vec3<f32>(x_2514, x_2514, x_2514);
      }
      let x_2516 : vec3<f32> = x_2508;
      let x_2517 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2516.x, x_2516.y, x_2516.z, x_2517.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_2523 : vec4<f32> = u_xlat7;
    let x_2525 : u32 = u_xlatu40;
    let x_2528 : vec4<f32> = x_2011.x_AdditionalLightsColor[bitcast<i32>(x_2525)];
    let x_2530 : vec3<f32> = (vec3<f32>(x_2523.x, x_2523.y, x_2523.z) * vec3<f32>(x_2528.x, x_2528.y, x_2528.z));
    let x_2531 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2530.x, x_2530.y, x_2530.z, x_2531.w);
    let x_2533 : f32 = u_xlat56;
    let x_2535 : vec4<f32> = u_xlat7;
    let x_2537 : vec3<f32> = (vec3<f32>(x_2533, x_2533, x_2533) * vec3<f32>(x_2535.x, x_2535.y, x_2535.z));
    let x_2538 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2537.x, x_2537.y, x_2537.z, x_2538.w);
    let x_2540 : f32 = u_xlat58;
    let x_2542 : vec4<f32> = u_xlat7;
    let x_2544 : vec3<f32> = (vec3<f32>(x_2540, x_2540, x_2540) * vec3<f32>(x_2542.x, x_2542.y, x_2542.z));
    let x_2545 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2544.x, x_2544.y, x_2544.z, x_2545.w);
    let x_2547 : vec4<f32> = u_xlat1;
    let x_2549 : vec4<f32> = u_xlat6;
    u_xlat40.x = dot(vec3<f32>(x_2547.x, x_2547.y, x_2547.z), vec3<f32>(x_2549.x, x_2549.y, x_2549.z));
    let x_2554 : f32 = u_xlat40.x;
    u_xlat40.x = clamp(x_2554, 0.0f, 1.0f);
    let x_2557 : vec2<f32> = u_xlat40;
    let x_2559 : vec4<f32> = u_xlat7;
    let x_2561 : vec3<f32> = (vec3<f32>(x_2557.x, x_2557.x, x_2557.x) * vec3<f32>(x_2559.x, x_2559.y, x_2559.z));
    let x_2562 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2561.x, x_2561.y, x_2561.z, x_2562.w);
    let x_2564 : vec4<f32> = u_xlat6;
    let x_2566 : vec4<f32> = u_xlat0;
    let x_2569 : vec4<f32> = u_xlat5;
    let x_2571 : vec3<f32> = ((vec3<f32>(x_2564.x, x_2564.y, x_2564.z) * vec3<f32>(x_2566.y, x_2566.z, x_2566.w)) + vec3<f32>(x_2569.x, x_2569.y, x_2569.z));
    let x_2572 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2571.x, x_2571.y, x_2571.z, x_2572.w);

    continuing {
      let x_2574 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2574 + bitcast<u32>(1i));
    }
  }
  let x_2577 : vec4<f32> = u_xlat3;
  let x_2579 : vec4<f32> = u_xlat0;
  let x_2582 : vec4<f32> = u_xlat2;
  u_xlat18 = ((vec3<f32>(x_2577.x, x_2577.y, x_2577.z) * vec3<f32>(x_2579.y, x_2579.z, x_2579.w)) + vec3<f32>(x_2582.x, x_2582.y, x_2582.z));
  let x_2587 : vec4<f32> = u_xlat5;
  let x_2589 : vec3<f32> = u_xlat18;
  let x_2590 : vec3<f32> = (vec3<f32>(x_2587.x, x_2587.y, x_2587.z) + x_2589);
  let x_2591 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2590.x, x_2590.y, x_2590.z, x_2591.w);
  let x_2595 : f32 = x_55.x_Surface;
  u_xlatb18 = (x_2595 == 1.0f);
  let x_2597 : bool = u_xlatb18;
  if (x_2597) {
    let x_2602 : f32 = u_xlat0.x;
    x_2598 = x_2602;
  } else {
    x_2598 = 1.0f;
  }
  let x_2604 : f32 = x_2598;
  SV_Target0.w = x_2604;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

