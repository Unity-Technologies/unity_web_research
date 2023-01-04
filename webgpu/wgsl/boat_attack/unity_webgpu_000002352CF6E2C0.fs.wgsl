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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_158 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_352 : UnityPerDraw;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_661 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1102 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1206 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb42 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat44 : f32;
  var u_xlat3 : vec3<f32>;
  var x_103 : f32;
  var x_117 : f32;
  var x_129 : f32;
  var u_xlat42 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu42 : u32;
  var u_xlati42 : i32;
  var u_xlat15 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat20 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat18 : vec2<f32>;
  var u_xlatb18 : vec2<bool>;
  var u_xlatb32 : bool;
  var x_610 : f32;
  var u_xlat32 : f32;
  var x_730 : f32;
  var x_741 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat34 : vec2<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu45 : u32;
  var u_xlati48 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat48 : f32;
  var u_xlat35 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlatu49 : u32;
  var u_xlati50 : i32;
  var u_xlati49 : i32;
  var u_xlati51 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb49 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_1500 : f32;
  var x_1513 : f32;
  var x_1565 : f32;
  var x_1576 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1720 : f32;
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
  let x_69 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb42 = (x_69 == 0.0f);
  let x_75 : vec3<f32> = vs_TEXCOORD1;
  let x_80 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_81 : vec3<f32> = (-(x_75) + x_80);
  let x_82 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  let x_86 : vec4<f32> = u_xlat2;
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat44 = dot(vec3<f32>(x_86.x, x_86.y, x_86.z), vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_91 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_91);
  let x_93 : f32 = u_xlat44;
  let x_95 : vec4<f32> = u_xlat2;
  let x_97 : vec3<f32> = (vec3<f32>(x_93, x_93, x_93) * vec3<f32>(x_95.x, x_95.y, x_95.z));
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_102 : bool = u_xlatb42;
  if (x_102) {
    let x_107 : f32 = u_xlat2.x;
    x_103 = x_107;
  } else {
    let x_113 : f32 = x_44.unity_MatrixV[0i].z;
    x_103 = x_113;
  }
  let x_114 : f32 = x_103;
  u_xlat3.x = x_114;
  let x_116 : bool = u_xlatb42;
  if (x_116) {
    let x_122 : f32 = u_xlat2.y;
    x_117 = x_122;
  } else {
    let x_125 : f32 = x_44.unity_MatrixV[1i].z;
    x_117 = x_125;
  }
  let x_126 : f32 = x_117;
  u_xlat3.y = x_126;
  let x_128 : bool = u_xlatb42;
  if (x_128) {
    let x_133 : f32 = u_xlat2.z;
    x_129 = x_133;
  } else {
    let x_136 : f32 = x_44.unity_MatrixV[2i].z;
    x_129 = x_136;
  }
  let x_137 : f32 = x_129;
  u_xlat3.z = x_137;
  let x_141 : vec3<f32> = vs_TEXCOORD2;
  let x_142 : vec3<f32> = vs_TEXCOORD2;
  u_xlat42 = dot(x_141, x_142);
  let x_144 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_144);
  let x_146 : f32 = u_xlat42;
  let x_148 : vec3<f32> = vs_TEXCOORD2;
  let x_149 : vec3<f32> = (vec3<f32>(x_146, x_146, x_146) * x_148);
  let x_150 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_153 : vec3<f32> = vs_TEXCOORD1;
  let x_160 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres0;
  let x_163 : vec3<f32> = (x_153 + -(vec3<f32>(x_160.x, x_160.y, x_160.z)));
  let x_164 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_167 : vec3<f32> = vs_TEXCOORD1;
  let x_169 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres1;
  let x_172 : vec3<f32> = (x_167 + -(vec3<f32>(x_169.x, x_169.y, x_169.z)));
  let x_173 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_176 : vec3<f32> = vs_TEXCOORD1;
  let x_179 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres2;
  let x_182 : vec3<f32> = (x_176 + -(vec3<f32>(x_179.x, x_179.y, x_179.z)));
  let x_183 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_186 : vec3<f32> = vs_TEXCOORD1;
  let x_189 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres3;
  let x_192 : vec3<f32> = (x_186 + -(vec3<f32>(x_189.x, x_189.y, x_189.z)));
  let x_193 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_195 : vec4<f32> = u_xlat4;
  let x_197 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_195.x, x_195.y, x_195.z), vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_201 : vec4<f32> = u_xlat5;
  let x_203 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_201.x, x_201.y, x_201.z), vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_207 : vec4<f32> = u_xlat6;
  let x_209 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_207.x, x_207.y, x_207.z), vec3<f32>(x_209.x, x_209.y, x_209.z));
  let x_213 : vec4<f32> = u_xlat7;
  let x_215 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_213.x, x_213.y, x_213.z), vec3<f32>(x_215.x, x_215.y, x_215.z));
  let x_222 : vec4<f32> = u_xlat4;
  let x_225 : vec4<f32> = x_158.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_222 < x_225);
  let x_228 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_228);
  let x_232 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_232);
  let x_236 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_236);
  let x_240 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_240);
  let x_244 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_244);
  let x_250 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_250);
  let x_254 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_254);
  let x_257 : vec4<f32> = u_xlat4;
  let x_259 : vec4<f32> = u_xlat5;
  let x_261 : vec3<f32> = (vec3<f32>(x_257.x, x_257.y, x_257.z) + vec3<f32>(x_259.y, x_259.z, x_259.w));
  let x_262 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
  let x_264 : vec4<f32> = u_xlat4;
  let x_267 : vec3<f32> = max(vec3<f32>(x_264.x, x_264.y, x_264.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_268 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_268.x, x_267.x, x_267.y, x_267.z);
  let x_270 : vec4<f32> = u_xlat5;
  u_xlat42 = dot(x_270, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_276 : f32 = u_xlat42;
  u_xlat42 = (-(x_276) + 4.0f);
  let x_281 : f32 = u_xlat42;
  u_xlatu42 = u32(x_281);
  let x_285 : u32 = u_xlatu42;
  u_xlati42 = (bitcast<i32>(x_285) << bitcast<u32>(2i));
  let x_288 : vec3<f32> = vs_TEXCOORD1;
  let x_290 : i32 = u_xlati42;
  let x_293 : i32 = u_xlati42;
  let x_297 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_290 + 1i) / 4i)][((x_293 + 1i) % 4i)];
  let x_299 : vec3<f32> = (vec3<f32>(x_288.y, x_288.y, x_288.y) * vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : i32 = u_xlati42;
  let x_304 : i32 = u_xlati42;
  let x_307 : vec4<f32> = x_158.x_MainLightWorldToShadow[(x_302 / 4i)][(x_304 % 4i)];
  let x_309 : vec3<f32> = vs_TEXCOORD1;
  let x_312 : vec4<f32> = u_xlat4;
  let x_314 : vec3<f32> = ((vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_309.x, x_309.x, x_309.x)) + vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : i32 = u_xlati42;
  let x_320 : i32 = u_xlati42;
  let x_324 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_317 + 2i) / 4i)][((x_320 + 2i) % 4i)];
  let x_326 : vec3<f32> = vs_TEXCOORD1;
  let x_329 : vec4<f32> = u_xlat4;
  let x_331 : vec3<f32> = ((vec3<f32>(x_324.x, x_324.y, x_324.z) * vec3<f32>(x_326.z, x_326.z, x_326.z)) + vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat4;
  let x_336 : i32 = u_xlati42;
  let x_339 : i32 = u_xlati42;
  let x_343 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_336 + 3i) / 4i)][((x_339 + 3i) % 4i)];
  let x_345 : vec3<f32> = (vec3<f32>(x_334.x, x_334.y, x_334.z) + vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  u_xlat2.w = 1.0f;
  let x_355 : vec4<f32> = x_352.unity_SHAr;
  let x_356 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_355, x_356);
  let x_361 : vec4<f32> = x_352.unity_SHAg;
  let x_362 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(x_361, x_362);
  let x_367 : vec4<f32> = x_352.unity_SHAb;
  let x_368 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_367, x_368);
  let x_371 : vec4<f32> = u_xlat2;
  let x_373 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_371.y, x_371.z, x_371.z, x_371.x) * vec4<f32>(x_373.x, x_373.y, x_373.z, x_373.z));
  let x_378 : vec4<f32> = x_352.unity_SHBr;
  let x_379 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_378, x_379);
  let x_384 : vec4<f32> = x_352.unity_SHBg;
  let x_385 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_384, x_385);
  let x_390 : vec4<f32> = x_352.unity_SHBb;
  let x_391 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_390, x_391);
  let x_395 : f32 = u_xlat2.y;
  let x_397 : f32 = u_xlat2.y;
  u_xlat42 = (x_395 * x_397);
  let x_400 : f32 = u_xlat2.x;
  let x_402 : f32 = u_xlat2.x;
  let x_404 : f32 = u_xlat42;
  u_xlat42 = ((x_400 * x_402) + -(x_404));
  let x_409 : vec4<f32> = x_352.unity_SHC;
  let x_411 : f32 = u_xlat42;
  let x_414 : vec4<f32> = u_xlat7;
  let x_416 : vec3<f32> = ((vec3<f32>(x_409.x, x_409.y, x_409.z) * vec3<f32>(x_411, x_411, x_411)) + vec3<f32>(x_414.x, x_414.y, x_414.z));
  let x_417 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_419 : vec4<f32> = u_xlat5;
  let x_421 : vec4<f32> = u_xlat6;
  let x_423 : vec3<f32> = (vec3<f32>(x_419.x, x_419.y, x_419.z) + vec3<f32>(x_421.x, x_421.y, x_421.z));
  let x_424 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_426 : vec4<f32> = u_xlat5;
  let x_428 : vec3<f32> = max(vec3<f32>(x_426.x, x_426.y, x_426.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_429 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_433 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_434 : vec2<f32> = vec2<f32>(x_433.x, x_433.y);
  let x_438 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_434.x, x_434.y));
  let x_439 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
  let x_441 : vec4<f32> = u_xlat6;
  let x_443 : vec4<f32> = hlslcc_FragCoord;
  let x_445 : vec2<f32> = (vec2<f32>(x_441.x, x_441.y) * vec2<f32>(x_443.x, x_443.y));
  let x_446 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_445.x, x_445.y, x_446.z, x_446.w);
  let x_449 : f32 = u_xlat6.y;
  let x_452 : f32 = x_44.x_ScaleBiasRt.x;
  let x_455 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat42 = ((x_449 * x_452) + x_455);
  let x_457 : f32 = u_xlat42;
  u_xlat6.z = (-(x_457) + 1.0f);
  let x_462 : f32 = x_57.x_Metallic;
  u_xlat42 = ((-(x_462) * 0.959999979f) + 0.959999979f);
  let x_467 : f32 = u_xlat42;
  u_xlat44 = (-(x_467) + 1.0f);
  let x_471 : f32 = u_xlat42;
  let x_473 : vec4<f32> = u_xlat1;
  u_xlat15 = (vec3<f32>(x_471, x_471, x_471) * vec3<f32>(x_473.y, x_473.z, x_473.w));
  let x_476 : vec4<f32> = u_xlat0;
  let x_479 : vec4<f32> = x_57.x_BaseColor;
  let x_484 : vec3<f32> = ((vec3<f32>(x_476.x, x_476.y, x_476.z) * vec3<f32>(x_479.x, x_479.y, x_479.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_485 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_488 : f32 = x_57.x_Metallic;
  let x_490 : f32 = x_57.x_Metallic;
  let x_492 : f32 = x_57.x_Metallic;
  let x_493 : vec3<f32> = vec3<f32>(x_488, x_490, x_492);
  let x_498 : vec4<f32> = u_xlat0;
  let x_503 : vec3<f32> = ((vec3<f32>(x_493.x, x_493.y, x_493.z) * vec3<f32>(x_498.x, x_498.y, x_498.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_504 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_507 : f32 = x_57.x_Smoothness;
  u_xlat42 = (-(x_507) + 1.0f);
  let x_511 : f32 = u_xlat42;
  let x_512 : f32 = u_xlat42;
  u_xlat45 = (x_511 * x_512);
  let x_514 : f32 = u_xlat45;
  u_xlat45 = max(x_514, 0.0078125f);
  let x_518 : f32 = u_xlat45;
  let x_519 : f32 = u_xlat45;
  u_xlat46 = (x_518 * x_519);
  let x_521 : f32 = u_xlat44;
  let x_523 : f32 = x_57.x_Smoothness;
  u_xlat44 = (x_521 + x_523);
  let x_525 : f32 = u_xlat44;
  u_xlat44 = clamp(x_525, 0.0f, 1.0f);
  let x_528 : f32 = u_xlat45;
  u_xlat47 = ((x_528 * 4.0f) + 2.0f);
  let x_536 : vec4<f32> = u_xlat6;
  let x_539 : f32 = x_44.x_GlobalMipBias.x;
  let x_540 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_536.x, x_536.z), x_539);
  u_xlat6.x = x_540.x;
  let x_545 : f32 = u_xlat6.x;
  u_xlat20 = (x_545 + -1.0f);
  let x_548 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_549 : f32 = u_xlat20;
  u_xlat20 = ((x_548 * x_549) + 1.0f);
  let x_553 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_553, 1.0f);
  let x_557 : vec4<f32> = u_xlat4;
  let x_558 : vec2<f32> = vec2<f32>(x_557.x, x_557.y);
  let x_560 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_558.x, x_558.y, x_560);
  let x_572 : vec3<f32> = txVec0;
  let x_574 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_572.xy, x_572.z);
  u_xlat4.x = x_574;
  let x_579 : f32 = x_158.x_MainLightShadowParams.x;
  u_xlat18.x = (-(x_579) + 1.0f);
  let x_584 : f32 = u_xlat4.x;
  let x_586 : f32 = x_158.x_MainLightShadowParams.x;
  let x_589 : f32 = u_xlat18.x;
  u_xlat4.x = ((x_584 * x_586) + x_589);
  let x_596 : f32 = u_xlat4.z;
  u_xlatb18.x = (0.0f >= x_596);
  let x_601 : f32 = u_xlat4.z;
  u_xlatb32 = (x_601 >= 1.0f);
  let x_603 : bool = u_xlatb32;
  let x_605 : bool = u_xlatb18.x;
  u_xlatb18.x = (x_603 | x_605);
  let x_609 : bool = u_xlatb18.x;
  if (x_609) {
    x_610 = 1.0f;
  } else {
    let x_615 : f32 = u_xlat4.x;
    x_610 = x_615;
  }
  let x_616 : f32 = x_610;
  u_xlat4.x = x_616;
  let x_618 : vec3<f32> = vs_TEXCOORD1;
  let x_620 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_622 : vec3<f32> = (x_618 + -(x_620));
  let x_623 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
  let x_625 : vec4<f32> = u_xlat7;
  let x_627 : vec4<f32> = u_xlat7;
  u_xlat18.x = dot(vec3<f32>(x_625.x, x_625.y, x_625.z), vec3<f32>(x_627.x, x_627.y, x_627.z));
  let x_632 : f32 = u_xlat18.x;
  let x_634 : f32 = x_158.x_MainLightShadowParams.z;
  let x_637 : f32 = x_158.x_MainLightShadowParams.w;
  u_xlat18.x = ((x_632 * x_634) + x_637);
  let x_641 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_641, 0.0f, 1.0f);
  let x_646 : f32 = u_xlat4.x;
  u_xlat32 = (-(x_646) + 1.0f);
  let x_650 : f32 = u_xlat18.x;
  let x_651 : f32 = u_xlat32;
  let x_654 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_650 * x_651) + x_654);
  let x_663 : f32 = x_661.x_MainLightCookieTextureFormat;
  u_xlatb18.x = !((x_663 == -1.0f));
  let x_667 : bool = u_xlatb18.x;
  if (x_667) {
    let x_670 : vec3<f32> = vs_TEXCOORD1;
    let x_673 : vec4<f32> = x_661.x_MainLightWorldToLight[1i];
    u_xlat18 = (vec2<f32>(x_670.y, x_670.y) * vec2<f32>(x_673.x, x_673.y));
    let x_677 : vec4<f32> = x_661.x_MainLightWorldToLight[0i];
    let x_679 : vec3<f32> = vs_TEXCOORD1;
    let x_682 : vec2<f32> = u_xlat18;
    u_xlat18 = ((vec2<f32>(x_677.x, x_677.y) * vec2<f32>(x_679.x, x_679.x)) + x_682);
    let x_685 : vec4<f32> = x_661.x_MainLightWorldToLight[2i];
    let x_687 : vec3<f32> = vs_TEXCOORD1;
    let x_690 : vec2<f32> = u_xlat18;
    u_xlat18 = ((vec2<f32>(x_685.x, x_685.y) * vec2<f32>(x_687.z, x_687.z)) + x_690);
    let x_692 : vec2<f32> = u_xlat18;
    let x_694 : vec4<f32> = x_661.x_MainLightWorldToLight[3i];
    u_xlat18 = (x_692 + vec2<f32>(x_694.x, x_694.y));
    let x_697 : vec2<f32> = u_xlat18;
    u_xlat18 = ((x_697 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_707 : vec2<f32> = u_xlat18;
    let x_709 : f32 = x_44.x_GlobalMipBias.x;
    let x_710 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_707, x_709);
    u_xlat7 = x_710;
    let x_712 : f32 = x_661.x_MainLightCookieTextureFormat;
    let x_714 : f32 = x_661.x_MainLightCookieTextureFormat;
    let x_716 : f32 = x_661.x_MainLightCookieTextureFormat;
    let x_718 : f32 = x_661.x_MainLightCookieTextureFormat;
    let x_719 : vec4<f32> = vec4<f32>(x_712, x_714, x_716, x_718);
    let x_726 : vec4<bool> = (vec4<f32>(x_719.x, x_719.y, x_719.z, x_719.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb18 = vec2<bool>(x_726.x, x_726.y);
    let x_729 : bool = u_xlatb18.y;
    if (x_729) {
      let x_734 : f32 = u_xlat7.w;
      x_730 = x_734;
    } else {
      let x_737 : f32 = u_xlat7.x;
      x_730 = x_737;
    }
    let x_738 : f32 = x_730;
    u_xlat32 = x_738;
    let x_740 : bool = u_xlatb18.x;
    if (x_740) {
      let x_744 : vec4<f32> = u_xlat7;
      x_741 = vec3<f32>(x_744.x, x_744.y, x_744.z);
    } else {
      let x_747 : f32 = u_xlat32;
      x_741 = vec3<f32>(x_747, x_747, x_747);
    }
    let x_749 : vec3<f32> = x_741;
    let x_750 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_756 : vec4<f32> = u_xlat7;
  let x_759 : vec4<f32> = x_44.x_MainLightColor;
  let x_761 : vec3<f32> = (vec3<f32>(x_756.x, x_756.y, x_756.z) * vec3<f32>(x_759.x, x_759.y, x_759.z));
  let x_762 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  let x_764 : f32 = u_xlat20;
  let x_766 : vec4<f32> = u_xlat7;
  let x_768 : vec3<f32> = (vec3<f32>(x_764, x_764, x_764) * vec3<f32>(x_766.x, x_766.y, x_766.z));
  let x_769 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  let x_771 : vec3<f32> = u_xlat3;
  let x_773 : vec4<f32> = u_xlat2;
  u_xlat18.x = dot(-(x_771), vec3<f32>(x_773.x, x_773.y, x_773.z));
  let x_778 : f32 = u_xlat18.x;
  let x_780 : f32 = u_xlat18.x;
  u_xlat18.x = (x_778 + x_780);
  let x_784 : vec4<f32> = u_xlat2;
  let x_786 : vec2<f32> = u_xlat18;
  let x_790 : vec3<f32> = u_xlat3;
  let x_792 : vec3<f32> = ((vec3<f32>(x_784.x, x_784.y, x_784.z) * -(vec3<f32>(x_786.x, x_786.x, x_786.x))) + -(x_790));
  let x_793 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
  let x_795 : vec4<f32> = u_xlat2;
  let x_797 : vec3<f32> = u_xlat3;
  u_xlat18.x = dot(vec3<f32>(x_795.x, x_795.y, x_795.z), x_797);
  let x_801 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_801, 0.0f, 1.0f);
  let x_805 : f32 = u_xlat18.x;
  u_xlat18.x = (-(x_805) + 1.0f);
  let x_810 : f32 = u_xlat18.x;
  let x_812 : f32 = u_xlat18.x;
  u_xlat18.x = (x_810 * x_812);
  let x_816 : f32 = u_xlat18.x;
  let x_818 : f32 = u_xlat18.x;
  u_xlat18.x = (x_816 * x_818);
  let x_821 : f32 = u_xlat42;
  u_xlat32 = ((-(x_821) * 0.699999988f) + 1.700000048f);
  let x_827 : f32 = u_xlat42;
  let x_828 : f32 = u_xlat32;
  u_xlat42 = (x_827 * x_828);
  let x_830 : f32 = u_xlat42;
  u_xlat42 = (x_830 * 6.0f);
  let x_841 : vec4<f32> = u_xlat8;
  let x_843 : f32 = u_xlat42;
  let x_844 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_841.x, x_841.y, x_841.z), x_843);
  u_xlat8 = x_844;
  let x_846 : f32 = u_xlat8.w;
  u_xlat42 = (x_846 + -1.0f);
  let x_849 : f32 = x_352.unity_SpecCube0_HDR.w;
  let x_850 : f32 = u_xlat42;
  u_xlat42 = ((x_849 * x_850) + 1.0f);
  let x_853 : f32 = u_xlat42;
  u_xlat42 = max(x_853, 0.0f);
  let x_855 : f32 = u_xlat42;
  u_xlat42 = log2(x_855);
  let x_857 : f32 = u_xlat42;
  let x_859 : f32 = x_352.unity_SpecCube0_HDR.y;
  u_xlat42 = (x_857 * x_859);
  let x_861 : f32 = u_xlat42;
  u_xlat42 = exp2(x_861);
  let x_863 : f32 = u_xlat42;
  let x_865 : f32 = x_352.unity_SpecCube0_HDR.x;
  u_xlat42 = (x_863 * x_865);
  let x_867 : vec4<f32> = u_xlat8;
  let x_869 : f32 = u_xlat42;
  let x_871 : vec3<f32> = (vec3<f32>(x_867.x, x_867.y, x_867.z) * vec3<f32>(x_869, x_869, x_869));
  let x_872 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
  let x_875 : f32 = u_xlat45;
  let x_877 : f32 = u_xlat45;
  u_xlat34 = ((vec2<f32>(x_875, x_875) * vec2<f32>(x_877, x_877)) + vec2<f32>(-1.0f, 1.0f));
  let x_883 : f32 = u_xlat34.y;
  u_xlat42 = (1.0f / x_883);
  let x_886 : vec4<f32> = u_xlat0;
  let x_889 : f32 = u_xlat44;
  u_xlat9 = (-(vec3<f32>(x_886.x, x_886.y, x_886.z)) + vec3<f32>(x_889, x_889, x_889));
  let x_892 : vec2<f32> = u_xlat18;
  let x_894 : vec3<f32> = u_xlat9;
  let x_896 : vec4<f32> = u_xlat0;
  u_xlat9 = ((vec3<f32>(x_892.x, x_892.x, x_892.x) * x_894) + vec3<f32>(x_896.x, x_896.y, x_896.z));
  let x_899 : f32 = u_xlat42;
  let x_901 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_899, x_899, x_899) * x_901);
  let x_903 : vec4<f32> = u_xlat8;
  let x_905 : vec3<f32> = u_xlat9;
  let x_906 : vec3<f32> = (vec3<f32>(x_903.x, x_903.y, x_903.z) * x_905);
  let x_907 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_906.x, x_906.y, x_906.z, x_907.w);
  let x_909 : vec4<f32> = u_xlat5;
  let x_911 : vec3<f32> = u_xlat15;
  let x_913 : vec4<f32> = u_xlat8;
  let x_915 : vec3<f32> = ((vec3<f32>(x_909.x, x_909.y, x_909.z) * x_911) + vec3<f32>(x_913.x, x_913.y, x_913.z));
  let x_916 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
  let x_919 : f32 = u_xlat4.x;
  let x_921 : f32 = x_352.unity_LightData.z;
  u_xlat42 = (x_919 * x_921);
  let x_923 : vec4<f32> = u_xlat2;
  let x_926 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_923.x, x_923.y, x_923.z), vec3<f32>(x_926.x, x_926.y, x_926.z));
  let x_929 : f32 = u_xlat44;
  u_xlat44 = clamp(x_929, 0.0f, 1.0f);
  let x_931 : f32 = u_xlat42;
  let x_932 : f32 = u_xlat44;
  u_xlat42 = (x_931 * x_932);
  let x_934 : f32 = u_xlat42;
  let x_936 : vec4<f32> = u_xlat7;
  let x_938 : vec3<f32> = (vec3<f32>(x_934, x_934, x_934) * vec3<f32>(x_936.x, x_936.y, x_936.z));
  let x_939 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
  let x_941 : vec3<f32> = u_xlat3;
  let x_943 : vec4<f32> = x_44.x_MainLightPosition;
  let x_945 : vec3<f32> = (x_941 + vec3<f32>(x_943.x, x_943.y, x_943.z));
  let x_946 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_945.x, x_945.y, x_945.z, x_946.w);
  let x_948 : vec4<f32> = u_xlat7;
  let x_950 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_948.x, x_948.y, x_948.z), vec3<f32>(x_950.x, x_950.y, x_950.z));
  let x_953 : f32 = u_xlat42;
  u_xlat42 = max(x_953, 1.17549435e-37f);
  let x_956 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_956);
  let x_958 : f32 = u_xlat42;
  let x_960 : vec4<f32> = u_xlat7;
  let x_962 : vec3<f32> = (vec3<f32>(x_958, x_958, x_958) * vec3<f32>(x_960.x, x_960.y, x_960.z));
  let x_963 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
  let x_965 : vec4<f32> = u_xlat2;
  let x_967 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_965.x, x_965.y, x_965.z), vec3<f32>(x_967.x, x_967.y, x_967.z));
  let x_970 : f32 = u_xlat42;
  u_xlat42 = clamp(x_970, 0.0f, 1.0f);
  let x_973 : vec4<f32> = x_44.x_MainLightPosition;
  let x_975 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_973.x, x_973.y, x_973.z), vec3<f32>(x_975.x, x_975.y, x_975.z));
  let x_978 : f32 = u_xlat44;
  u_xlat44 = clamp(x_978, 0.0f, 1.0f);
  let x_980 : f32 = u_xlat42;
  let x_981 : f32 = u_xlat42;
  u_xlat42 = (x_980 * x_981);
  let x_983 : f32 = u_xlat42;
  let x_985 : f32 = u_xlat34.x;
  u_xlat42 = ((x_983 * x_985) + 1.000010014f);
  let x_989 : f32 = u_xlat44;
  let x_990 : f32 = u_xlat44;
  u_xlat44 = (x_989 * x_990);
  let x_992 : f32 = u_xlat42;
  let x_993 : f32 = u_xlat42;
  u_xlat42 = (x_992 * x_993);
  let x_995 : f32 = u_xlat44;
  u_xlat44 = max(x_995, 0.100000001f);
  let x_998 : f32 = u_xlat42;
  let x_999 : f32 = u_xlat44;
  u_xlat42 = (x_998 * x_999);
  let x_1001 : f32 = u_xlat47;
  let x_1002 : f32 = u_xlat42;
  u_xlat42 = (x_1001 * x_1002);
  let x_1004 : f32 = u_xlat46;
  let x_1005 : f32 = u_xlat42;
  u_xlat42 = (x_1004 / x_1005);
  let x_1007 : vec4<f32> = u_xlat0;
  let x_1009 : f32 = u_xlat42;
  let x_1012 : vec3<f32> = u_xlat15;
  let x_1013 : vec3<f32> = ((vec3<f32>(x_1007.x, x_1007.y, x_1007.z) * vec3<f32>(x_1009, x_1009, x_1009)) + x_1012);
  let x_1014 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1013.x, x_1013.y, x_1013.z, x_1014.w);
  let x_1016 : vec4<f32> = u_xlat4;
  let x_1018 : vec4<f32> = u_xlat7;
  let x_1020 : vec3<f32> = (vec3<f32>(x_1016.x, x_1016.y, x_1016.z) * vec3<f32>(x_1018.x, x_1018.y, x_1018.z));
  let x_1021 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
  let x_1024 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1026 : f32 = x_352.unity_LightData.y;
  u_xlat42 = min(x_1024, x_1026);
  let x_1028 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1028));
  let x_1033 : f32 = x_661.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1035 : f32 = x_661.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1037 : f32 = x_661.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1039 : f32 = x_661.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1040 : vec4<f32> = vec4<f32>(x_1033, x_1035, x_1037, x_1039);
  let x_1046 : vec4<bool> = (vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1040.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1046.x, x_1046.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1057 : u32 = u_xlatu_loop_1;
    let x_1058 : u32 = u_xlatu42;
    if ((x_1057 < x_1058)) {
    } else {
      break;
    }
    let x_1061 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1061 >> 2u);
    let x_1064 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1064 & 3u));
    let x_1067 : u32 = u_xlatu45;
    let x_1070 : vec4<f32> = x_352.unity_LightIndices[bitcast<i32>(x_1067)];
    let x_1080 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1085 : vec4<u32> = indexable[x_1080];
    u_xlat45 = dot(x_1070, bitcast<vec4<f32>>(x_1085));
    let x_1088 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1088));
    let x_1091 : vec3<f32> = vs_TEXCOORD1;
    let x_1103 : u32 = u_xlatu45;
    let x_1106 : vec4<f32> = x_1102.x_AdditionalLightsPosition[bitcast<i32>(x_1103)];
    let x_1109 : u32 = u_xlatu45;
    let x_1112 : vec4<f32> = x_1102.x_AdditionalLightsPosition[bitcast<i32>(x_1109)];
    u_xlat9 = ((-(x_1091) * vec3<f32>(x_1106.w, x_1106.w, x_1106.w)) + vec3<f32>(x_1112.x, x_1112.y, x_1112.z));
    let x_1116 : vec3<f32> = u_xlat9;
    let x_1117 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1116, x_1117);
    let x_1119 : f32 = u_xlat48;
    u_xlat48 = max(x_1119, 6.10351562e-05f);
    let x_1123 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_1123);
    let x_1126 : f32 = u_xlat35;
    let x_1128 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1126, x_1126, x_1126) * x_1128);
    let x_1131 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_1131);
    let x_1133 : f32 = u_xlat48;
    let x_1134 : u32 = u_xlatu45;
    let x_1137 : f32 = x_1102.x_AdditionalLightsAttenuation[bitcast<i32>(x_1134)].x;
    u_xlat48 = (x_1133 * x_1137);
    let x_1139 : f32 = u_xlat48;
    let x_1141 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1139) * x_1141) + 1.0f);
    let x_1144 : f32 = u_xlat48;
    u_xlat48 = max(x_1144, 0.0f);
    let x_1146 : f32 = u_xlat48;
    let x_1147 : f32 = u_xlat48;
    u_xlat48 = (x_1146 * x_1147);
    let x_1149 : f32 = u_xlat48;
    let x_1150 : f32 = u_xlat49;
    u_xlat48 = (x_1149 * x_1150);
    let x_1152 : u32 = u_xlatu45;
    let x_1155 : vec4<f32> = x_1102.x_AdditionalLightsSpotDir[bitcast<i32>(x_1152)];
    let x_1157 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1155.x, x_1155.y, x_1155.z), x_1157);
    let x_1159 : f32 = u_xlat49;
    let x_1160 : u32 = u_xlatu45;
    let x_1163 : f32 = x_1102.x_AdditionalLightsAttenuation[bitcast<i32>(x_1160)].z;
    let x_1165 : u32 = u_xlatu45;
    let x_1168 : f32 = x_1102.x_AdditionalLightsAttenuation[bitcast<i32>(x_1165)].w;
    u_xlat49 = ((x_1159 * x_1163) + x_1168);
    let x_1170 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1170, 0.0f, 1.0f);
    let x_1172 : f32 = u_xlat49;
    let x_1173 : f32 = u_xlat49;
    u_xlat49 = (x_1172 * x_1173);
    let x_1175 : f32 = u_xlat48;
    let x_1176 : f32 = u_xlat49;
    u_xlat48 = (x_1175 * x_1176);
    let x_1179 : u32 = u_xlatu45;
    u_xlatu49 = (x_1179 >> 5u);
    let x_1182 : u32 = u_xlatu45;
    u_xlati50 = (1i << bitcast<u32>((bitcast<i32>(x_1182) & 31i)));
    let x_1188 : i32 = u_xlati50;
    let x_1190 : u32 = u_xlatu49;
    let x_1193 : f32 = x_661.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1190)].el;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1188) & bitcast<u32>(x_1193)));
    let x_1197 : i32 = u_xlati49;
    if ((x_1197 != 0i)) {
      let x_1207 : u32 = u_xlatu45;
      let x_1210 : f32 = x_1206.x_AdditionalLightsLightTypes[bitcast<i32>(x_1207)].el;
      u_xlati49 = i32(x_1210);
      let x_1212 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1212 != 0i));
      let x_1216 : u32 = u_xlatu45;
      u_xlati51 = (bitcast<i32>(x_1216) << bitcast<u32>(2i));
      let x_1219 : i32 = u_xlati50;
      if ((x_1219 != 0i)) {
        let x_1224 : vec3<f32> = vs_TEXCOORD1;
        let x_1226 : i32 = u_xlati51;
        let x_1229 : i32 = u_xlati51;
        let x_1233 : vec4<f32> = x_1206.x_AdditionalLightsWorldToLights[((x_1226 + 1i) / 4i)][((x_1229 + 1i) % 4i)];
        let x_1235 : vec3<f32> = (vec3<f32>(x_1224.y, x_1224.y, x_1224.y) * vec3<f32>(x_1233.x, x_1233.y, x_1233.w));
        let x_1236 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1236.w);
        let x_1238 : i32 = u_xlati51;
        let x_1240 : i32 = u_xlati51;
        let x_1243 : vec4<f32> = x_1206.x_AdditionalLightsWorldToLights[(x_1238 / 4i)][(x_1240 % 4i)];
        let x_1245 : vec3<f32> = vs_TEXCOORD1;
        let x_1248 : vec4<f32> = u_xlat11;
        let x_1250 : vec3<f32> = ((vec3<f32>(x_1243.x, x_1243.y, x_1243.w) * vec3<f32>(x_1245.x, x_1245.x, x_1245.x)) + vec3<f32>(x_1248.x, x_1248.y, x_1248.z));
        let x_1251 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1251.w);
        let x_1253 : i32 = u_xlati51;
        let x_1256 : i32 = u_xlati51;
        let x_1260 : vec4<f32> = x_1206.x_AdditionalLightsWorldToLights[((x_1253 + 2i) / 4i)][((x_1256 + 2i) % 4i)];
        let x_1262 : vec3<f32> = vs_TEXCOORD1;
        let x_1265 : vec4<f32> = u_xlat11;
        let x_1267 : vec3<f32> = ((vec3<f32>(x_1260.x, x_1260.y, x_1260.w) * vec3<f32>(x_1262.z, x_1262.z, x_1262.z)) + vec3<f32>(x_1265.x, x_1265.y, x_1265.z));
        let x_1268 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1267.x, x_1267.y, x_1267.z, x_1268.w);
        let x_1270 : vec4<f32> = u_xlat11;
        let x_1272 : i32 = u_xlati51;
        let x_1275 : i32 = u_xlati51;
        let x_1279 : vec4<f32> = x_1206.x_AdditionalLightsWorldToLights[((x_1272 + 3i) / 4i)][((x_1275 + 3i) % 4i)];
        let x_1281 : vec3<f32> = (vec3<f32>(x_1270.x, x_1270.y, x_1270.z) + vec3<f32>(x_1279.x, x_1279.y, x_1279.w));
        let x_1282 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1281.x, x_1281.y, x_1281.z, x_1282.w);
        let x_1284 : vec4<f32> = u_xlat11;
        let x_1286 : vec4<f32> = u_xlat11;
        let x_1288 : vec2<f32> = (vec2<f32>(x_1284.x, x_1284.y) / vec2<f32>(x_1286.z, x_1286.z));
        let x_1289 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1288.x, x_1288.y, x_1289.z, x_1289.w);
        let x_1291 : vec4<f32> = u_xlat11;
        let x_1294 : vec2<f32> = ((vec2<f32>(x_1291.x, x_1291.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1295 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1294.x, x_1294.y, x_1295.z, x_1295.w);
        let x_1297 : vec4<f32> = u_xlat11;
        let x_1301 : vec2<f32> = clamp(vec2<f32>(x_1297.x, x_1297.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1302 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1301.x, x_1301.y, x_1302.z, x_1302.w);
        let x_1304 : u32 = u_xlatu45;
        let x_1307 : vec4<f32> = x_1206.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1304)];
        let x_1309 : vec4<f32> = u_xlat11;
        let x_1312 : u32 = u_xlatu45;
        let x_1315 : vec4<f32> = x_1206.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1312)];
        let x_1317 : vec2<f32> = ((vec2<f32>(x_1307.x, x_1307.y) * vec2<f32>(x_1309.x, x_1309.y)) + vec2<f32>(x_1315.z, x_1315.w));
        let x_1318 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1317.x, x_1317.y, x_1318.z, x_1318.w);
      } else {
        let x_1322 : i32 = u_xlati49;
        u_xlatb49 = (x_1322 == 1i);
        let x_1324 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1324);
        let x_1326 : i32 = u_xlati49;
        if ((x_1326 != 0i)) {
          let x_1331 : vec3<f32> = vs_TEXCOORD1;
          let x_1333 : i32 = u_xlati51;
          let x_1336 : i32 = u_xlati51;
          let x_1340 : vec4<f32> = x_1206.x_AdditionalLightsWorldToLights[((x_1333 + 1i) / 4i)][((x_1336 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1331.y, x_1331.y) * vec2<f32>(x_1340.x, x_1340.y));
          let x_1343 : i32 = u_xlati51;
          let x_1345 : i32 = u_xlati51;
          let x_1348 : vec4<f32> = x_1206.x_AdditionalLightsWorldToLights[(x_1343 / 4i)][(x_1345 % 4i)];
          let x_1350 : vec3<f32> = vs_TEXCOORD1;
          let x_1353 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1348.x, x_1348.y) * vec2<f32>(x_1350.x, x_1350.x)) + x_1353);
          let x_1355 : i32 = u_xlati51;
          let x_1358 : i32 = u_xlati51;
          let x_1362 : vec4<f32> = x_1206.x_AdditionalLightsWorldToLights[((x_1355 + 2i) / 4i)][((x_1358 + 2i) % 4i)];
          let x_1364 : vec3<f32> = vs_TEXCOORD1;
          let x_1367 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1362.x, x_1362.y) * vec2<f32>(x_1364.z, x_1364.z)) + x_1367);
          let x_1369 : vec2<f32> = u_xlat39;
          let x_1370 : i32 = u_xlati51;
          let x_1373 : i32 = u_xlati51;
          let x_1377 : vec4<f32> = x_1206.x_AdditionalLightsWorldToLights[((x_1370 + 3i) / 4i)][((x_1373 + 3i) % 4i)];
          u_xlat39 = (x_1369 + vec2<f32>(x_1377.x, x_1377.y));
          let x_1380 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1380 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1383 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1383);
          let x_1385 : u32 = u_xlatu45;
          let x_1388 : vec4<f32> = x_1206.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1385)];
          let x_1390 : vec2<f32> = u_xlat39;
          let x_1392 : u32 = u_xlatu45;
          let x_1395 : vec4<f32> = x_1206.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1392)];
          let x_1397 : vec2<f32> = ((vec2<f32>(x_1388.x, x_1388.y) * x_1390) + vec2<f32>(x_1395.z, x_1395.w));
          let x_1398 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1397.x, x_1397.y, x_1398.z, x_1398.w);
        } else {
          let x_1402 : vec3<f32> = vs_TEXCOORD1;
          let x_1404 : i32 = u_xlati51;
          let x_1407 : i32 = u_xlati51;
          let x_1411 : vec4<f32> = x_1206.x_AdditionalLightsWorldToLights[((x_1404 + 1i) / 4i)][((x_1407 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1402.y, x_1402.y, x_1402.y, x_1402.y) * x_1411);
          let x_1413 : i32 = u_xlati51;
          let x_1415 : i32 = u_xlati51;
          let x_1418 : vec4<f32> = x_1206.x_AdditionalLightsWorldToLights[(x_1413 / 4i)][(x_1415 % 4i)];
          let x_1419 : vec3<f32> = vs_TEXCOORD1;
          let x_1422 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1418 * vec4<f32>(x_1419.x, x_1419.x, x_1419.x, x_1419.x)) + x_1422);
          let x_1424 : i32 = u_xlati51;
          let x_1427 : i32 = u_xlati51;
          let x_1431 : vec4<f32> = x_1206.x_AdditionalLightsWorldToLights[((x_1424 + 2i) / 4i)][((x_1427 + 2i) % 4i)];
          let x_1432 : vec3<f32> = vs_TEXCOORD1;
          let x_1435 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1431 * vec4<f32>(x_1432.z, x_1432.z, x_1432.z, x_1432.z)) + x_1435);
          let x_1437 : vec4<f32> = u_xlat12;
          let x_1438 : i32 = u_xlati51;
          let x_1441 : i32 = u_xlati51;
          let x_1445 : vec4<f32> = x_1206.x_AdditionalLightsWorldToLights[((x_1438 + 3i) / 4i)][((x_1441 + 3i) % 4i)];
          u_xlat12 = (x_1437 + x_1445);
          let x_1447 : vec4<f32> = u_xlat12;
          let x_1449 : vec4<f32> = u_xlat12;
          let x_1451 : vec3<f32> = (vec3<f32>(x_1447.x, x_1447.y, x_1447.z) / vec3<f32>(x_1449.w, x_1449.w, x_1449.w));
          let x_1452 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1451.x, x_1451.y, x_1451.z, x_1452.w);
          let x_1454 : vec4<f32> = u_xlat12;
          let x_1456 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1454.x, x_1454.y, x_1454.z), vec3<f32>(x_1456.x, x_1456.y, x_1456.z));
          let x_1459 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1459);
          let x_1461 : f32 = u_xlat49;
          let x_1463 : vec4<f32> = u_xlat12;
          let x_1465 : vec3<f32> = (vec3<f32>(x_1461, x_1461, x_1461) * vec3<f32>(x_1463.x, x_1463.y, x_1463.z));
          let x_1466 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1465.x, x_1465.y, x_1465.z, x_1466.w);
          let x_1468 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1468.x, x_1468.y, x_1468.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1473 : f32 = u_xlat49;
          u_xlat49 = max(x_1473, 0.000001f);
          let x_1476 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1476);
          let x_1479 : f32 = u_xlat49;
          let x_1481 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1479, x_1479, x_1479) * vec3<f32>(x_1481.z, x_1481.x, x_1481.y));
          let x_1485 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1485);
          let x_1489 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1489, 0.0f, 1.0f);
          let x_1493 : vec3<f32> = u_xlat13;
          let x_1496 : vec4<bool> = (vec4<f32>(x_1493.y, x_1493.z, x_1493.y, x_1493.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1496.x, x_1496.y);
          let x_1499 : bool = u_xlatb39.x;
          if (x_1499) {
            let x_1504 : f32 = u_xlat13.x;
            x_1500 = x_1504;
          } else {
            let x_1507 : f32 = u_xlat13.x;
            x_1500 = -(x_1507);
          }
          let x_1509 : f32 = x_1500;
          u_xlat39.x = x_1509;
          let x_1512 : bool = u_xlatb39.y;
          if (x_1512) {
            let x_1517 : f32 = u_xlat13.x;
            x_1513 = x_1517;
          } else {
            let x_1520 : f32 = u_xlat13.x;
            x_1513 = -(x_1520);
          }
          let x_1522 : f32 = x_1513;
          u_xlat39.y = x_1522;
          let x_1524 : vec4<f32> = u_xlat12;
          let x_1526 : f32 = u_xlat49;
          let x_1529 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1524.x, x_1524.y) * vec2<f32>(x_1526, x_1526)) + x_1529);
          let x_1531 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1531 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1534 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1534, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1538 : u32 = u_xlatu45;
          let x_1541 : vec4<f32> = x_1206.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1538)];
          let x_1543 : vec2<f32> = u_xlat39;
          let x_1545 : u32 = u_xlatu45;
          let x_1548 : vec4<f32> = x_1206.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1545)];
          let x_1550 : vec2<f32> = ((vec2<f32>(x_1541.x, x_1541.y) * x_1543) + vec2<f32>(x_1548.z, x_1548.w));
          let x_1551 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1550.x, x_1550.y, x_1551.z, x_1551.w);
        }
      }
      let x_1558 : vec4<f32> = u_xlat11;
      let x_1561 : f32 = x_44.x_GlobalMipBias.x;
      let x_1562 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1558.x, x_1558.y), x_1561);
      u_xlat11 = x_1562;
      let x_1564 : bool = u_xlatb7.y;
      if (x_1564) {
        let x_1569 : f32 = u_xlat11.w;
        x_1565 = x_1569;
      } else {
        let x_1572 : f32 = u_xlat11.x;
        x_1565 = x_1572;
      }
      let x_1573 : f32 = x_1565;
      u_xlat49 = x_1573;
      let x_1575 : bool = u_xlatb7.x;
      if (x_1575) {
        let x_1579 : vec4<f32> = u_xlat11;
        x_1576 = vec3<f32>(x_1579.x, x_1579.y, x_1579.z);
      } else {
        let x_1582 : f32 = u_xlat49;
        x_1576 = vec3<f32>(x_1582, x_1582, x_1582);
      }
      let x_1584 : vec3<f32> = x_1576;
      let x_1585 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1584.x, x_1584.y, x_1584.z, x_1585.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1591 : vec4<f32> = u_xlat11;
    let x_1593 : u32 = u_xlatu45;
    let x_1596 : vec4<f32> = x_1102.x_AdditionalLightsColor[bitcast<i32>(x_1593)];
    let x_1598 : vec3<f32> = (vec3<f32>(x_1591.x, x_1591.y, x_1591.z) * vec3<f32>(x_1596.x, x_1596.y, x_1596.z));
    let x_1599 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1598.x, x_1598.y, x_1598.z, x_1599.w);
    let x_1601 : f32 = u_xlat20;
    let x_1603 : vec4<f32> = u_xlat11;
    let x_1605 : vec3<f32> = (vec3<f32>(x_1601, x_1601, x_1601) * vec3<f32>(x_1603.x, x_1603.y, x_1603.z));
    let x_1606 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1605.x, x_1605.y, x_1605.z, x_1606.w);
    let x_1608 : vec4<f32> = u_xlat2;
    let x_1610 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(vec3<f32>(x_1608.x, x_1608.y, x_1608.z), x_1610);
    let x_1612 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1612, 0.0f, 1.0f);
    let x_1614 : f32 = u_xlat45;
    let x_1615 : f32 = u_xlat48;
    u_xlat45 = (x_1614 * x_1615);
    let x_1617 : f32 = u_xlat45;
    let x_1619 : vec4<f32> = u_xlat11;
    let x_1621 : vec3<f32> = (vec3<f32>(x_1617, x_1617, x_1617) * vec3<f32>(x_1619.x, x_1619.y, x_1619.z));
    let x_1622 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1621.x, x_1621.y, x_1621.z, x_1622.w);
    let x_1624 : vec3<f32> = u_xlat9;
    let x_1625 : f32 = u_xlat35;
    let x_1628 : vec3<f32> = u_xlat3;
    u_xlat9 = ((x_1624 * vec3<f32>(x_1625, x_1625, x_1625)) + x_1628);
    let x_1630 : vec3<f32> = u_xlat9;
    let x_1631 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1630, x_1631);
    let x_1633 : f32 = u_xlat45;
    u_xlat45 = max(x_1633, 1.17549435e-37f);
    let x_1635 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1635);
    let x_1637 : f32 = u_xlat45;
    let x_1639 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1637, x_1637, x_1637) * x_1639);
    let x_1641 : vec4<f32> = u_xlat2;
    let x_1643 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1641.x, x_1641.y, x_1641.z), x_1643);
    let x_1645 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1645, 0.0f, 1.0f);
    let x_1647 : vec3<f32> = u_xlat10;
    let x_1648 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1647, x_1648);
    let x_1650 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1650, 0.0f, 1.0f);
    let x_1652 : f32 = u_xlat45;
    let x_1653 : f32 = u_xlat45;
    u_xlat45 = (x_1652 * x_1653);
    let x_1655 : f32 = u_xlat45;
    let x_1657 : f32 = u_xlat34.x;
    u_xlat45 = ((x_1655 * x_1657) + 1.000010014f);
    let x_1660 : f32 = u_xlat48;
    let x_1661 : f32 = u_xlat48;
    u_xlat48 = (x_1660 * x_1661);
    let x_1663 : f32 = u_xlat45;
    let x_1664 : f32 = u_xlat45;
    u_xlat45 = (x_1663 * x_1664);
    let x_1666 : f32 = u_xlat48;
    u_xlat48 = max(x_1666, 0.100000001f);
    let x_1668 : f32 = u_xlat45;
    let x_1669 : f32 = u_xlat48;
    u_xlat45 = (x_1668 * x_1669);
    let x_1671 : f32 = u_xlat47;
    let x_1672 : f32 = u_xlat45;
    u_xlat45 = (x_1671 * x_1672);
    let x_1674 : f32 = u_xlat46;
    let x_1675 : f32 = u_xlat45;
    u_xlat45 = (x_1674 / x_1675);
    let x_1677 : vec4<f32> = u_xlat0;
    let x_1679 : f32 = u_xlat45;
    let x_1682 : vec3<f32> = u_xlat15;
    u_xlat9 = ((vec3<f32>(x_1677.x, x_1677.y, x_1677.z) * vec3<f32>(x_1679, x_1679, x_1679)) + x_1682);
    let x_1684 : vec3<f32> = u_xlat9;
    let x_1685 : vec4<f32> = u_xlat11;
    let x_1688 : vec4<f32> = u_xlat8;
    let x_1690 : vec3<f32> = ((x_1684 * vec3<f32>(x_1685.x, x_1685.y, x_1685.z)) + vec3<f32>(x_1688.x, x_1688.y, x_1688.z));
    let x_1691 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1690.x, x_1690.y, x_1690.z, x_1691.w);

    continuing {
      let x_1693 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1693 + bitcast<u32>(1i));
    }
  }
  let x_1695 : vec4<f32> = u_xlat5;
  let x_1697 : vec4<f32> = u_xlat6;
  let x_1700 : vec4<f32> = u_xlat4;
  let x_1702 : vec3<f32> = ((vec3<f32>(x_1695.x, x_1695.y, x_1695.z) * vec3<f32>(x_1697.x, x_1697.x, x_1697.x)) + vec3<f32>(x_1700.x, x_1700.y, x_1700.z));
  let x_1703 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1702.x, x_1702.y, x_1702.z, x_1703.w);
  let x_1707 : vec4<f32> = u_xlat8;
  let x_1709 : vec4<f32> = u_xlat0;
  let x_1711 : vec3<f32> = (vec3<f32>(x_1707.x, x_1707.y, x_1707.z) + vec3<f32>(x_1709.x, x_1709.y, x_1709.z));
  let x_1712 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1711.x, x_1711.y, x_1711.z, x_1712.w);
  let x_1717 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1717 == 1.0f);
  let x_1719 : bool = u_xlatb0;
  if (x_1719) {
    let x_1724 : f32 = u_xlat1.x;
    x_1720 = x_1724;
  } else {
    x_1720 = 1.0f;
  }
  let x_1726 : f32 = x_1720;
  SV_Target0.w = x_1726;
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

