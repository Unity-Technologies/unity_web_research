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
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Smoothness : f32,
  x_Metallic : f32,
  x_BumpScale : f32,
  x_Parallax : f32,
  x_OcclusionStrength : f32,
  x_ClearCoatMask : f32,
  x_ClearCoatSmoothness : f32,
  x_DetailAlbedoMapScale : f32,
  x_DetailNormalMapScale : f32,
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

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(4) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_EmissionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_144 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_648 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_834 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1088 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1192 : AdditionalLightsCookies;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb45 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlat47 : f32;
  var u_xlat4 : vec3<f32>;
  var x_120 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb5 : vec4<bool>;
  var u_xlatu45 : u32;
  var u_xlati45 : i32;
  var u_xlat48 : f32;
  var u_xlat16 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
  var u_xlat51 : f32;
  var u_xlat22 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat20 : vec2<f32>;
  var u_xlatb20 : vec2<bool>;
  var u_xlatb35 : bool;
  var x_597 : f32;
  var u_xlat35 : f32;
  var x_716 : f32;
  var x_727 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat37 : vec2<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatu47 : u32;
  var u_xlatb8 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu49 : u32;
  var u_xlati52 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat52 : f32;
  var u_xlat38 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat53 : f32;
  var u_xlatu53 : u32;
  var u_xlati54 : i32;
  var u_xlati53 : i32;
  var u_xlati55 : i32;
  var u_xlat12 : vec4<f32>;
  var u_xlatb53 : bool;
  var u_xlat42 : vec2<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec3<f32>;
  var u_xlatb42 : vec2<bool>;
  var x_1486 : f32;
  var x_1499 : f32;
  var x_1551 : f32;
  var x_1562 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1741 : f32;
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
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_73 : f32 = x_44.x_GlobalMipBias.x;
  let x_74 : vec4<f32> = textureSampleBias(x_EmissionMap, sampler_EmissionMap, x_71, x_73);
  u_xlat2 = vec3<f32>(x_74.x, x_74.y, x_74.z);
  let x_81 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb45 = (x_81 == 0.0f);
  let x_87 : vec3<f32> = vs_TEXCOORD1;
  let x_92 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_87) + x_92);
  let x_96 : vec3<f32> = u_xlat3;
  let x_97 : vec3<f32> = u_xlat3;
  u_xlat47 = dot(x_96, x_97);
  let x_99 : f32 = u_xlat47;
  u_xlat47 = inverseSqrt(x_99);
  let x_101 : f32 = u_xlat47;
  let x_103 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_101, x_101, x_101) * x_103);
  let x_110 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_110;
  let x_113 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_113;
  let x_117 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_117;
  let x_119 : bool = u_xlatb45;
  if (x_119) {
    let x_123 : vec3<f32> = u_xlat3;
    x_120 = x_123;
  } else {
    let x_125 : vec3<f32> = u_xlat4;
    x_120 = x_125;
  }
  let x_126 : vec3<f32> = x_120;
  u_xlat3 = x_126;
  let x_129 : vec3<f32> = vs_TEXCOORD2;
  let x_130 : vec3<f32> = vs_TEXCOORD2;
  u_xlat45 = dot(x_129, x_130);
  let x_132 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_132);
  let x_134 : f32 = u_xlat45;
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  u_xlat4 = (vec3<f32>(x_134, x_134, x_134) * x_136);
  let x_139 : vec3<f32> = vs_TEXCOORD1;
  let x_146 : vec4<f32> = x_144.x_CascadeShadowSplitSpheres0;
  let x_149 : vec3<f32> = (x_139 + -(vec3<f32>(x_146.x, x_146.y, x_146.z)));
  let x_150 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_153 : vec3<f32> = vs_TEXCOORD1;
  let x_155 : vec4<f32> = x_144.x_CascadeShadowSplitSpheres1;
  let x_158 : vec3<f32> = (x_153 + -(vec3<f32>(x_155.x, x_155.y, x_155.z)));
  let x_159 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_162 : vec3<f32> = vs_TEXCOORD1;
  let x_165 : vec4<f32> = x_144.x_CascadeShadowSplitSpheres2;
  u_xlat7 = (x_162 + -(vec3<f32>(x_165.x, x_165.y, x_165.z)));
  let x_170 : vec3<f32> = vs_TEXCOORD1;
  let x_173 : vec4<f32> = x_144.x_CascadeShadowSplitSpheres3;
  let x_176 : vec3<f32> = (x_170 + -(vec3<f32>(x_173.x, x_173.y, x_173.z)));
  let x_177 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_179 : vec4<f32> = u_xlat5;
  let x_181 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_179.x, x_179.y, x_179.z), vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_185 : vec4<f32> = u_xlat6;
  let x_187 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_185.x, x_185.y, x_185.z), vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_191 : vec3<f32> = u_xlat7;
  let x_192 : vec3<f32> = u_xlat7;
  u_xlat5.z = dot(x_191, x_192);
  let x_195 : vec4<f32> = u_xlat8;
  let x_197 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_195.x, x_195.y, x_195.z), vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_204 : vec4<f32> = u_xlat5;
  let x_207 : vec4<f32> = x_144.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_204 < x_207);
  let x_210 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_210);
  let x_214 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_214);
  let x_218 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_218);
  let x_222 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_222);
  let x_226 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_226);
  let x_232 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_232);
  let x_236 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_236);
  let x_239 : vec4<f32> = u_xlat5;
  let x_241 : vec4<f32> = u_xlat6;
  let x_243 : vec3<f32> = (vec3<f32>(x_239.x, x_239.y, x_239.z) + vec3<f32>(x_241.y, x_241.z, x_241.w));
  let x_244 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_246 : vec4<f32> = u_xlat5;
  let x_249 : vec3<f32> = max(vec3<f32>(x_246.x, x_246.y, x_246.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_250 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_250.x, x_249.x, x_249.y, x_249.z);
  let x_252 : vec4<f32> = u_xlat6;
  u_xlat45 = dot(x_252, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_258 : f32 = u_xlat45;
  u_xlat45 = (-(x_258) + 4.0f);
  let x_263 : f32 = u_xlat45;
  u_xlatu45 = u32(x_263);
  let x_267 : u32 = u_xlatu45;
  u_xlati45 = (bitcast<i32>(x_267) << bitcast<u32>(2i));
  let x_270 : vec3<f32> = vs_TEXCOORD1;
  let x_272 : i32 = u_xlati45;
  let x_275 : i32 = u_xlati45;
  let x_279 : vec4<f32> = x_144.x_MainLightWorldToShadow[((x_272 + 1i) / 4i)][((x_275 + 1i) % 4i)];
  let x_281 : vec3<f32> = (vec3<f32>(x_270.y, x_270.y, x_270.y) * vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_282 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_284 : i32 = u_xlati45;
  let x_286 : i32 = u_xlati45;
  let x_289 : vec4<f32> = x_144.x_MainLightWorldToShadow[(x_284 / 4i)][(x_286 % 4i)];
  let x_291 : vec3<f32> = vs_TEXCOORD1;
  let x_294 : vec4<f32> = u_xlat5;
  let x_296 : vec3<f32> = ((vec3<f32>(x_289.x, x_289.y, x_289.z) * vec3<f32>(x_291.x, x_291.x, x_291.x)) + vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_297 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
  let x_299 : i32 = u_xlati45;
  let x_302 : i32 = u_xlati45;
  let x_306 : vec4<f32> = x_144.x_MainLightWorldToShadow[((x_299 + 2i) / 4i)][((x_302 + 2i) % 4i)];
  let x_308 : vec3<f32> = vs_TEXCOORD1;
  let x_311 : vec4<f32> = u_xlat5;
  let x_313 : vec3<f32> = ((vec3<f32>(x_306.x, x_306.y, x_306.z) * vec3<f32>(x_308.z, x_308.z, x_308.z)) + vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_316 : vec4<f32> = u_xlat5;
  let x_318 : i32 = u_xlati45;
  let x_321 : i32 = u_xlati45;
  let x_325 : vec4<f32> = x_144.x_MainLightWorldToShadow[((x_318 + 3i) / 4i)][((x_321 + 3i) % 4i)];
  let x_327 : vec3<f32> = (vec3<f32>(x_316.x, x_316.y, x_316.z) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_331 : f32 = vs_TEXCOORD1.y;
  let x_333 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat45 = (x_331 * x_333);
  let x_336 : f32 = x_44.unity_MatrixV[0i].z;
  let x_338 : f32 = vs_TEXCOORD1.x;
  let x_340 : f32 = u_xlat45;
  u_xlat45 = ((x_336 * x_338) + x_340);
  let x_343 : f32 = x_44.unity_MatrixV[2i].z;
  let x_345 : f32 = vs_TEXCOORD1.z;
  let x_347 : f32 = u_xlat45;
  u_xlat45 = ((x_343 * x_345) + x_347);
  let x_349 : f32 = u_xlat45;
  let x_351 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat45 = (x_349 + x_351);
  let x_353 : f32 = u_xlat45;
  let x_357 : f32 = x_44.x_ProjectionParams.y;
  u_xlat45 = (-(x_353) + -(x_357));
  let x_360 : f32 = u_xlat45;
  u_xlat45 = max(x_360, 0.0f);
  let x_362 : f32 = u_xlat45;
  let x_365 : f32 = x_44.unity_FogParams.x;
  u_xlat45 = (x_362 * x_365);
  let x_373 : vec2<f32> = vs_TEXCOORD8;
  let x_375 : f32 = x_44.x_GlobalMipBias.x;
  let x_376 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_373, x_375);
  u_xlat6 = x_376;
  let x_381 : vec2<f32> = vs_TEXCOORD8;
  let x_383 : f32 = x_44.x_GlobalMipBias.x;
  let x_384 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_381, x_383);
  u_xlat7 = vec3<f32>(x_384.x, x_384.y, x_384.z);
  let x_386 : vec4<f32> = u_xlat6;
  let x_390 : vec3<f32> = (vec3<f32>(x_386.x, x_386.y, x_386.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_391 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_393 : vec3<f32> = u_xlat4;
  let x_394 : vec4<f32> = u_xlat6;
  u_xlat47 = dot(x_393, vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_397 : f32 = u_xlat47;
  u_xlat47 = (x_397 + 0.5f);
  let x_400 : f32 = u_xlat47;
  let x_402 : vec3<f32> = u_xlat7;
  let x_403 : vec3<f32> = (vec3<f32>(x_400, x_400, x_400) * x_402);
  let x_404 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_407 : f32 = u_xlat6.w;
  u_xlat47 = max(x_407, 0.0001f);
  let x_410 : vec4<f32> = u_xlat6;
  let x_412 : f32 = u_xlat47;
  let x_414 : vec3<f32> = (vec3<f32>(x_410.x, x_410.y, x_410.z) / vec3<f32>(x_412, x_412, x_412));
  let x_415 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_419 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_420 : vec2<f32> = vec2<f32>(x_419.x, x_419.y);
  let x_424 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_420.x, x_420.y));
  let x_425 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_424.x, x_424.y, x_425.z);
  let x_427 : vec3<f32> = u_xlat7;
  let x_429 : vec4<f32> = hlslcc_FragCoord;
  let x_431 : vec2<f32> = (vec2<f32>(x_427.x, x_427.y) * vec2<f32>(x_429.x, x_429.y));
  let x_432 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_431.x, x_431.y, x_432.z);
  let x_435 : f32 = u_xlat7.y;
  let x_438 : f32 = x_44.x_ScaleBiasRt.x;
  let x_441 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat47 = ((x_435 * x_438) + x_441);
  let x_443 : f32 = u_xlat47;
  u_xlat7.z = (-(x_443) + 1.0f);
  let x_448 : f32 = x_57.x_Metallic;
  u_xlat47 = ((-(x_448) * 0.959999979f) + 0.959999979f);
  let x_454 : f32 = u_xlat47;
  let x_457 : f32 = x_57.x_Smoothness;
  u_xlat48 = (-(x_454) + x_457);
  let x_460 : vec4<f32> = u_xlat1;
  let x_462 : f32 = u_xlat47;
  u_xlat16 = (vec3<f32>(x_460.y, x_460.z, x_460.w) * vec3<f32>(x_462, x_462, x_462));
  let x_465 : vec4<f32> = u_xlat0;
  let x_468 : vec4<f32> = x_57.x_BaseColor;
  let x_473 : vec3<f32> = ((vec3<f32>(x_465.x, x_465.y, x_465.z) * vec3<f32>(x_468.x, x_468.y, x_468.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_474 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_477 : f32 = x_57.x_Metallic;
  let x_479 : f32 = x_57.x_Metallic;
  let x_481 : f32 = x_57.x_Metallic;
  let x_482 : vec3<f32> = vec3<f32>(x_477, x_479, x_481);
  let x_487 : vec4<f32> = u_xlat0;
  let x_492 : vec3<f32> = ((vec3<f32>(x_482.x, x_482.y, x_482.z) * vec3<f32>(x_487.x, x_487.y, x_487.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_493 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
  let x_496 : f32 = x_57.x_Smoothness;
  u_xlat47 = (-(x_496) + 1.0f);
  let x_500 : f32 = u_xlat47;
  let x_501 : f32 = u_xlat47;
  u_xlat49 = (x_500 * x_501);
  let x_503 : f32 = u_xlat49;
  u_xlat49 = max(x_503, 0.0078125f);
  let x_507 : f32 = u_xlat49;
  let x_508 : f32 = u_xlat49;
  u_xlat50 = (x_507 * x_508);
  let x_510 : f32 = u_xlat48;
  u_xlat48 = (x_510 + 1.0f);
  let x_512 : f32 = u_xlat48;
  u_xlat48 = clamp(x_512, 0.0f, 1.0f);
  let x_515 : f32 = u_xlat49;
  u_xlat51 = ((x_515 * 4.0f) + 2.0f);
  let x_523 : vec3<f32> = u_xlat7;
  let x_526 : f32 = x_44.x_GlobalMipBias.x;
  let x_527 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_523.x, x_523.z), x_526);
  u_xlat7.x = x_527.x;
  let x_532 : f32 = u_xlat7.x;
  u_xlat22 = (x_532 + -1.0f);
  let x_535 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_536 : f32 = u_xlat22;
  u_xlat22 = ((x_535 * x_536) + 1.0f);
  let x_540 : f32 = u_xlat7.x;
  u_xlat7.x = min(x_540, 1.0f);
  let x_544 : vec4<f32> = u_xlat5;
  let x_545 : vec2<f32> = vec2<f32>(x_544.x, x_544.y);
  let x_547 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_545.x, x_545.y, x_547);
  let x_559 : vec3<f32> = txVec0;
  let x_561 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_559.xy, x_559.z);
  u_xlat5.x = x_561;
  let x_566 : f32 = x_144.x_MainLightShadowParams.x;
  u_xlat20.x = (-(x_566) + 1.0f);
  let x_571 : f32 = u_xlat5.x;
  let x_573 : f32 = x_144.x_MainLightShadowParams.x;
  let x_576 : f32 = u_xlat20.x;
  u_xlat5.x = ((x_571 * x_573) + x_576);
  let x_583 : f32 = u_xlat5.z;
  u_xlatb20.x = (0.0f >= x_583);
  let x_588 : f32 = u_xlat5.z;
  u_xlatb35 = (x_588 >= 1.0f);
  let x_590 : bool = u_xlatb35;
  let x_592 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_590 | x_592);
  let x_596 : bool = u_xlatb20.x;
  if (x_596) {
    x_597 = 1.0f;
  } else {
    let x_602 : f32 = u_xlat5.x;
    x_597 = x_602;
  }
  let x_603 : f32 = x_597;
  u_xlat5.x = x_603;
  let x_605 : vec3<f32> = vs_TEXCOORD1;
  let x_607 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_609 : vec3<f32> = (x_605 + -(x_607));
  let x_610 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_612 : vec4<f32> = u_xlat8;
  let x_614 : vec4<f32> = u_xlat8;
  u_xlat20.x = dot(vec3<f32>(x_612.x, x_612.y, x_612.z), vec3<f32>(x_614.x, x_614.y, x_614.z));
  let x_619 : f32 = u_xlat20.x;
  let x_621 : f32 = x_144.x_MainLightShadowParams.z;
  let x_624 : f32 = x_144.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_619 * x_621) + x_624);
  let x_628 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_628, 0.0f, 1.0f);
  let x_633 : f32 = u_xlat5.x;
  u_xlat35 = (-(x_633) + 1.0f);
  let x_637 : f32 = u_xlat20.x;
  let x_638 : f32 = u_xlat35;
  let x_641 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_637 * x_638) + x_641);
  let x_650 : f32 = x_648.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_650 == -1.0f));
  let x_654 : bool = u_xlatb20.x;
  if (x_654) {
    let x_657 : vec3<f32> = vs_TEXCOORD1;
    let x_660 : vec4<f32> = x_648.x_MainLightWorldToLight[1i];
    u_xlat20 = (vec2<f32>(x_657.y, x_657.y) * vec2<f32>(x_660.x, x_660.y));
    let x_664 : vec4<f32> = x_648.x_MainLightWorldToLight[0i];
    let x_666 : vec3<f32> = vs_TEXCOORD1;
    let x_669 : vec2<f32> = u_xlat20;
    u_xlat20 = ((vec2<f32>(x_664.x, x_664.y) * vec2<f32>(x_666.x, x_666.x)) + x_669);
    let x_672 : vec4<f32> = x_648.x_MainLightWorldToLight[2i];
    let x_674 : vec3<f32> = vs_TEXCOORD1;
    let x_677 : vec2<f32> = u_xlat20;
    u_xlat20 = ((vec2<f32>(x_672.x, x_672.y) * vec2<f32>(x_674.z, x_674.z)) + x_677);
    let x_679 : vec2<f32> = u_xlat20;
    let x_681 : vec4<f32> = x_648.x_MainLightWorldToLight[3i];
    u_xlat20 = (x_679 + vec2<f32>(x_681.x, x_681.y));
    let x_684 : vec2<f32> = u_xlat20;
    u_xlat20 = ((x_684 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_693 : vec2<f32> = u_xlat20;
    let x_695 : f32 = x_44.x_GlobalMipBias.x;
    let x_696 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_693, x_695);
    u_xlat8 = x_696;
    let x_698 : f32 = x_648.x_MainLightCookieTextureFormat;
    let x_700 : f32 = x_648.x_MainLightCookieTextureFormat;
    let x_702 : f32 = x_648.x_MainLightCookieTextureFormat;
    let x_704 : f32 = x_648.x_MainLightCookieTextureFormat;
    let x_705 : vec4<f32> = vec4<f32>(x_698, x_700, x_702, x_704);
    let x_712 : vec4<bool> = (vec4<f32>(x_705.x, x_705.y, x_705.z, x_705.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_712.x, x_712.y);
    let x_715 : bool = u_xlatb20.y;
    if (x_715) {
      let x_720 : f32 = u_xlat8.w;
      x_716 = x_720;
    } else {
      let x_723 : f32 = u_xlat8.x;
      x_716 = x_723;
    }
    let x_724 : f32 = x_716;
    u_xlat35 = x_724;
    let x_726 : bool = u_xlatb20.x;
    if (x_726) {
      let x_730 : vec4<f32> = u_xlat8;
      x_727 = vec3<f32>(x_730.x, x_730.y, x_730.z);
    } else {
      let x_733 : f32 = u_xlat35;
      x_727 = vec3<f32>(x_733, x_733, x_733);
    }
    let x_735 : vec3<f32> = x_727;
    let x_736 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
  }
  let x_742 : vec4<f32> = u_xlat8;
  let x_745 : vec4<f32> = x_44.x_MainLightColor;
  let x_747 : vec3<f32> = (vec3<f32>(x_742.x, x_742.y, x_742.z) * vec3<f32>(x_745.x, x_745.y, x_745.z));
  let x_748 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
  let x_750 : f32 = u_xlat22;
  let x_752 : vec4<f32> = u_xlat8;
  let x_754 : vec3<f32> = (vec3<f32>(x_750, x_750, x_750) * vec3<f32>(x_752.x, x_752.y, x_752.z));
  let x_755 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_757 : vec3<f32> = u_xlat3;
  let x_759 : vec3<f32> = u_xlat4;
  u_xlat20.x = dot(-(x_757), x_759);
  let x_763 : f32 = u_xlat20.x;
  let x_765 : f32 = u_xlat20.x;
  u_xlat20.x = (x_763 + x_765);
  let x_769 : vec3<f32> = u_xlat4;
  let x_770 : vec2<f32> = u_xlat20;
  let x_774 : vec3<f32> = u_xlat3;
  let x_776 : vec3<f32> = ((x_769 * -(vec3<f32>(x_770.x, x_770.x, x_770.x))) + -(x_774));
  let x_777 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
  let x_779 : vec3<f32> = u_xlat4;
  let x_780 : vec3<f32> = u_xlat3;
  u_xlat20.x = dot(x_779, x_780);
  let x_784 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_784, 0.0f, 1.0f);
  let x_788 : f32 = u_xlat20.x;
  u_xlat20.x = (-(x_788) + 1.0f);
  let x_793 : f32 = u_xlat20.x;
  let x_795 : f32 = u_xlat20.x;
  u_xlat20.x = (x_793 * x_795);
  let x_799 : f32 = u_xlat20.x;
  let x_801 : f32 = u_xlat20.x;
  u_xlat20.x = (x_799 * x_801);
  let x_804 : f32 = u_xlat47;
  u_xlat35 = ((-(x_804) * 0.699999988f) + 1.700000048f);
  let x_810 : f32 = u_xlat47;
  let x_811 : f32 = u_xlat35;
  u_xlat47 = (x_810 * x_811);
  let x_813 : f32 = u_xlat47;
  u_xlat47 = (x_813 * 6.0f);
  let x_824 : vec4<f32> = u_xlat9;
  let x_826 : f32 = u_xlat47;
  let x_827 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_824.x, x_824.y, x_824.z), x_826);
  u_xlat9 = x_827;
  let x_829 : f32 = u_xlat9.w;
  u_xlat47 = (x_829 + -1.0f);
  let x_836 : f32 = x_834.unity_SpecCube0_HDR.w;
  let x_837 : f32 = u_xlat47;
  u_xlat47 = ((x_836 * x_837) + 1.0f);
  let x_840 : f32 = u_xlat47;
  u_xlat47 = max(x_840, 0.0f);
  let x_842 : f32 = u_xlat47;
  u_xlat47 = log2(x_842);
  let x_844 : f32 = u_xlat47;
  let x_846 : f32 = x_834.unity_SpecCube0_HDR.y;
  u_xlat47 = (x_844 * x_846);
  let x_848 : f32 = u_xlat47;
  u_xlat47 = exp2(x_848);
  let x_850 : f32 = u_xlat47;
  let x_852 : f32 = x_834.unity_SpecCube0_HDR.x;
  u_xlat47 = (x_850 * x_852);
  let x_854 : vec4<f32> = u_xlat9;
  let x_856 : f32 = u_xlat47;
  let x_858 : vec3<f32> = (vec3<f32>(x_854.x, x_854.y, x_854.z) * vec3<f32>(x_856, x_856, x_856));
  let x_859 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_862 : f32 = u_xlat49;
  let x_864 : f32 = u_xlat49;
  u_xlat37 = ((vec2<f32>(x_862, x_862) * vec2<f32>(x_864, x_864)) + vec2<f32>(-1.0f, 1.0f));
  let x_870 : f32 = u_xlat37.y;
  u_xlat47 = (1.0f / x_870);
  let x_873 : vec4<f32> = u_xlat0;
  let x_876 : f32 = u_xlat48;
  u_xlat10 = (-(vec3<f32>(x_873.x, x_873.y, x_873.z)) + vec3<f32>(x_876, x_876, x_876));
  let x_879 : vec2<f32> = u_xlat20;
  let x_881 : vec3<f32> = u_xlat10;
  let x_883 : vec4<f32> = u_xlat0;
  u_xlat10 = ((vec3<f32>(x_879.x, x_879.x, x_879.x) * x_881) + vec3<f32>(x_883.x, x_883.y, x_883.z));
  let x_886 : f32 = u_xlat47;
  let x_888 : vec3<f32> = u_xlat10;
  u_xlat10 = (vec3<f32>(x_886, x_886, x_886) * x_888);
  let x_890 : vec4<f32> = u_xlat9;
  let x_892 : vec3<f32> = u_xlat10;
  let x_893 : vec3<f32> = (vec3<f32>(x_890.x, x_890.y, x_890.z) * x_892);
  let x_894 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_893.x, x_893.y, x_893.z, x_894.w);
  let x_896 : vec4<f32> = u_xlat6;
  let x_898 : vec3<f32> = u_xlat16;
  let x_900 : vec4<f32> = u_xlat9;
  let x_902 : vec3<f32> = ((vec3<f32>(x_896.x, x_896.y, x_896.z) * x_898) + vec3<f32>(x_900.x, x_900.y, x_900.z));
  let x_903 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_902.x, x_902.y, x_902.z, x_903.w);
  let x_906 : f32 = u_xlat5.x;
  let x_908 : f32 = x_834.unity_LightData.z;
  u_xlat47 = (x_906 * x_908);
  let x_910 : vec3<f32> = u_xlat4;
  let x_912 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat48 = dot(x_910, vec3<f32>(x_912.x, x_912.y, x_912.z));
  let x_915 : f32 = u_xlat48;
  u_xlat48 = clamp(x_915, 0.0f, 1.0f);
  let x_917 : f32 = u_xlat47;
  let x_918 : f32 = u_xlat48;
  u_xlat47 = (x_917 * x_918);
  let x_920 : f32 = u_xlat47;
  let x_922 : vec4<f32> = u_xlat8;
  let x_924 : vec3<f32> = (vec3<f32>(x_920, x_920, x_920) * vec3<f32>(x_922.x, x_922.y, x_922.z));
  let x_925 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_924.x, x_924.y, x_924.z, x_925.w);
  let x_927 : vec3<f32> = u_xlat3;
  let x_929 : vec4<f32> = x_44.x_MainLightPosition;
  let x_931 : vec3<f32> = (x_927 + vec3<f32>(x_929.x, x_929.y, x_929.z));
  let x_932 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_931.x, x_931.y, x_931.z, x_932.w);
  let x_934 : vec4<f32> = u_xlat8;
  let x_936 : vec4<f32> = u_xlat8;
  u_xlat47 = dot(vec3<f32>(x_934.x, x_934.y, x_934.z), vec3<f32>(x_936.x, x_936.y, x_936.z));
  let x_939 : f32 = u_xlat47;
  u_xlat47 = max(x_939, 1.17549435e-37f);
  let x_942 : f32 = u_xlat47;
  u_xlat47 = inverseSqrt(x_942);
  let x_944 : f32 = u_xlat47;
  let x_946 : vec4<f32> = u_xlat8;
  let x_948 : vec3<f32> = (vec3<f32>(x_944, x_944, x_944) * vec3<f32>(x_946.x, x_946.y, x_946.z));
  let x_949 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
  let x_951 : vec3<f32> = u_xlat4;
  let x_952 : vec4<f32> = u_xlat8;
  u_xlat47 = dot(x_951, vec3<f32>(x_952.x, x_952.y, x_952.z));
  let x_955 : f32 = u_xlat47;
  u_xlat47 = clamp(x_955, 0.0f, 1.0f);
  let x_958 : vec4<f32> = x_44.x_MainLightPosition;
  let x_960 : vec4<f32> = u_xlat8;
  u_xlat48 = dot(vec3<f32>(x_958.x, x_958.y, x_958.z), vec3<f32>(x_960.x, x_960.y, x_960.z));
  let x_963 : f32 = u_xlat48;
  u_xlat48 = clamp(x_963, 0.0f, 1.0f);
  let x_965 : f32 = u_xlat47;
  let x_966 : f32 = u_xlat47;
  u_xlat47 = (x_965 * x_966);
  let x_968 : f32 = u_xlat47;
  let x_970 : f32 = u_xlat37.x;
  u_xlat47 = ((x_968 * x_970) + 1.000010014f);
  let x_974 : f32 = u_xlat48;
  let x_975 : f32 = u_xlat48;
  u_xlat48 = (x_974 * x_975);
  let x_977 : f32 = u_xlat47;
  let x_978 : f32 = u_xlat47;
  u_xlat47 = (x_977 * x_978);
  let x_980 : f32 = u_xlat48;
  u_xlat48 = max(x_980, 0.100000001f);
  let x_983 : f32 = u_xlat47;
  let x_984 : f32 = u_xlat48;
  u_xlat47 = (x_983 * x_984);
  let x_986 : f32 = u_xlat51;
  let x_987 : f32 = u_xlat47;
  u_xlat47 = (x_986 * x_987);
  let x_989 : f32 = u_xlat50;
  let x_990 : f32 = u_xlat47;
  u_xlat47 = (x_989 / x_990);
  let x_992 : vec4<f32> = u_xlat0;
  let x_994 : f32 = u_xlat47;
  let x_997 : vec3<f32> = u_xlat16;
  let x_998 : vec3<f32> = ((vec3<f32>(x_992.x, x_992.y, x_992.z) * vec3<f32>(x_994, x_994, x_994)) + x_997);
  let x_999 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
  let x_1001 : vec4<f32> = u_xlat5;
  let x_1003 : vec4<f32> = u_xlat8;
  let x_1005 : vec3<f32> = (vec3<f32>(x_1001.x, x_1001.y, x_1001.z) * vec3<f32>(x_1003.x, x_1003.y, x_1003.z));
  let x_1006 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  let x_1009 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1011 : f32 = x_834.unity_LightData.y;
  u_xlat47 = min(x_1009, x_1011);
  let x_1014 : f32 = u_xlat47;
  u_xlatu47 = bitcast<u32>(i32(x_1014));
  let x_1019 : f32 = x_648.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1021 : f32 = x_648.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1023 : f32 = x_648.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1025 : f32 = x_648.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1026 : vec4<f32> = vec4<f32>(x_1019, x_1021, x_1023, x_1025);
  let x_1032 : vec4<bool> = (vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1026.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_1032.x, x_1032.y);
  u_xlat9.x = 0.0f;
  u_xlat9.y = 0.0f;
  u_xlat9.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1043 : u32 = u_xlatu_loop_1;
    let x_1044 : u32 = u_xlatu47;
    if ((x_1043 < x_1044)) {
    } else {
      break;
    }
    let x_1047 : u32 = u_xlatu_loop_1;
    u_xlatu49 = (x_1047 >> 2u);
    let x_1050 : u32 = u_xlatu_loop_1;
    u_xlati52 = bitcast<i32>((x_1050 & 3u));
    let x_1053 : u32 = u_xlatu49;
    let x_1056 : vec4<f32> = x_834.unity_LightIndices[bitcast<i32>(x_1053)];
    let x_1066 : i32 = u_xlati52;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1071 : vec4<u32> = indexable[x_1066];
    u_xlat49 = dot(x_1056, bitcast<vec4<f32>>(x_1071));
    let x_1074 : f32 = u_xlat49;
    u_xlatu49 = bitcast<u32>(i32(x_1074));
    let x_1077 : vec3<f32> = vs_TEXCOORD1;
    let x_1089 : u32 = u_xlatu49;
    let x_1092 : vec4<f32> = x_1088.x_AdditionalLightsPosition[bitcast<i32>(x_1089)];
    let x_1095 : u32 = u_xlatu49;
    let x_1098 : vec4<f32> = x_1088.x_AdditionalLightsPosition[bitcast<i32>(x_1095)];
    u_xlat10 = ((-(x_1077) * vec3<f32>(x_1092.w, x_1092.w, x_1092.w)) + vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
    let x_1102 : vec3<f32> = u_xlat10;
    let x_1103 : vec3<f32> = u_xlat10;
    u_xlat52 = dot(x_1102, x_1103);
    let x_1105 : f32 = u_xlat52;
    u_xlat52 = max(x_1105, 6.10351562e-05f);
    let x_1109 : f32 = u_xlat52;
    u_xlat38 = inverseSqrt(x_1109);
    let x_1112 : f32 = u_xlat38;
    let x_1114 : vec3<f32> = u_xlat10;
    u_xlat11 = (vec3<f32>(x_1112, x_1112, x_1112) * x_1114);
    let x_1117 : f32 = u_xlat52;
    u_xlat53 = (1.0f / x_1117);
    let x_1119 : f32 = u_xlat52;
    let x_1120 : u32 = u_xlatu49;
    let x_1123 : f32 = x_1088.x_AdditionalLightsAttenuation[bitcast<i32>(x_1120)].x;
    u_xlat52 = (x_1119 * x_1123);
    let x_1125 : f32 = u_xlat52;
    let x_1127 : f32 = u_xlat52;
    u_xlat52 = ((-(x_1125) * x_1127) + 1.0f);
    let x_1130 : f32 = u_xlat52;
    u_xlat52 = max(x_1130, 0.0f);
    let x_1132 : f32 = u_xlat52;
    let x_1133 : f32 = u_xlat52;
    u_xlat52 = (x_1132 * x_1133);
    let x_1135 : f32 = u_xlat52;
    let x_1136 : f32 = u_xlat53;
    u_xlat52 = (x_1135 * x_1136);
    let x_1138 : u32 = u_xlatu49;
    let x_1141 : vec4<f32> = x_1088.x_AdditionalLightsSpotDir[bitcast<i32>(x_1138)];
    let x_1143 : vec3<f32> = u_xlat11;
    u_xlat53 = dot(vec3<f32>(x_1141.x, x_1141.y, x_1141.z), x_1143);
    let x_1145 : f32 = u_xlat53;
    let x_1146 : u32 = u_xlatu49;
    let x_1149 : f32 = x_1088.x_AdditionalLightsAttenuation[bitcast<i32>(x_1146)].z;
    let x_1151 : u32 = u_xlatu49;
    let x_1154 : f32 = x_1088.x_AdditionalLightsAttenuation[bitcast<i32>(x_1151)].w;
    u_xlat53 = ((x_1145 * x_1149) + x_1154);
    let x_1156 : f32 = u_xlat53;
    u_xlat53 = clamp(x_1156, 0.0f, 1.0f);
    let x_1158 : f32 = u_xlat53;
    let x_1159 : f32 = u_xlat53;
    u_xlat53 = (x_1158 * x_1159);
    let x_1161 : f32 = u_xlat52;
    let x_1162 : f32 = u_xlat53;
    u_xlat52 = (x_1161 * x_1162);
    let x_1165 : u32 = u_xlatu49;
    u_xlatu53 = (x_1165 >> 5u);
    let x_1168 : u32 = u_xlatu49;
    u_xlati54 = (1i << bitcast<u32>((bitcast<i32>(x_1168) & 31i)));
    let x_1174 : i32 = u_xlati54;
    let x_1176 : u32 = u_xlatu53;
    let x_1179 : f32 = x_648.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1176)].el;
    u_xlati53 = bitcast<i32>((bitcast<u32>(x_1174) & bitcast<u32>(x_1179)));
    let x_1183 : i32 = u_xlati53;
    if ((x_1183 != 0i)) {
      let x_1193 : u32 = u_xlatu49;
      let x_1196 : f32 = x_1192.x_AdditionalLightsLightTypes[bitcast<i32>(x_1193)].el;
      u_xlati53 = i32(x_1196);
      let x_1198 : i32 = u_xlati53;
      u_xlati54 = select(1i, 0i, (x_1198 != 0i));
      let x_1202 : u32 = u_xlatu49;
      u_xlati55 = (bitcast<i32>(x_1202) << bitcast<u32>(2i));
      let x_1205 : i32 = u_xlati54;
      if ((x_1205 != 0i)) {
        let x_1210 : vec3<f32> = vs_TEXCOORD1;
        let x_1212 : i32 = u_xlati55;
        let x_1215 : i32 = u_xlati55;
        let x_1219 : vec4<f32> = x_1192.x_AdditionalLightsWorldToLights[((x_1212 + 1i) / 4i)][((x_1215 + 1i) % 4i)];
        let x_1221 : vec3<f32> = (vec3<f32>(x_1210.y, x_1210.y, x_1210.y) * vec3<f32>(x_1219.x, x_1219.y, x_1219.w));
        let x_1222 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1221.x, x_1221.y, x_1221.z, x_1222.w);
        let x_1224 : i32 = u_xlati55;
        let x_1226 : i32 = u_xlati55;
        let x_1229 : vec4<f32> = x_1192.x_AdditionalLightsWorldToLights[(x_1224 / 4i)][(x_1226 % 4i)];
        let x_1231 : vec3<f32> = vs_TEXCOORD1;
        let x_1234 : vec4<f32> = u_xlat12;
        let x_1236 : vec3<f32> = ((vec3<f32>(x_1229.x, x_1229.y, x_1229.w) * vec3<f32>(x_1231.x, x_1231.x, x_1231.x)) + vec3<f32>(x_1234.x, x_1234.y, x_1234.z));
        let x_1237 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1237.w);
        let x_1239 : i32 = u_xlati55;
        let x_1242 : i32 = u_xlati55;
        let x_1246 : vec4<f32> = x_1192.x_AdditionalLightsWorldToLights[((x_1239 + 2i) / 4i)][((x_1242 + 2i) % 4i)];
        let x_1248 : vec3<f32> = vs_TEXCOORD1;
        let x_1251 : vec4<f32> = u_xlat12;
        let x_1253 : vec3<f32> = ((vec3<f32>(x_1246.x, x_1246.y, x_1246.w) * vec3<f32>(x_1248.z, x_1248.z, x_1248.z)) + vec3<f32>(x_1251.x, x_1251.y, x_1251.z));
        let x_1254 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1253.x, x_1253.y, x_1253.z, x_1254.w);
        let x_1256 : vec4<f32> = u_xlat12;
        let x_1258 : i32 = u_xlati55;
        let x_1261 : i32 = u_xlati55;
        let x_1265 : vec4<f32> = x_1192.x_AdditionalLightsWorldToLights[((x_1258 + 3i) / 4i)][((x_1261 + 3i) % 4i)];
        let x_1267 : vec3<f32> = (vec3<f32>(x_1256.x, x_1256.y, x_1256.z) + vec3<f32>(x_1265.x, x_1265.y, x_1265.w));
        let x_1268 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1267.x, x_1267.y, x_1267.z, x_1268.w);
        let x_1270 : vec4<f32> = u_xlat12;
        let x_1272 : vec4<f32> = u_xlat12;
        let x_1274 : vec2<f32> = (vec2<f32>(x_1270.x, x_1270.y) / vec2<f32>(x_1272.z, x_1272.z));
        let x_1275 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1274.x, x_1274.y, x_1275.z, x_1275.w);
        let x_1277 : vec4<f32> = u_xlat12;
        let x_1280 : vec2<f32> = ((vec2<f32>(x_1277.x, x_1277.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1281 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1280.x, x_1280.y, x_1281.z, x_1281.w);
        let x_1283 : vec4<f32> = u_xlat12;
        let x_1287 : vec2<f32> = clamp(vec2<f32>(x_1283.x, x_1283.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1288 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1287.x, x_1287.y, x_1288.z, x_1288.w);
        let x_1290 : u32 = u_xlatu49;
        let x_1293 : vec4<f32> = x_1192.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1290)];
        let x_1295 : vec4<f32> = u_xlat12;
        let x_1298 : u32 = u_xlatu49;
        let x_1301 : vec4<f32> = x_1192.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1298)];
        let x_1303 : vec2<f32> = ((vec2<f32>(x_1293.x, x_1293.y) * vec2<f32>(x_1295.x, x_1295.y)) + vec2<f32>(x_1301.z, x_1301.w));
        let x_1304 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1303.x, x_1303.y, x_1304.z, x_1304.w);
      } else {
        let x_1308 : i32 = u_xlati53;
        u_xlatb53 = (x_1308 == 1i);
        let x_1310 : bool = u_xlatb53;
        u_xlati53 = select(0i, 1i, x_1310);
        let x_1312 : i32 = u_xlati53;
        if ((x_1312 != 0i)) {
          let x_1317 : vec3<f32> = vs_TEXCOORD1;
          let x_1319 : i32 = u_xlati55;
          let x_1322 : i32 = u_xlati55;
          let x_1326 : vec4<f32> = x_1192.x_AdditionalLightsWorldToLights[((x_1319 + 1i) / 4i)][((x_1322 + 1i) % 4i)];
          u_xlat42 = (vec2<f32>(x_1317.y, x_1317.y) * vec2<f32>(x_1326.x, x_1326.y));
          let x_1329 : i32 = u_xlati55;
          let x_1331 : i32 = u_xlati55;
          let x_1334 : vec4<f32> = x_1192.x_AdditionalLightsWorldToLights[(x_1329 / 4i)][(x_1331 % 4i)];
          let x_1336 : vec3<f32> = vs_TEXCOORD1;
          let x_1339 : vec2<f32> = u_xlat42;
          u_xlat42 = ((vec2<f32>(x_1334.x, x_1334.y) * vec2<f32>(x_1336.x, x_1336.x)) + x_1339);
          let x_1341 : i32 = u_xlati55;
          let x_1344 : i32 = u_xlati55;
          let x_1348 : vec4<f32> = x_1192.x_AdditionalLightsWorldToLights[((x_1341 + 2i) / 4i)][((x_1344 + 2i) % 4i)];
          let x_1350 : vec3<f32> = vs_TEXCOORD1;
          let x_1353 : vec2<f32> = u_xlat42;
          u_xlat42 = ((vec2<f32>(x_1348.x, x_1348.y) * vec2<f32>(x_1350.z, x_1350.z)) + x_1353);
          let x_1355 : vec2<f32> = u_xlat42;
          let x_1356 : i32 = u_xlati55;
          let x_1359 : i32 = u_xlati55;
          let x_1363 : vec4<f32> = x_1192.x_AdditionalLightsWorldToLights[((x_1356 + 3i) / 4i)][((x_1359 + 3i) % 4i)];
          u_xlat42 = (x_1355 + vec2<f32>(x_1363.x, x_1363.y));
          let x_1366 : vec2<f32> = u_xlat42;
          u_xlat42 = ((x_1366 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1369 : vec2<f32> = u_xlat42;
          u_xlat42 = fract(x_1369);
          let x_1371 : u32 = u_xlatu49;
          let x_1374 : vec4<f32> = x_1192.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1371)];
          let x_1376 : vec2<f32> = u_xlat42;
          let x_1378 : u32 = u_xlatu49;
          let x_1381 : vec4<f32> = x_1192.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1378)];
          let x_1383 : vec2<f32> = ((vec2<f32>(x_1374.x, x_1374.y) * x_1376) + vec2<f32>(x_1381.z, x_1381.w));
          let x_1384 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1383.x, x_1383.y, x_1384.z, x_1384.w);
        } else {
          let x_1388 : vec3<f32> = vs_TEXCOORD1;
          let x_1390 : i32 = u_xlati55;
          let x_1393 : i32 = u_xlati55;
          let x_1397 : vec4<f32> = x_1192.x_AdditionalLightsWorldToLights[((x_1390 + 1i) / 4i)][((x_1393 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_1388.y, x_1388.y, x_1388.y, x_1388.y) * x_1397);
          let x_1399 : i32 = u_xlati55;
          let x_1401 : i32 = u_xlati55;
          let x_1404 : vec4<f32> = x_1192.x_AdditionalLightsWorldToLights[(x_1399 / 4i)][(x_1401 % 4i)];
          let x_1405 : vec3<f32> = vs_TEXCOORD1;
          let x_1408 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1404 * vec4<f32>(x_1405.x, x_1405.x, x_1405.x, x_1405.x)) + x_1408);
          let x_1410 : i32 = u_xlati55;
          let x_1413 : i32 = u_xlati55;
          let x_1417 : vec4<f32> = x_1192.x_AdditionalLightsWorldToLights[((x_1410 + 2i) / 4i)][((x_1413 + 2i) % 4i)];
          let x_1418 : vec3<f32> = vs_TEXCOORD1;
          let x_1421 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_1417 * vec4<f32>(x_1418.z, x_1418.z, x_1418.z, x_1418.z)) + x_1421);
          let x_1423 : vec4<f32> = u_xlat13;
          let x_1424 : i32 = u_xlati55;
          let x_1427 : i32 = u_xlati55;
          let x_1431 : vec4<f32> = x_1192.x_AdditionalLightsWorldToLights[((x_1424 + 3i) / 4i)][((x_1427 + 3i) % 4i)];
          u_xlat13 = (x_1423 + x_1431);
          let x_1433 : vec4<f32> = u_xlat13;
          let x_1435 : vec4<f32> = u_xlat13;
          let x_1437 : vec3<f32> = (vec3<f32>(x_1433.x, x_1433.y, x_1433.z) / vec3<f32>(x_1435.w, x_1435.w, x_1435.w));
          let x_1438 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1437.x, x_1437.y, x_1437.z, x_1438.w);
          let x_1440 : vec4<f32> = u_xlat13;
          let x_1442 : vec4<f32> = u_xlat13;
          u_xlat53 = dot(vec3<f32>(x_1440.x, x_1440.y, x_1440.z), vec3<f32>(x_1442.x, x_1442.y, x_1442.z));
          let x_1445 : f32 = u_xlat53;
          u_xlat53 = inverseSqrt(x_1445);
          let x_1447 : f32 = u_xlat53;
          let x_1449 : vec4<f32> = u_xlat13;
          let x_1451 : vec3<f32> = (vec3<f32>(x_1447, x_1447, x_1447) * vec3<f32>(x_1449.x, x_1449.y, x_1449.z));
          let x_1452 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1451.x, x_1451.y, x_1451.z, x_1452.w);
          let x_1454 : vec4<f32> = u_xlat13;
          u_xlat53 = dot(abs(vec3<f32>(x_1454.x, x_1454.y, x_1454.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1459 : f32 = u_xlat53;
          u_xlat53 = max(x_1459, 0.000001f);
          let x_1462 : f32 = u_xlat53;
          u_xlat53 = (1.0f / x_1462);
          let x_1465 : f32 = u_xlat53;
          let x_1467 : vec4<f32> = u_xlat13;
          u_xlat14 = (vec3<f32>(x_1465, x_1465, x_1465) * vec3<f32>(x_1467.z, x_1467.x, x_1467.y));
          let x_1471 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_1471);
          let x_1475 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_1475, 0.0f, 1.0f);
          let x_1479 : vec3<f32> = u_xlat14;
          let x_1482 : vec4<bool> = (vec4<f32>(x_1479.y, x_1479.z, x_1479.y, x_1479.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb42 = vec2<bool>(x_1482.x, x_1482.y);
          let x_1485 : bool = u_xlatb42.x;
          if (x_1485) {
            let x_1490 : f32 = u_xlat14.x;
            x_1486 = x_1490;
          } else {
            let x_1493 : f32 = u_xlat14.x;
            x_1486 = -(x_1493);
          }
          let x_1495 : f32 = x_1486;
          u_xlat42.x = x_1495;
          let x_1498 : bool = u_xlatb42.y;
          if (x_1498) {
            let x_1503 : f32 = u_xlat14.x;
            x_1499 = x_1503;
          } else {
            let x_1506 : f32 = u_xlat14.x;
            x_1499 = -(x_1506);
          }
          let x_1508 : f32 = x_1499;
          u_xlat42.y = x_1508;
          let x_1510 : vec4<f32> = u_xlat13;
          let x_1512 : f32 = u_xlat53;
          let x_1515 : vec2<f32> = u_xlat42;
          u_xlat42 = ((vec2<f32>(x_1510.x, x_1510.y) * vec2<f32>(x_1512, x_1512)) + x_1515);
          let x_1517 : vec2<f32> = u_xlat42;
          u_xlat42 = ((x_1517 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1520 : vec2<f32> = u_xlat42;
          u_xlat42 = clamp(x_1520, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1524 : u32 = u_xlatu49;
          let x_1527 : vec4<f32> = x_1192.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1524)];
          let x_1529 : vec2<f32> = u_xlat42;
          let x_1531 : u32 = u_xlatu49;
          let x_1534 : vec4<f32> = x_1192.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1531)];
          let x_1536 : vec2<f32> = ((vec2<f32>(x_1527.x, x_1527.y) * x_1529) + vec2<f32>(x_1534.z, x_1534.w));
          let x_1537 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1536.x, x_1536.y, x_1537.z, x_1537.w);
        }
      }
      let x_1544 : vec4<f32> = u_xlat12;
      let x_1547 : f32 = x_44.x_GlobalMipBias.x;
      let x_1548 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1544.x, x_1544.y), x_1547);
      u_xlat12 = x_1548;
      let x_1550 : bool = u_xlatb8.y;
      if (x_1550) {
        let x_1555 : f32 = u_xlat12.w;
        x_1551 = x_1555;
      } else {
        let x_1558 : f32 = u_xlat12.x;
        x_1551 = x_1558;
      }
      let x_1559 : f32 = x_1551;
      u_xlat53 = x_1559;
      let x_1561 : bool = u_xlatb8.x;
      if (x_1561) {
        let x_1565 : vec4<f32> = u_xlat12;
        x_1562 = vec3<f32>(x_1565.x, x_1565.y, x_1565.z);
      } else {
        let x_1568 : f32 = u_xlat53;
        x_1562 = vec3<f32>(x_1568, x_1568, x_1568);
      }
      let x_1570 : vec3<f32> = x_1562;
      let x_1571 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_1570.x, x_1570.y, x_1570.z, x_1571.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_1577 : vec4<f32> = u_xlat12;
    let x_1579 : u32 = u_xlatu49;
    let x_1582 : vec4<f32> = x_1088.x_AdditionalLightsColor[bitcast<i32>(x_1579)];
    let x_1584 : vec3<f32> = (vec3<f32>(x_1577.x, x_1577.y, x_1577.z) * vec3<f32>(x_1582.x, x_1582.y, x_1582.z));
    let x_1585 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1584.x, x_1584.y, x_1584.z, x_1585.w);
    let x_1587 : f32 = u_xlat22;
    let x_1589 : vec4<f32> = u_xlat12;
    let x_1591 : vec3<f32> = (vec3<f32>(x_1587, x_1587, x_1587) * vec3<f32>(x_1589.x, x_1589.y, x_1589.z));
    let x_1592 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1591.x, x_1591.y, x_1591.z, x_1592.w);
    let x_1594 : vec3<f32> = u_xlat4;
    let x_1595 : vec3<f32> = u_xlat11;
    u_xlat49 = dot(x_1594, x_1595);
    let x_1597 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1597, 0.0f, 1.0f);
    let x_1599 : f32 = u_xlat49;
    let x_1600 : f32 = u_xlat52;
    u_xlat49 = (x_1599 * x_1600);
    let x_1602 : f32 = u_xlat49;
    let x_1604 : vec4<f32> = u_xlat12;
    let x_1606 : vec3<f32> = (vec3<f32>(x_1602, x_1602, x_1602) * vec3<f32>(x_1604.x, x_1604.y, x_1604.z));
    let x_1607 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1606.x, x_1606.y, x_1606.z, x_1607.w);
    let x_1609 : vec3<f32> = u_xlat10;
    let x_1610 : f32 = u_xlat38;
    let x_1613 : vec3<f32> = u_xlat3;
    u_xlat10 = ((x_1609 * vec3<f32>(x_1610, x_1610, x_1610)) + x_1613);
    let x_1615 : vec3<f32> = u_xlat10;
    let x_1616 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_1615, x_1616);
    let x_1618 : f32 = u_xlat49;
    u_xlat49 = max(x_1618, 1.17549435e-37f);
    let x_1620 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_1620);
    let x_1622 : f32 = u_xlat49;
    let x_1624 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1622, x_1622, x_1622) * x_1624);
    let x_1626 : vec3<f32> = u_xlat4;
    let x_1627 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(x_1626, x_1627);
    let x_1629 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1629, 0.0f, 1.0f);
    let x_1631 : vec3<f32> = u_xlat11;
    let x_1632 : vec3<f32> = u_xlat10;
    u_xlat52 = dot(x_1631, x_1632);
    let x_1634 : f32 = u_xlat52;
    u_xlat52 = clamp(x_1634, 0.0f, 1.0f);
    let x_1636 : f32 = u_xlat49;
    let x_1637 : f32 = u_xlat49;
    u_xlat49 = (x_1636 * x_1637);
    let x_1639 : f32 = u_xlat49;
    let x_1641 : f32 = u_xlat37.x;
    u_xlat49 = ((x_1639 * x_1641) + 1.000010014f);
    let x_1644 : f32 = u_xlat52;
    let x_1645 : f32 = u_xlat52;
    u_xlat52 = (x_1644 * x_1645);
    let x_1647 : f32 = u_xlat49;
    let x_1648 : f32 = u_xlat49;
    u_xlat49 = (x_1647 * x_1648);
    let x_1650 : f32 = u_xlat52;
    u_xlat52 = max(x_1650, 0.100000001f);
    let x_1652 : f32 = u_xlat49;
    let x_1653 : f32 = u_xlat52;
    u_xlat49 = (x_1652 * x_1653);
    let x_1655 : f32 = u_xlat51;
    let x_1656 : f32 = u_xlat49;
    u_xlat49 = (x_1655 * x_1656);
    let x_1658 : f32 = u_xlat50;
    let x_1659 : f32 = u_xlat49;
    u_xlat49 = (x_1658 / x_1659);
    let x_1661 : vec4<f32> = u_xlat0;
    let x_1663 : f32 = u_xlat49;
    let x_1666 : vec3<f32> = u_xlat16;
    u_xlat10 = ((vec3<f32>(x_1661.x, x_1661.y, x_1661.z) * vec3<f32>(x_1663, x_1663, x_1663)) + x_1666);
    let x_1668 : vec3<f32> = u_xlat10;
    let x_1669 : vec4<f32> = u_xlat12;
    let x_1672 : vec4<f32> = u_xlat9;
    let x_1674 : vec3<f32> = ((x_1668 * vec3<f32>(x_1669.x, x_1669.y, x_1669.z)) + vec3<f32>(x_1672.x, x_1672.y, x_1672.z));
    let x_1675 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1674.x, x_1674.y, x_1674.z, x_1675.w);

    continuing {
      let x_1677 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1677 + bitcast<u32>(1i));
    }
  }
  let x_1679 : vec4<f32> = u_xlat6;
  let x_1681 : vec3<f32> = u_xlat7;
  let x_1684 : vec4<f32> = u_xlat5;
  let x_1686 : vec3<f32> = ((vec3<f32>(x_1679.x, x_1679.y, x_1679.z) * vec3<f32>(x_1681.x, x_1681.x, x_1681.x)) + vec3<f32>(x_1684.x, x_1684.y, x_1684.z));
  let x_1687 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1686.x, x_1686.y, x_1686.z, x_1687.w);
  let x_1689 : vec4<f32> = u_xlat9;
  let x_1691 : vec4<f32> = u_xlat0;
  let x_1693 : vec3<f32> = (vec3<f32>(x_1689.x, x_1689.y, x_1689.z) + vec3<f32>(x_1691.x, x_1691.y, x_1691.z));
  let x_1694 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1693.x, x_1693.y, x_1693.z, x_1694.w);
  let x_1696 : vec3<f32> = u_xlat2;
  let x_1698 : vec4<f32> = x_57.x_EmissionColor;
  let x_1701 : vec4<f32> = u_xlat0;
  let x_1703 : vec3<f32> = ((x_1696 * vec3<f32>(x_1698.x, x_1698.y, x_1698.z)) + vec3<f32>(x_1701.x, x_1701.y, x_1701.z));
  let x_1704 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1703.x, x_1703.y, x_1703.z, x_1704.w);
  let x_1706 : f32 = u_xlat45;
  let x_1707 : f32 = u_xlat45;
  u_xlat45 = (x_1706 * -(x_1707));
  let x_1710 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1710);
  let x_1712 : vec4<f32> = u_xlat0;
  let x_1716 : vec4<f32> = x_44.unity_FogColor;
  let x_1719 : vec3<f32> = (vec3<f32>(x_1712.x, x_1712.y, x_1712.z) + -(vec3<f32>(x_1716.x, x_1716.y, x_1716.z)));
  let x_1720 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1719.x, x_1719.y, x_1719.z, x_1720.w);
  let x_1724 : f32 = u_xlat45;
  let x_1726 : vec4<f32> = u_xlat0;
  let x_1730 : vec4<f32> = x_44.unity_FogColor;
  let x_1732 : vec3<f32> = ((vec3<f32>(x_1724, x_1724, x_1724) * vec3<f32>(x_1726.x, x_1726.y, x_1726.z)) + vec3<f32>(x_1730.x, x_1730.y, x_1730.z));
  let x_1733 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1732.x, x_1732.y, x_1732.z, x_1733.w);
  let x_1738 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1738 == 1.0f);
  let x_1740 : bool = u_xlatb0;
  if (x_1740) {
    let x_1745 : f32 = u_xlat1.x;
    x_1741 = x_1745;
  } else {
    x_1741 = 1.0f;
  }
  let x_1747 : f32 = x_1741;
  SV_Target0.w = x_1747;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

