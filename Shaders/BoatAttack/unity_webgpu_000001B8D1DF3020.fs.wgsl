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
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_93 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_207 : MainLightShadows;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_660 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_965 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1079 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb12 : bool;
  var x_100 : f32;
  var u_xlatb1 : bool;
  var u_xlat12 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var x_172 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu3 : u32;
  var u_xlati3 : i32;
  var u_xlat14 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat35 : f32;
  var u_xlat37 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb14 : vec2<bool>;
  var u_xlatb25 : bool;
  var x_609 : f32;
  var u_xlat25 : f32;
  var x_744 : f32;
  var x_755 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlatu5 : u32;
  var u_xlatb16 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu39 : u32;
  var u_xlati7 : i32;
  var u_xlat39 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat7 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlatu8 : u32;
  var u_xlati19 : i32;
  var u_xlati8 : i32;
  var u_xlati30 : i32;
  var u_xlat9 : vec4<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatb8 : bool;
  var u_xlat10 : vec3<f32>;
  var u_xlatb31 : vec2<bool>;
  var u_xlat31 : vec2<f32>;
  var x_1400 : f32;
  var x_1413 : f32;
  var u_xlat41 : f32;
  var x_1475 : f32;
  var x_1486 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb11 : bool;
  var x_1635 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_64 : vec4<f32> = hlslcc_FragCoord;
  let x_68 : f32 = x_44.x_DitheringTextureInvSize;
  let x_70 : vec2<f32> = (vec2<f32>(x_64.x, x_64.y) * vec2<f32>(x_68, x_68));
  let x_71 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_70.x, x_70.y, x_71.z);
  let x_78 : vec3<f32> = u_xlat1;
  let x_81 : f32 = x_44.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_78.x, x_78.y), x_81);
  u_xlat1.x = x_82.w;
  let x_96 : f32 = x_93.unity_LODFade.x;
  u_xlatb12 = (x_96 >= 0.0f);
  let x_99 : bool = u_xlatb12;
  if (x_99) {
    let x_104 : f32 = u_xlat1.x;
    x_100 = abs(x_104);
  } else {
    let x_108 : f32 = u_xlat1.x;
    x_100 = -(abs(x_108));
  }
  let x_111 : f32 = x_100;
  u_xlat1.x = x_111;
  let x_114 : f32 = u_xlat1.x;
  let x_117 : f32 = x_93.unity_LODFade.x;
  u_xlat1.x = (-(x_114) + x_117);
  let x_122 : f32 = u_xlat1.x;
  u_xlatb1 = (x_122 < 0.0f);
  let x_124 : bool = u_xlatb1;
  if (((select(0i, 1i, x_124) * -1i) != 0i)) {
    discard;
  }
  let x_135 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb1 = (x_135 == 0.0f);
  let x_140 : vec3<f32> = vs_TEXCOORD1;
  let x_145 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat12 = (-(x_140) + x_145);
  let x_148 : vec3<f32> = u_xlat12;
  let x_149 : vec3<f32> = u_xlat12;
  u_xlat2.x = dot(x_148, x_149);
  let x_153 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_153);
  let x_156 : vec3<f32> = u_xlat12;
  let x_157 : vec4<f32> = u_xlat2;
  u_xlat12 = (x_156 * vec3<f32>(x_157.x, x_157.x, x_157.x));
  let x_162 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat2.x = x_162;
  let x_165 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat2.y = x_165;
  let x_169 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat2.z = x_169;
  let x_171 : bool = u_xlatb1;
  if (x_171) {
    let x_175 : vec3<f32> = u_xlat12;
    x_172 = x_175;
  } else {
    let x_177 : vec4<f32> = u_xlat2;
    x_172 = vec3<f32>(x_177.x, x_177.y, x_177.z);
  }
  let x_179 : vec3<f32> = x_172;
  u_xlat1 = x_179;
  let x_182 : vec3<f32> = vs_TEXCOORD2;
  let x_183 : vec3<f32> = vs_TEXCOORD2;
  u_xlat34 = dot(x_182, x_183);
  let x_185 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_185);
  let x_187 : f32 = u_xlat34;
  let x_189 : vec3<f32> = vs_TEXCOORD2;
  let x_190 : vec3<f32> = (vec3<f32>(x_187, x_187, x_187) * x_189);
  let x_191 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_193 : vec3<f32> = u_xlat1;
  let x_194 : vec3<f32> = u_xlat1;
  u_xlat34 = dot(x_193, x_194);
  let x_196 : f32 = u_xlat34;
  u_xlat34 = max(x_196, 1.17549435e-37f);
  let x_199 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_199);
  let x_202 : vec3<f32> = vs_TEXCOORD1;
  let x_209 : vec4<f32> = x_207.x_CascadeShadowSplitSpheres0;
  let x_212 : vec3<f32> = (x_202 + -(vec3<f32>(x_209.x, x_209.y, x_209.z)));
  let x_213 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_216 : vec3<f32> = vs_TEXCOORD1;
  let x_218 : vec4<f32> = x_207.x_CascadeShadowSplitSpheres1;
  let x_221 : vec3<f32> = (x_216 + -(vec3<f32>(x_218.x, x_218.y, x_218.z)));
  let x_222 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  let x_225 : vec3<f32> = vs_TEXCOORD1;
  let x_228 : vec4<f32> = x_207.x_CascadeShadowSplitSpheres2;
  let x_231 : vec3<f32> = (x_225 + -(vec3<f32>(x_228.x, x_228.y, x_228.z)));
  let x_232 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_235 : vec3<f32> = vs_TEXCOORD1;
  let x_238 : vec4<f32> = x_207.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_235 + -(vec3<f32>(x_238.x, x_238.y, x_238.z)));
  let x_242 : vec4<f32> = u_xlat3;
  let x_244 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_242.x, x_242.y, x_242.z), vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_248 : vec4<f32> = u_xlat4;
  let x_250 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_248.x, x_248.y, x_248.z), vec3<f32>(x_250.x, x_250.y, x_250.z));
  let x_254 : vec4<f32> = u_xlat5;
  let x_256 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_254.x, x_254.y, x_254.z), vec3<f32>(x_256.x, x_256.y, x_256.z));
  let x_260 : vec3<f32> = u_xlat6;
  let x_261 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_260, x_261);
  let x_267 : vec4<f32> = u_xlat3;
  let x_270 : vec4<f32> = x_207.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_267 < x_270);
  let x_273 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_273);
  let x_277 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_277);
  let x_281 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_281);
  let x_285 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_285);
  let x_289 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_289);
  let x_295 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_295);
  let x_299 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_299);
  let x_302 : vec4<f32> = u_xlat3;
  let x_304 : vec4<f32> = u_xlat4;
  let x_306 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) + vec3<f32>(x_304.y, x_304.z, x_304.w));
  let x_307 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_309 : vec4<f32> = u_xlat3;
  let x_312 : vec3<f32> = max(vec3<f32>(x_309.x, x_309.y, x_309.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_313 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_313.x, x_312.x, x_312.y, x_312.z);
  let x_315 : vec4<f32> = u_xlat4;
  u_xlat3.x = dot(x_315, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_323 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_323) + 4.0f);
  let x_330 : f32 = u_xlat3.x;
  u_xlatu3 = u32(x_330);
  let x_334 : u32 = u_xlatu3;
  u_xlati3 = (bitcast<i32>(x_334) << bitcast<u32>(2i));
  let x_338 : vec3<f32> = vs_TEXCOORD1;
  let x_340 : i32 = u_xlati3;
  let x_343 : i32 = u_xlati3;
  let x_347 : vec4<f32> = x_207.x_MainLightWorldToShadow[((x_340 + 1i) / 4i)][((x_343 + 1i) % 4i)];
  u_xlat14 = (vec3<f32>(x_338.y, x_338.y, x_338.y) * vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : i32 = u_xlati3;
  let x_352 : i32 = u_xlati3;
  let x_355 : vec4<f32> = x_207.x_MainLightWorldToShadow[(x_350 / 4i)][(x_352 % 4i)];
  let x_357 : vec3<f32> = vs_TEXCOORD1;
  let x_360 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_355.x, x_355.y, x_355.z) * vec3<f32>(x_357.x, x_357.x, x_357.x)) + x_360);
  let x_362 : i32 = u_xlati3;
  let x_365 : i32 = u_xlati3;
  let x_369 : vec4<f32> = x_207.x_MainLightWorldToShadow[((x_362 + 2i) / 4i)][((x_365 + 2i) % 4i)];
  let x_371 : vec3<f32> = vs_TEXCOORD1;
  let x_374 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_369.x, x_369.y, x_369.z) * vec3<f32>(x_371.z, x_371.z, x_371.z)) + x_374);
  let x_376 : vec3<f32> = u_xlat14;
  let x_377 : i32 = u_xlati3;
  let x_380 : i32 = u_xlati3;
  let x_384 : vec4<f32> = x_207.x_MainLightWorldToShadow[((x_377 + 3i) / 4i)][((x_380 + 3i) % 4i)];
  let x_386 : vec3<f32> = (x_376 + vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_391 : f32 = vs_TEXCOORD1.y;
  let x_393 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat36 = (x_391 * x_393);
  let x_396 : f32 = x_44.unity_MatrixV[0i].z;
  let x_398 : f32 = vs_TEXCOORD1.x;
  let x_400 : f32 = u_xlat36;
  u_xlat36 = ((x_396 * x_398) + x_400);
  let x_403 : f32 = x_44.unity_MatrixV[2i].z;
  let x_405 : f32 = vs_TEXCOORD1.z;
  let x_407 : f32 = u_xlat36;
  u_xlat36 = ((x_403 * x_405) + x_407);
  let x_409 : f32 = u_xlat36;
  let x_411 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat36 = (x_409 + x_411);
  let x_413 : f32 = u_xlat36;
  let x_417 : f32 = x_44.x_ProjectionParams.y;
  u_xlat36 = (-(x_413) + -(x_417));
  let x_420 : f32 = u_xlat36;
  u_xlat36 = max(x_420, 0.0f);
  let x_422 : f32 = u_xlat36;
  let x_425 : f32 = x_44.unity_FogParams.x;
  u_xlat36 = (x_422 * x_425);
  u_xlat2.w = 1.0f;
  let x_430 : vec4<f32> = x_93.unity_SHAr;
  let x_431 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_430, x_431);
  let x_436 : vec4<f32> = x_93.unity_SHAg;
  let x_437 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_436, x_437);
  let x_442 : vec4<f32> = x_93.unity_SHAb;
  let x_443 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_442, x_443);
  let x_446 : vec4<f32> = u_xlat2;
  let x_448 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_446.y, x_446.z, x_446.z, x_446.x) * vec4<f32>(x_448.x, x_448.y, x_448.z, x_448.z));
  let x_453 : vec4<f32> = x_93.unity_SHBr;
  let x_454 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_453, x_454);
  let x_459 : vec4<f32> = x_93.unity_SHBg;
  let x_460 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_459, x_460);
  let x_465 : vec4<f32> = x_93.unity_SHBb;
  let x_466 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_465, x_466);
  let x_471 : f32 = u_xlat2.y;
  let x_473 : f32 = u_xlat2.y;
  u_xlat35 = (x_471 * x_473);
  let x_476 : f32 = u_xlat2.x;
  let x_478 : f32 = u_xlat2.x;
  let x_480 : f32 = u_xlat35;
  u_xlat35 = ((x_476 * x_478) + -(x_480));
  let x_485 : vec4<f32> = x_93.unity_SHC;
  let x_487 : f32 = u_xlat35;
  let x_490 : vec3<f32> = u_xlat6;
  let x_491 : vec3<f32> = ((vec3<f32>(x_485.x, x_485.y, x_485.z) * vec3<f32>(x_487, x_487, x_487)) + x_490);
  let x_492 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_494 : vec4<f32> = u_xlat4;
  let x_496 : vec4<f32> = u_xlat5;
  let x_498 : vec3<f32> = (vec3<f32>(x_494.x, x_494.y, x_494.z) + vec3<f32>(x_496.x, x_496.y, x_496.z));
  let x_499 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_501 : vec4<f32> = u_xlat4;
  let x_503 : vec3<f32> = max(vec3<f32>(x_501.x, x_501.y, x_501.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_504 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_508 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_509 : vec2<f32> = vec2<f32>(x_508.x, x_508.y);
  let x_513 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_509.x, x_509.y));
  let x_514 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_513.x, x_513.y, x_514.z, x_514.w);
  let x_516 : vec4<f32> = u_xlat5;
  let x_518 : vec4<f32> = hlslcc_FragCoord;
  let x_520 : vec2<f32> = (vec2<f32>(x_516.x, x_516.y) * vec2<f32>(x_518.x, x_518.y));
  let x_521 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_520.x, x_520.y, x_521.z, x_521.w);
  let x_524 : f32 = u_xlat5.y;
  let x_527 : f32 = x_44.x_ScaleBiasRt.x;
  let x_530 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat35 = ((x_524 * x_527) + x_530);
  let x_532 : f32 = u_xlat35;
  u_xlat5.z = (-(x_532) + 1.0f);
  let x_541 : vec4<f32> = u_xlat5;
  let x_544 : f32 = x_44.x_GlobalMipBias.x;
  let x_545 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_541.x, x_541.z), x_544);
  u_xlat35 = x_545.x;
  let x_548 : f32 = u_xlat35;
  u_xlat37 = (x_548 + -1.0f);
  let x_551 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_552 : f32 = u_xlat37;
  u_xlat37 = ((x_551 * x_552) + 1.0f);
  let x_555 : f32 = u_xlat35;
  u_xlat35 = min(x_555, 1.0f);
  let x_558 : vec4<f32> = u_xlat3;
  let x_559 : vec2<f32> = vec2<f32>(x_558.x, x_558.y);
  let x_561 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_559.x, x_559.y, x_561);
  let x_573 : vec3<f32> = txVec0;
  let x_575 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_573.xy, x_573.z);
  u_xlat3.x = x_575;
  let x_578 : f32 = x_207.x_MainLightShadowParams.x;
  u_xlat14.x = (-(x_578) + 1.0f);
  let x_583 : f32 = u_xlat3.x;
  let x_585 : f32 = x_207.x_MainLightShadowParams.x;
  let x_588 : f32 = u_xlat14.x;
  u_xlat3.x = ((x_583 * x_585) + x_588);
  let x_595 : f32 = u_xlat3.z;
  u_xlatb14.x = (0.0f >= x_595);
  let x_600 : f32 = u_xlat3.z;
  u_xlatb25 = (x_600 >= 1.0f);
  let x_602 : bool = u_xlatb25;
  let x_604 : bool = u_xlatb14.x;
  u_xlatb14.x = (x_602 | x_604);
  let x_608 : bool = u_xlatb14.x;
  if (x_608) {
    x_609 = 1.0f;
  } else {
    let x_614 : f32 = u_xlat3.x;
    x_609 = x_614;
  }
  let x_615 : f32 = x_609;
  u_xlat3.x = x_615;
  let x_617 : vec3<f32> = vs_TEXCOORD1;
  let x_619 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_621 : vec3<f32> = (x_617 + -(x_619));
  let x_622 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_624 : vec4<f32> = u_xlat5;
  let x_626 : vec4<f32> = u_xlat5;
  u_xlat14.x = dot(vec3<f32>(x_624.x, x_624.y, x_624.z), vec3<f32>(x_626.x, x_626.y, x_626.z));
  let x_631 : f32 = u_xlat14.x;
  let x_633 : f32 = x_207.x_MainLightShadowParams.z;
  let x_636 : f32 = x_207.x_MainLightShadowParams.w;
  u_xlat14.x = ((x_631 * x_633) + x_636);
  let x_640 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_640, 0.0f, 1.0f);
  let x_645 : f32 = u_xlat3.x;
  u_xlat25 = (-(x_645) + 1.0f);
  let x_649 : f32 = u_xlat14.x;
  let x_650 : f32 = u_xlat25;
  let x_653 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_649 * x_650) + x_653);
  let x_662 : f32 = x_660.x_MainLightCookieTextureFormat;
  u_xlatb14.x = !((x_662 == -1.0f));
  let x_666 : bool = u_xlatb14.x;
  if (x_666) {
    let x_669 : vec3<f32> = vs_TEXCOORD1;
    let x_672 : vec4<f32> = x_660.x_MainLightWorldToLight[1i];
    let x_674 : vec2<f32> = (vec2<f32>(x_669.y, x_669.y) * vec2<f32>(x_672.x, x_672.y));
    let x_675 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_674.x, x_674.y, x_675.z);
    let x_678 : vec4<f32> = x_660.x_MainLightWorldToLight[0i];
    let x_680 : vec3<f32> = vs_TEXCOORD1;
    let x_683 : vec3<f32> = u_xlat14;
    let x_685 : vec2<f32> = ((vec2<f32>(x_678.x, x_678.y) * vec2<f32>(x_680.x, x_680.x)) + vec2<f32>(x_683.x, x_683.y));
    let x_686 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_685.x, x_685.y, x_686.z);
    let x_689 : vec4<f32> = x_660.x_MainLightWorldToLight[2i];
    let x_691 : vec3<f32> = vs_TEXCOORD1;
    let x_694 : vec3<f32> = u_xlat14;
    let x_696 : vec2<f32> = ((vec2<f32>(x_689.x, x_689.y) * vec2<f32>(x_691.z, x_691.z)) + vec2<f32>(x_694.x, x_694.y));
    let x_697 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_696.x, x_696.y, x_697.z);
    let x_699 : vec3<f32> = u_xlat14;
    let x_702 : vec4<f32> = x_660.x_MainLightWorldToLight[3i];
    let x_704 : vec2<f32> = (vec2<f32>(x_699.x, x_699.y) + vec2<f32>(x_702.x, x_702.y));
    let x_705 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_704.x, x_704.y, x_705.z);
    let x_707 : vec3<f32> = u_xlat14;
    let x_712 : vec2<f32> = ((vec2<f32>(x_707.x, x_707.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_713 : vec3<f32> = u_xlat14;
    u_xlat14 = vec3<f32>(x_712.x, x_712.y, x_713.z);
    let x_720 : vec3<f32> = u_xlat14;
    let x_723 : f32 = x_44.x_GlobalMipBias.x;
    let x_724 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_720.x, x_720.y), x_723);
    u_xlat5 = x_724;
    let x_726 : f32 = x_660.x_MainLightCookieTextureFormat;
    let x_728 : f32 = x_660.x_MainLightCookieTextureFormat;
    let x_730 : f32 = x_660.x_MainLightCookieTextureFormat;
    let x_732 : f32 = x_660.x_MainLightCookieTextureFormat;
    let x_733 : vec4<f32> = vec4<f32>(x_726, x_728, x_730, x_732);
    let x_740 : vec4<bool> = (vec4<f32>(x_733.x, x_733.y, x_733.z, x_733.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb14 = vec2<bool>(x_740.x, x_740.y);
    let x_743 : bool = u_xlatb14.y;
    if (x_743) {
      let x_748 : f32 = u_xlat5.w;
      x_744 = x_748;
    } else {
      let x_751 : f32 = u_xlat5.x;
      x_744 = x_751;
    }
    let x_752 : f32 = x_744;
    u_xlat25 = x_752;
    let x_754 : bool = u_xlatb14.x;
    if (x_754) {
      let x_758 : vec4<f32> = u_xlat5;
      x_755 = vec3<f32>(x_758.x, x_758.y, x_758.z);
    } else {
      let x_761 : f32 = u_xlat25;
      x_755 = vec3<f32>(x_761, x_761, x_761);
    }
    let x_763 : vec3<f32> = x_755;
    let x_764 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_770 : vec4<f32> = u_xlat5;
  let x_773 : vec4<f32> = x_44.x_MainLightColor;
  let x_775 : vec3<f32> = (vec3<f32>(x_770.x, x_770.y, x_770.z) * vec3<f32>(x_773.x, x_773.y, x_773.z));
  let x_776 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_778 : f32 = u_xlat37;
  let x_780 : vec4<f32> = u_xlat5;
  let x_782 : vec3<f32> = (vec3<f32>(x_778, x_778, x_778) * vec3<f32>(x_780.x, x_780.y, x_780.z));
  let x_783 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  let x_785 : f32 = u_xlat35;
  let x_787 : vec4<f32> = u_xlat4;
  let x_789 : vec3<f32> = (vec3<f32>(x_785, x_785, x_785) * vec3<f32>(x_787.x, x_787.y, x_787.z));
  let x_790 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_789.x, x_789.y, x_789.z, x_790.w);
  let x_793 : f32 = u_xlat3.x;
  let x_795 : f32 = x_93.unity_LightData.z;
  u_xlat35 = (x_793 * x_795);
  let x_797 : f32 = u_xlat35;
  let x_799 : vec4<f32> = u_xlat5;
  let x_801 : vec3<f32> = (vec3<f32>(x_797, x_797, x_797) * vec3<f32>(x_799.x, x_799.y, x_799.z));
  let x_802 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_801.x, x_801.y, x_801.z, x_802.w);
  let x_804 : vec4<f32> = u_xlat2;
  let x_807 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat35 = dot(vec3<f32>(x_804.x, x_804.y, x_804.z), vec3<f32>(x_807.x, x_807.y, x_807.z));
  let x_810 : f32 = u_xlat35;
  u_xlat35 = clamp(x_810, 0.0f, 1.0f);
  let x_812 : f32 = u_xlat35;
  let x_814 : vec4<f32> = u_xlat3;
  let x_816 : vec3<f32> = (vec3<f32>(x_812, x_812, x_812) * vec3<f32>(x_814.x, x_814.y, x_814.z));
  let x_817 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_820 : f32 = u_xlat0.x;
  u_xlat35 = ((x_820 * 10.0f) + 1.0f);
  let x_824 : f32 = u_xlat35;
  u_xlat35 = exp2(x_824);
  let x_826 : vec3<f32> = u_xlat1;
  let x_827 : f32 = u_xlat34;
  let x_831 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = ((x_826 * vec3<f32>(x_827, x_827, x_827)) + vec3<f32>(x_831.x, x_831.y, x_831.z));
  let x_835 : vec3<f32> = u_xlat6;
  let x_836 : vec3<f32> = u_xlat6;
  u_xlat38 = dot(x_835, x_836);
  let x_838 : f32 = u_xlat38;
  u_xlat38 = max(x_838, 1.17549435e-37f);
  let x_840 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_840);
  let x_842 : f32 = u_xlat38;
  let x_844 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_842, x_842, x_842) * x_844);
  let x_846 : vec4<f32> = u_xlat2;
  let x_848 : vec3<f32> = u_xlat6;
  u_xlat38 = dot(vec3<f32>(x_846.x, x_846.y, x_846.z), x_848);
  let x_850 : f32 = u_xlat38;
  u_xlat38 = clamp(x_850, 0.0f, 1.0f);
  let x_852 : f32 = u_xlat38;
  u_xlat38 = log2(x_852);
  let x_854 : f32 = u_xlat35;
  let x_855 : f32 = u_xlat38;
  u_xlat38 = (x_854 * x_855);
  let x_857 : f32 = u_xlat38;
  u_xlat38 = exp2(x_857);
  let x_859 : f32 = u_xlat38;
  let x_862 : vec4<f32> = x_56.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_859, x_859, x_859) * vec3<f32>(x_862.x, x_862.y, x_862.z));
  let x_865 : vec4<f32> = u_xlat3;
  let x_867 : vec3<f32> = u_xlat6;
  let x_868 : vec3<f32> = (vec3<f32>(x_865.x, x_865.y, x_865.z) * x_867);
  let x_869 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
  let x_871 : vec4<f32> = u_xlat5;
  let x_873 : vec4<f32> = u_xlat0;
  let x_876 : vec4<f32> = u_xlat3;
  let x_878 : vec3<f32> = ((vec3<f32>(x_871.x, x_871.y, x_871.z) * vec3<f32>(x_873.y, x_873.z, x_873.w)) + vec3<f32>(x_876.x, x_876.y, x_876.z));
  let x_879 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
  let x_882 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_884 : f32 = x_93.unity_LightData.y;
  u_xlat5.x = min(x_882, x_884);
  let x_889 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_889));
  let x_894 : f32 = x_660.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_896 : f32 = x_660.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_898 : f32 = x_660.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_900 : f32 = x_660.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_901 : vec4<f32> = vec4<f32>(x_894, x_896, x_898, x_900);
  let x_907 : vec4<bool> = (vec4<f32>(x_901.x, x_901.y, x_901.z, x_901.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb16 = vec2<bool>(x_907.x, x_907.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_918 : u32 = u_xlatu_loop_1;
    let x_919 : u32 = u_xlatu5;
    if ((x_918 < x_919)) {
    } else {
      break;
    }
    let x_922 : u32 = u_xlatu_loop_1;
    u_xlatu39 = (x_922 >> 2u);
    let x_925 : u32 = u_xlatu_loop_1;
    u_xlati7 = bitcast<i32>((x_925 & 3u));
    let x_929 : u32 = u_xlatu39;
    let x_932 : vec4<f32> = x_93.unity_LightIndices[bitcast<i32>(x_929)];
    let x_942 : i32 = u_xlati7;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_947 : vec4<u32> = indexable[x_942];
    u_xlat39 = dot(x_932, bitcast<vec4<f32>>(x_947));
    let x_950 : f32 = u_xlat39;
    u_xlatu39 = bitcast<u32>(i32(x_950));
    let x_954 : vec3<f32> = vs_TEXCOORD1;
    let x_966 : u32 = u_xlatu39;
    let x_969 : vec4<f32> = x_965.x_AdditionalLightsPosition[bitcast<i32>(x_966)];
    let x_972 : u32 = u_xlatu39;
    let x_975 : vec4<f32> = x_965.x_AdditionalLightsPosition[bitcast<i32>(x_972)];
    u_xlat7 = ((-(x_954) * vec3<f32>(x_969.w, x_969.w, x_969.w)) + vec3<f32>(x_975.x, x_975.y, x_975.z));
    let x_979 : vec3<f32> = u_xlat7;
    let x_980 : vec3<f32> = u_xlat7;
    u_xlat40 = dot(x_979, x_980);
    let x_982 : f32 = u_xlat40;
    u_xlat40 = max(x_982, 6.10351562e-05f);
    let x_986 : f32 = u_xlat40;
    u_xlat8.x = inverseSqrt(x_986);
    let x_989 : vec3<f32> = u_xlat7;
    let x_990 : vec4<f32> = u_xlat8;
    u_xlat7 = (x_989 * vec3<f32>(x_990.x, x_990.x, x_990.x));
    let x_993 : f32 = u_xlat40;
    u_xlat8.x = (1.0f / x_993);
    let x_996 : f32 = u_xlat40;
    let x_997 : u32 = u_xlatu39;
    let x_1000 : f32 = x_965.x_AdditionalLightsAttenuation[bitcast<i32>(x_997)].x;
    u_xlat40 = (x_996 * x_1000);
    let x_1002 : f32 = u_xlat40;
    let x_1004 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1002) * x_1004) + 1.0f);
    let x_1007 : f32 = u_xlat40;
    u_xlat40 = max(x_1007, 0.0f);
    let x_1009 : f32 = u_xlat40;
    let x_1010 : f32 = u_xlat40;
    u_xlat40 = (x_1009 * x_1010);
    let x_1012 : f32 = u_xlat40;
    let x_1014 : f32 = u_xlat8.x;
    u_xlat40 = (x_1012 * x_1014);
    let x_1016 : u32 = u_xlatu39;
    let x_1019 : vec4<f32> = x_965.x_AdditionalLightsSpotDir[bitcast<i32>(x_1016)];
    let x_1021 : vec3<f32> = u_xlat7;
    u_xlat8.x = dot(vec3<f32>(x_1019.x, x_1019.y, x_1019.z), x_1021);
    let x_1025 : f32 = u_xlat8.x;
    let x_1026 : u32 = u_xlatu39;
    let x_1029 : f32 = x_965.x_AdditionalLightsAttenuation[bitcast<i32>(x_1026)].z;
    let x_1031 : u32 = u_xlatu39;
    let x_1034 : f32 = x_965.x_AdditionalLightsAttenuation[bitcast<i32>(x_1031)].w;
    u_xlat8.x = ((x_1025 * x_1029) + x_1034);
    let x_1038 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1038, 0.0f, 1.0f);
    let x_1042 : f32 = u_xlat8.x;
    let x_1044 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1042 * x_1044);
    let x_1047 : f32 = u_xlat40;
    let x_1049 : f32 = u_xlat8.x;
    u_xlat40 = (x_1047 * x_1049);
    let x_1052 : u32 = u_xlatu39;
    u_xlatu8 = (x_1052 >> 5u);
    let x_1055 : u32 = u_xlatu39;
    u_xlati19 = (1i << bitcast<u32>((bitcast<i32>(x_1055) & 31i)));
    let x_1061 : i32 = u_xlati19;
    let x_1063 : u32 = u_xlatu8;
    let x_1066 : f32 = x_660.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1063)].el;
    u_xlati8 = bitcast<i32>((bitcast<u32>(x_1061) & bitcast<u32>(x_1066)));
    let x_1070 : i32 = u_xlati8;
    if ((x_1070 != 0i)) {
      let x_1080 : u32 = u_xlatu39;
      let x_1083 : f32 = x_1079.x_AdditionalLightsLightTypes[bitcast<i32>(x_1080)].el;
      u_xlati8 = i32(x_1083);
      let x_1085 : i32 = u_xlati8;
      u_xlati19 = select(1i, 0i, (x_1085 != 0i));
      let x_1089 : u32 = u_xlatu39;
      u_xlati30 = (bitcast<i32>(x_1089) << bitcast<u32>(2i));
      let x_1092 : i32 = u_xlati19;
      if ((x_1092 != 0i)) {
        let x_1097 : vec3<f32> = vs_TEXCOORD1;
        let x_1099 : i32 = u_xlati30;
        let x_1102 : i32 = u_xlati30;
        let x_1106 : vec4<f32> = x_1079.x_AdditionalLightsWorldToLights[((x_1099 + 1i) / 4i)][((x_1102 + 1i) % 4i)];
        let x_1108 : vec3<f32> = (vec3<f32>(x_1097.y, x_1097.y, x_1097.y) * vec3<f32>(x_1106.x, x_1106.y, x_1106.w));
        let x_1109 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
        let x_1111 : i32 = u_xlati30;
        let x_1113 : i32 = u_xlati30;
        let x_1116 : vec4<f32> = x_1079.x_AdditionalLightsWorldToLights[(x_1111 / 4i)][(x_1113 % 4i)];
        let x_1118 : vec3<f32> = vs_TEXCOORD1;
        let x_1121 : vec4<f32> = u_xlat9;
        let x_1123 : vec3<f32> = ((vec3<f32>(x_1116.x, x_1116.y, x_1116.w) * vec3<f32>(x_1118.x, x_1118.x, x_1118.x)) + vec3<f32>(x_1121.x, x_1121.y, x_1121.z));
        let x_1124 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1123.x, x_1123.y, x_1123.z, x_1124.w);
        let x_1126 : i32 = u_xlati30;
        let x_1129 : i32 = u_xlati30;
        let x_1133 : vec4<f32> = x_1079.x_AdditionalLightsWorldToLights[((x_1126 + 2i) / 4i)][((x_1129 + 2i) % 4i)];
        let x_1135 : vec3<f32> = vs_TEXCOORD1;
        let x_1138 : vec4<f32> = u_xlat9;
        let x_1140 : vec3<f32> = ((vec3<f32>(x_1133.x, x_1133.y, x_1133.w) * vec3<f32>(x_1135.z, x_1135.z, x_1135.z)) + vec3<f32>(x_1138.x, x_1138.y, x_1138.z));
        let x_1141 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1141.w);
        let x_1143 : vec4<f32> = u_xlat9;
        let x_1145 : i32 = u_xlati30;
        let x_1148 : i32 = u_xlati30;
        let x_1152 : vec4<f32> = x_1079.x_AdditionalLightsWorldToLights[((x_1145 + 3i) / 4i)][((x_1148 + 3i) % 4i)];
        let x_1154 : vec3<f32> = (vec3<f32>(x_1143.x, x_1143.y, x_1143.z) + vec3<f32>(x_1152.x, x_1152.y, x_1152.w));
        let x_1155 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1155.w);
        let x_1158 : vec4<f32> = u_xlat9;
        let x_1160 : vec4<f32> = u_xlat9;
        let x_1162 : vec2<f32> = (vec2<f32>(x_1158.x, x_1158.y) / vec2<f32>(x_1160.z, x_1160.z));
        let x_1163 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_1162.x, x_1163.y, x_1162.y);
        let x_1165 : vec3<f32> = u_xlat19;
        let x_1168 : vec2<f32> = ((vec2<f32>(x_1165.x, x_1165.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1169 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_1168.x, x_1169.y, x_1168.y);
        let x_1171 : vec3<f32> = u_xlat19;
        let x_1175 : vec2<f32> = clamp(vec2<f32>(x_1171.x, x_1171.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1176 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_1175.x, x_1176.y, x_1175.y);
        let x_1178 : u32 = u_xlatu39;
        let x_1181 : vec4<f32> = x_1079.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1178)];
        let x_1183 : vec3<f32> = u_xlat19;
        let x_1186 : u32 = u_xlatu39;
        let x_1189 : vec4<f32> = x_1079.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1186)];
        let x_1191 : vec2<f32> = ((vec2<f32>(x_1181.x, x_1181.y) * vec2<f32>(x_1183.x, x_1183.z)) + vec2<f32>(x_1189.z, x_1189.w));
        let x_1192 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_1191.x, x_1192.y, x_1191.y);
      } else {
        let x_1196 : i32 = u_xlati8;
        u_xlatb8 = (x_1196 == 1i);
        let x_1198 : bool = u_xlatb8;
        u_xlati8 = select(0i, 1i, x_1198);
        let x_1200 : i32 = u_xlati8;
        if ((x_1200 != 0i)) {
          let x_1204 : vec3<f32> = vs_TEXCOORD1;
          let x_1206 : i32 = u_xlati30;
          let x_1209 : i32 = u_xlati30;
          let x_1213 : vec4<f32> = x_1079.x_AdditionalLightsWorldToLights[((x_1206 + 1i) / 4i)][((x_1209 + 1i) % 4i)];
          let x_1215 : vec2<f32> = (vec2<f32>(x_1204.y, x_1204.y) * vec2<f32>(x_1213.x, x_1213.y));
          let x_1216 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1215.x, x_1215.y, x_1216.z, x_1216.w);
          let x_1218 : i32 = u_xlati30;
          let x_1220 : i32 = u_xlati30;
          let x_1223 : vec4<f32> = x_1079.x_AdditionalLightsWorldToLights[(x_1218 / 4i)][(x_1220 % 4i)];
          let x_1225 : vec3<f32> = vs_TEXCOORD1;
          let x_1228 : vec4<f32> = u_xlat9;
          let x_1230 : vec2<f32> = ((vec2<f32>(x_1223.x, x_1223.y) * vec2<f32>(x_1225.x, x_1225.x)) + vec2<f32>(x_1228.x, x_1228.y));
          let x_1231 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1230.x, x_1230.y, x_1231.z, x_1231.w);
          let x_1233 : i32 = u_xlati30;
          let x_1236 : i32 = u_xlati30;
          let x_1240 : vec4<f32> = x_1079.x_AdditionalLightsWorldToLights[((x_1233 + 2i) / 4i)][((x_1236 + 2i) % 4i)];
          let x_1242 : vec3<f32> = vs_TEXCOORD1;
          let x_1245 : vec4<f32> = u_xlat9;
          let x_1247 : vec2<f32> = ((vec2<f32>(x_1240.x, x_1240.y) * vec2<f32>(x_1242.z, x_1242.z)) + vec2<f32>(x_1245.x, x_1245.y));
          let x_1248 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1247.x, x_1247.y, x_1248.z, x_1248.w);
          let x_1250 : vec4<f32> = u_xlat9;
          let x_1252 : i32 = u_xlati30;
          let x_1255 : i32 = u_xlati30;
          let x_1259 : vec4<f32> = x_1079.x_AdditionalLightsWorldToLights[((x_1252 + 3i) / 4i)][((x_1255 + 3i) % 4i)];
          let x_1261 : vec2<f32> = (vec2<f32>(x_1250.x, x_1250.y) + vec2<f32>(x_1259.x, x_1259.y));
          let x_1262 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1261.x, x_1261.y, x_1262.z, x_1262.w);
          let x_1264 : vec4<f32> = u_xlat9;
          let x_1267 : vec2<f32> = ((vec2<f32>(x_1264.x, x_1264.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1268 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1267.x, x_1267.y, x_1268.z, x_1268.w);
          let x_1270 : vec4<f32> = u_xlat9;
          let x_1272 : vec2<f32> = fract(vec2<f32>(x_1270.x, x_1270.y));
          let x_1273 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1272.x, x_1272.y, x_1273.z, x_1273.w);
          let x_1275 : u32 = u_xlatu39;
          let x_1278 : vec4<f32> = x_1079.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1275)];
          let x_1280 : vec4<f32> = u_xlat9;
          let x_1283 : u32 = u_xlatu39;
          let x_1286 : vec4<f32> = x_1079.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1283)];
          let x_1288 : vec2<f32> = ((vec2<f32>(x_1278.x, x_1278.y) * vec2<f32>(x_1280.x, x_1280.y)) + vec2<f32>(x_1286.z, x_1286.w));
          let x_1289 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1288.x, x_1289.y, x_1288.y);
        } else {
          let x_1292 : vec3<f32> = vs_TEXCOORD1;
          let x_1294 : i32 = u_xlati30;
          let x_1297 : i32 = u_xlati30;
          let x_1301 : vec4<f32> = x_1079.x_AdditionalLightsWorldToLights[((x_1294 + 1i) / 4i)][((x_1297 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1292.y, x_1292.y, x_1292.y, x_1292.y) * x_1301);
          let x_1303 : i32 = u_xlati30;
          let x_1305 : i32 = u_xlati30;
          let x_1308 : vec4<f32> = x_1079.x_AdditionalLightsWorldToLights[(x_1303 / 4i)][(x_1305 % 4i)];
          let x_1309 : vec3<f32> = vs_TEXCOORD1;
          let x_1312 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1308 * vec4<f32>(x_1309.x, x_1309.x, x_1309.x, x_1309.x)) + x_1312);
          let x_1314 : i32 = u_xlati30;
          let x_1317 : i32 = u_xlati30;
          let x_1321 : vec4<f32> = x_1079.x_AdditionalLightsWorldToLights[((x_1314 + 2i) / 4i)][((x_1317 + 2i) % 4i)];
          let x_1322 : vec3<f32> = vs_TEXCOORD1;
          let x_1325 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1321 * vec4<f32>(x_1322.z, x_1322.z, x_1322.z, x_1322.z)) + x_1325);
          let x_1327 : vec4<f32> = u_xlat9;
          let x_1328 : i32 = u_xlati30;
          let x_1331 : i32 = u_xlati30;
          let x_1335 : vec4<f32> = x_1079.x_AdditionalLightsWorldToLights[((x_1328 + 3i) / 4i)][((x_1331 + 3i) % 4i)];
          u_xlat9 = (x_1327 + x_1335);
          let x_1337 : vec4<f32> = u_xlat9;
          let x_1339 : vec4<f32> = u_xlat9;
          let x_1341 : vec3<f32> = (vec3<f32>(x_1337.x, x_1337.y, x_1337.z) / vec3<f32>(x_1339.w, x_1339.w, x_1339.w));
          let x_1342 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1341.x, x_1341.y, x_1341.z, x_1342.w);
          let x_1344 : vec4<f32> = u_xlat9;
          let x_1346 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(vec3<f32>(x_1344.x, x_1344.y, x_1344.z), vec3<f32>(x_1346.x, x_1346.y, x_1346.z));
          let x_1351 : f32 = u_xlat8.x;
          u_xlat8.x = inverseSqrt(x_1351);
          let x_1354 : vec4<f32> = u_xlat8;
          let x_1356 : vec4<f32> = u_xlat9;
          let x_1358 : vec3<f32> = (vec3<f32>(x_1354.x, x_1354.x, x_1354.x) * vec3<f32>(x_1356.x, x_1356.y, x_1356.z));
          let x_1359 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1358.x, x_1358.y, x_1358.z, x_1359.w);
          let x_1361 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(abs(vec3<f32>(x_1361.x, x_1361.y, x_1361.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1368 : f32 = u_xlat8.x;
          u_xlat8.x = max(x_1368, 0.000001f);
          let x_1373 : f32 = u_xlat8.x;
          u_xlat8.x = (1.0f / x_1373);
          let x_1377 : vec4<f32> = u_xlat8;
          let x_1379 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1377.x, x_1377.x, x_1377.x) * vec3<f32>(x_1379.z, x_1379.x, x_1379.y));
          let x_1383 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1383);
          let x_1387 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1387, 0.0f, 1.0f);
          let x_1391 : vec3<f32> = u_xlat10;
          let x_1394 : vec4<bool> = (vec4<f32>(x_1391.y, x_1391.z, x_1391.y, x_1391.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb31 = vec2<bool>(x_1394.x, x_1394.y);
          let x_1399 : bool = u_xlatb31.x;
          if (x_1399) {
            let x_1404 : f32 = u_xlat10.x;
            x_1400 = x_1404;
          } else {
            let x_1407 : f32 = u_xlat10.x;
            x_1400 = -(x_1407);
          }
          let x_1409 : f32 = x_1400;
          u_xlat31.x = x_1409;
          let x_1412 : bool = u_xlatb31.y;
          if (x_1412) {
            let x_1417 : f32 = u_xlat10.x;
            x_1413 = x_1417;
          } else {
            let x_1420 : f32 = u_xlat10.x;
            x_1413 = -(x_1420);
          }
          let x_1422 : f32 = x_1413;
          u_xlat31.y = x_1422;
          let x_1424 : vec4<f32> = u_xlat9;
          let x_1426 : vec4<f32> = u_xlat8;
          let x_1429 : vec2<f32> = u_xlat31;
          let x_1430 : vec2<f32> = ((vec2<f32>(x_1424.x, x_1424.y) * vec2<f32>(x_1426.x, x_1426.x)) + x_1429);
          let x_1431 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1430.x, x_1431.y, x_1430.y, x_1431.w);
          let x_1433 : vec4<f32> = u_xlat8;
          let x_1436 : vec2<f32> = ((vec2<f32>(x_1433.x, x_1433.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1437 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1436.x, x_1437.y, x_1436.y, x_1437.w);
          let x_1439 : vec4<f32> = u_xlat8;
          let x_1443 : vec2<f32> = clamp(vec2<f32>(x_1439.x, x_1439.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1444 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1443.x, x_1444.y, x_1443.y, x_1444.w);
          let x_1446 : u32 = u_xlatu39;
          let x_1449 : vec4<f32> = x_1079.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1446)];
          let x_1451 : vec4<f32> = u_xlat8;
          let x_1454 : u32 = u_xlatu39;
          let x_1457 : vec4<f32> = x_1079.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1454)];
          let x_1459 : vec2<f32> = ((vec2<f32>(x_1449.x, x_1449.y) * vec2<f32>(x_1451.x, x_1451.z)) + vec2<f32>(x_1457.z, x_1457.w));
          let x_1460 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1459.x, x_1460.y, x_1459.y);
        }
      }
      let x_1467 : vec3<f32> = u_xlat19;
      let x_1470 : f32 = x_44.x_GlobalMipBias.x;
      let x_1471 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1467.x, x_1467.z), x_1470);
      u_xlat8 = x_1471;
      let x_1474 : bool = u_xlatb16.y;
      if (x_1474) {
        let x_1479 : f32 = u_xlat8.w;
        x_1475 = x_1479;
      } else {
        let x_1482 : f32 = u_xlat8.x;
        x_1475 = x_1482;
      }
      let x_1483 : f32 = x_1475;
      u_xlat41 = x_1483;
      let x_1485 : bool = u_xlatb16.x;
      if (x_1485) {
        let x_1489 : vec4<f32> = u_xlat8;
        x_1486 = vec3<f32>(x_1489.x, x_1489.y, x_1489.z);
      } else {
        let x_1492 : f32 = u_xlat41;
        x_1486 = vec3<f32>(x_1492, x_1492, x_1492);
      }
      let x_1494 : vec3<f32> = x_1486;
      let x_1495 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1494.x, x_1494.y, x_1494.z, x_1495.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1501 : vec4<f32> = u_xlat8;
    let x_1503 : u32 = u_xlatu39;
    let x_1506 : vec4<f32> = x_965.x_AdditionalLightsColor[bitcast<i32>(x_1503)];
    let x_1508 : vec3<f32> = (vec3<f32>(x_1501.x, x_1501.y, x_1501.z) * vec3<f32>(x_1506.x, x_1506.y, x_1506.z));
    let x_1509 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1508.x, x_1508.y, x_1508.z, x_1509.w);
    let x_1511 : f32 = u_xlat37;
    let x_1513 : vec4<f32> = u_xlat8;
    let x_1515 : vec3<f32> = (vec3<f32>(x_1511, x_1511, x_1511) * vec3<f32>(x_1513.x, x_1513.y, x_1513.z));
    let x_1516 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1515.x, x_1515.y, x_1515.z, x_1516.w);
    let x_1518 : f32 = u_xlat40;
    let x_1520 : vec4<f32> = u_xlat8;
    let x_1522 : vec3<f32> = (vec3<f32>(x_1518, x_1518, x_1518) * vec3<f32>(x_1520.x, x_1520.y, x_1520.z));
    let x_1523 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1522.x, x_1522.y, x_1522.z, x_1523.w);
    let x_1525 : vec4<f32> = u_xlat2;
    let x_1527 : vec3<f32> = u_xlat7;
    u_xlat39 = dot(vec3<f32>(x_1525.x, x_1525.y, x_1525.z), x_1527);
    let x_1529 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1529, 0.0f, 1.0f);
    let x_1531 : f32 = u_xlat39;
    let x_1533 : vec4<f32> = u_xlat8;
    let x_1535 : vec3<f32> = (vec3<f32>(x_1531, x_1531, x_1531) * vec3<f32>(x_1533.x, x_1533.y, x_1533.z));
    let x_1536 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1535.x, x_1535.y, x_1535.z, x_1536.w);
    let x_1538 : vec3<f32> = u_xlat1;
    let x_1539 : f32 = u_xlat34;
    let x_1542 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1538 * vec3<f32>(x_1539, x_1539, x_1539)) + x_1542);
    let x_1544 : vec3<f32> = u_xlat7;
    let x_1545 : vec3<f32> = u_xlat7;
    u_xlat39 = dot(x_1544, x_1545);
    let x_1547 : f32 = u_xlat39;
    u_xlat39 = max(x_1547, 1.17549435e-37f);
    let x_1549 : f32 = u_xlat39;
    u_xlat39 = inverseSqrt(x_1549);
    let x_1551 : f32 = u_xlat39;
    let x_1553 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1551, x_1551, x_1551) * x_1553);
    let x_1555 : vec4<f32> = u_xlat2;
    let x_1557 : vec3<f32> = u_xlat7;
    u_xlat39 = dot(vec3<f32>(x_1555.x, x_1555.y, x_1555.z), x_1557);
    let x_1559 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1559, 0.0f, 1.0f);
    let x_1561 : f32 = u_xlat39;
    u_xlat39 = log2(x_1561);
    let x_1563 : f32 = u_xlat35;
    let x_1564 : f32 = u_xlat39;
    u_xlat39 = (x_1563 * x_1564);
    let x_1566 : f32 = u_xlat39;
    u_xlat39 = exp2(x_1566);
    let x_1568 : f32 = u_xlat39;
    let x_1571 : vec4<f32> = x_56.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_1568, x_1568, x_1568) * vec3<f32>(x_1571.x, x_1571.y, x_1571.z));
    let x_1574 : vec3<f32> = u_xlat7;
    let x_1575 : vec4<f32> = u_xlat8;
    u_xlat7 = (x_1574 * vec3<f32>(x_1575.x, x_1575.y, x_1575.z));
    let x_1578 : vec4<f32> = u_xlat9;
    let x_1580 : vec4<f32> = u_xlat0;
    let x_1583 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1578.x, x_1578.y, x_1578.z) * vec3<f32>(x_1580.y, x_1580.z, x_1580.w)) + x_1583);
    let x_1585 : vec3<f32> = u_xlat6;
    let x_1586 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_1585 + x_1586);

    continuing {
      let x_1588 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1588 + bitcast<u32>(1i));
    }
  }
  let x_1591 : vec4<f32> = u_xlat4;
  let x_1593 : vec4<f32> = u_xlat0;
  let x_1596 : vec4<f32> = u_xlat3;
  u_xlat11 = ((vec3<f32>(x_1591.x, x_1591.y, x_1591.z) * vec3<f32>(x_1593.y, x_1593.z, x_1593.w)) + vec3<f32>(x_1596.x, x_1596.y, x_1596.z));
  let x_1599 : vec3<f32> = u_xlat6;
  let x_1600 : vec3<f32> = u_xlat11;
  u_xlat11 = (x_1599 + x_1600);
  let x_1602 : f32 = u_xlat36;
  let x_1603 : f32 = u_xlat36;
  u_xlat1.x = (x_1602 * -(x_1603));
  let x_1608 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1608);
  let x_1611 : vec3<f32> = u_xlat11;
  let x_1614 : vec4<f32> = x_44.unity_FogColor;
  u_xlat11 = (x_1611 + -(vec3<f32>(x_1614.x, x_1614.y, x_1614.z)));
  let x_1620 : vec3<f32> = u_xlat1;
  let x_1622 : vec3<f32> = u_xlat11;
  let x_1625 : vec4<f32> = x_44.unity_FogColor;
  let x_1627 : vec3<f32> = ((vec3<f32>(x_1620.x, x_1620.x, x_1620.x) * x_1622) + vec3<f32>(x_1625.x, x_1625.y, x_1625.z));
  let x_1628 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1627.x, x_1627.y, x_1627.z, x_1628.w);
  let x_1632 : f32 = x_56.x_Surface;
  u_xlatb11 = (x_1632 == 1.0f);
  let x_1634 : bool = u_xlatb11;
  if (x_1634) {
    let x_1639 : f32 = u_xlat0.x;
    x_1635 = x_1639;
  } else {
    x_1635 = 1.0f;
  }
  let x_1641 : f32 = x_1635;
  SV_Target0.w = x_1641;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}

