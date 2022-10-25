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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(4) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicGlossMap : sampler;

@group(1) @binding(3) var<uniform> x_71 : UnityPerMaterial;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BumpMap : sampler;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_288 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_516 : UnityPerDraw;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1194 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat23 : vec2<f32>;
  var u_xlat33 : f32;
  var u_xlat14 : vec3<f32>;
  var u_xlatb14 : bool;
  var u_xlat4 : vec4<f32>;
  var u_xlat25 : f32;
  var u_xlat5 : vec4<f32>;
  var x_207 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb5 : vec4<bool>;
  var u_xlatu33 : u32;
  var u_xlati33 : i32;
  var u_xlat34 : f32;
  var u_xlat13 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat12 : vec2<f32>;
  var u_xlat38 : f32;
  var u_xlat39 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat16 : vec3<f32>;
  var u_xlatb16 : bool;
  var u_xlatb27 : bool;
  var x_780 : f32;
  var u_xlat27 : f32;
  var u_xlat40 : f32;
  var u_xlatu12 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu38 : u32;
  var u_xlati40 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati38 : i32;
  var u_xlat41 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1424 : f32;
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
  let x_59 : vec2<f32> = vs_TEXCOORD0;
  let x_61 : f32 = x_44.x_GlobalMipBias.x;
  let x_62 : vec4<f32> = textureSampleBias(x_MetallicGlossMap, sampler_MetallicGlossMap, x_59, x_61);
  let x_63 : vec2<f32> = vec2<f32>(x_62.x, x_62.w);
  let x_64 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_63.x, x_63.y, x_64.z);
  let x_67 : vec4<f32> = u_xlat0;
  let x_75 : vec4<f32> = x_71.x_BaseColor;
  u_xlat2 = (vec4<f32>(x_67.w, x_67.x, x_67.y, x_67.z) * vec4<f32>(x_75.w, x_75.x, x_75.y, x_75.z));
  let x_84 : vec2<f32> = vs_TEXCOORD0;
  let x_86 : f32 = x_44.x_GlobalMipBias.x;
  let x_87 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_84, x_86);
  u_xlat3 = vec3<f32>(x_87.x, x_87.y, x_87.w);
  let x_91 : f32 = u_xlat3.x;
  let x_94 : f32 = u_xlat3.z;
  u_xlat3.x = (x_91 * x_94);
  let x_99 : vec3<f32> = u_xlat3;
  u_xlat23 = ((vec2<f32>(x_99.x, x_99.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_108 : vec2<f32> = u_xlat23;
  let x_109 : vec2<f32> = u_xlat23;
  u_xlat33 = dot(x_108, x_109);
  let x_111 : f32 = u_xlat33;
  u_xlat33 = min(x_111, 1.0f);
  let x_113 : f32 = u_xlat33;
  u_xlat33 = (-(x_113) + 1.0f);
  let x_116 : f32 = u_xlat33;
  u_xlat33 = sqrt(x_116);
  let x_118 : f32 = u_xlat33;
  u_xlat33 = max(x_118, 1.00000002e-16f);
  let x_121 : vec2<f32> = u_xlat23;
  let x_124 : f32 = x_71.x_BumpScale;
  let x_126 : f32 = x_71.x_BumpScale;
  let x_127 : vec2<f32> = vec2<f32>(x_124, x_126);
  u_xlat23 = (x_121 * vec2<f32>(x_127.x, x_127.y));
  let x_137 : vec2<f32> = vs_TEXCOORD0;
  let x_139 : f32 = x_44.x_GlobalMipBias.x;
  let x_140 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_137, x_139);
  u_xlat3.x = x_140.y;
  let x_147 : f32 = x_71.x_OcclusionStrength;
  u_xlat14.x = (-(x_147) + 1.0f);
  let x_152 : f32 = u_xlat3.x;
  let x_154 : f32 = x_71.x_OcclusionStrength;
  let x_157 : f32 = u_xlat14.x;
  u_xlat3.x = ((x_152 * x_154) + x_157);
  let x_164 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb14 = (x_164 == 0.0f);
  let x_170 : vec3<f32> = vs_TEXCOORD1;
  let x_175 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_176 : vec3<f32> = (-(x_170) + x_175);
  let x_177 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_180 : vec4<f32> = u_xlat4;
  let x_182 : vec4<f32> = u_xlat4;
  u_xlat25 = dot(vec3<f32>(x_180.x, x_180.y, x_180.z), vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_185 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_185);
  let x_187 : f32 = u_xlat25;
  let x_189 : vec4<f32> = u_xlat4;
  let x_191 : vec3<f32> = (vec3<f32>(x_187, x_187, x_187) * vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_198 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat5.x = x_198;
  let x_201 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat5.y = x_201;
  let x_204 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat5.z = x_204;
  let x_206 : bool = u_xlatb14;
  if (x_206) {
    let x_210 : vec4<f32> = u_xlat4;
    x_207 = vec3<f32>(x_210.x, x_210.y, x_210.z);
  } else {
    let x_213 : vec4<f32> = u_xlat5;
    x_207 = vec3<f32>(x_213.x, x_213.y, x_213.z);
  }
  let x_215 : vec3<f32> = x_207;
  u_xlat14 = x_215;
  let x_217 : vec3<f32> = vs_TEXCOORD2;
  let x_220 : vec4<f32> = vs_TEXCOORD3;
  let x_222 : vec3<f32> = (vec3<f32>(x_217.z, x_217.x, x_217.y) * vec3<f32>(x_220.y, x_220.z, x_220.x));
  let x_223 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_225 : vec3<f32> = vs_TEXCOORD2;
  let x_227 : vec4<f32> = vs_TEXCOORD3;
  let x_230 : vec4<f32> = u_xlat4;
  let x_233 : vec3<f32> = ((vec3<f32>(x_225.y, x_225.z, x_225.x) * vec3<f32>(x_227.z, x_227.x, x_227.y)) + -(vec3<f32>(x_230.x, x_230.y, x_230.z)));
  let x_234 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_236 : vec4<f32> = u_xlat4;
  let x_238 : vec4<f32> = vs_TEXCOORD3;
  let x_240 : vec3<f32> = (vec3<f32>(x_236.x, x_236.y, x_236.z) * vec3<f32>(x_238.w, x_238.w, x_238.w));
  let x_241 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_243 : vec2<f32> = u_xlat23;
  let x_245 : vec4<f32> = u_xlat4;
  let x_247 : vec3<f32> = (vec3<f32>(x_243.y, x_243.y, x_243.y) * vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_250 : vec2<f32> = u_xlat23;
  let x_252 : vec4<f32> = vs_TEXCOORD3;
  let x_255 : vec4<f32> = u_xlat4;
  let x_257 : vec3<f32> = ((vec3<f32>(x_250.x, x_250.x, x_250.x) * vec3<f32>(x_252.x, x_252.y, x_252.z)) + vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_260 : f32 = u_xlat33;
  let x_262 : vec3<f32> = vs_TEXCOORD2;
  let x_264 : vec4<f32> = u_xlat4;
  let x_266 : vec3<f32> = ((vec3<f32>(x_260, x_260, x_260) * x_262) + vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_267 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_269 : vec4<f32> = u_xlat4;
  let x_271 : vec4<f32> = u_xlat4;
  u_xlat33 = dot(vec3<f32>(x_269.x, x_269.y, x_269.z), vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_274 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_274);
  let x_276 : f32 = u_xlat33;
  let x_278 : vec4<f32> = u_xlat4;
  let x_280 : vec3<f32> = (vec3<f32>(x_276, x_276, x_276) * vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_281 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  let x_283 : vec3<f32> = vs_TEXCOORD1;
  let x_290 : vec4<f32> = x_288.x_CascadeShadowSplitSpheres0;
  let x_293 : vec3<f32> = (x_283 + -(vec3<f32>(x_290.x, x_290.y, x_290.z)));
  let x_294 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_297 : vec3<f32> = vs_TEXCOORD1;
  let x_299 : vec4<f32> = x_288.x_CascadeShadowSplitSpheres1;
  let x_302 : vec3<f32> = (x_297 + -(vec3<f32>(x_299.x, x_299.y, x_299.z)));
  let x_303 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_306 : vec3<f32> = vs_TEXCOORD1;
  let x_309 : vec4<f32> = x_288.x_CascadeShadowSplitSpheres2;
  let x_312 : vec3<f32> = (x_306 + -(vec3<f32>(x_309.x, x_309.y, x_309.z)));
  let x_313 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_316 : vec3<f32> = vs_TEXCOORD1;
  let x_319 : vec4<f32> = x_288.x_CascadeShadowSplitSpheres3;
  let x_322 : vec3<f32> = (x_316 + -(vec3<f32>(x_319.x, x_319.y, x_319.z)));
  let x_323 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat5;
  let x_327 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_325.x, x_325.y, x_325.z), vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_331 : vec4<f32> = u_xlat6;
  let x_333 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_331.x, x_331.y, x_331.z), vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_337 : vec4<f32> = u_xlat7;
  let x_339 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_337.x, x_337.y, x_337.z), vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_343 : vec4<f32> = u_xlat8;
  let x_345 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_343.x, x_343.y, x_343.z), vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_352 : vec4<f32> = u_xlat5;
  let x_355 : vec4<f32> = x_288.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_352 < x_355);
  let x_358 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_358);
  let x_362 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_362);
  let x_366 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_366);
  let x_370 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_370);
  let x_374 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_374);
  let x_379 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_379);
  let x_383 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_383);
  let x_386 : vec4<f32> = u_xlat5;
  let x_388 : vec4<f32> = u_xlat6;
  let x_390 : vec3<f32> = (vec3<f32>(x_386.x, x_386.y, x_386.z) + vec3<f32>(x_388.y, x_388.z, x_388.w));
  let x_391 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_393 : vec4<f32> = u_xlat5;
  let x_396 : vec3<f32> = max(vec3<f32>(x_393.x, x_393.y, x_393.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_397 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_397.x, x_396.x, x_396.y, x_396.z);
  let x_399 : vec4<f32> = u_xlat6;
  u_xlat33 = dot(x_399, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_404 : f32 = u_xlat33;
  u_xlat33 = (-(x_404) + 4.0f);
  let x_409 : f32 = u_xlat33;
  u_xlatu33 = u32(x_409);
  let x_413 : u32 = u_xlatu33;
  u_xlati33 = (bitcast<i32>(x_413) << bitcast<u32>(2i));
  let x_416 : vec3<f32> = vs_TEXCOORD1;
  let x_418 : i32 = u_xlati33;
  let x_421 : i32 = u_xlati33;
  let x_425 : vec4<f32> = x_288.x_MainLightWorldToShadow[((x_418 + 1i) / 4i)][((x_421 + 1i) % 4i)];
  let x_427 : vec3<f32> = (vec3<f32>(x_416.y, x_416.y, x_416.y) * vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_428 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_430 : i32 = u_xlati33;
  let x_432 : i32 = u_xlati33;
  let x_435 : vec4<f32> = x_288.x_MainLightWorldToShadow[(x_430 / 4i)][(x_432 % 4i)];
  let x_437 : vec3<f32> = vs_TEXCOORD1;
  let x_440 : vec4<f32> = u_xlat5;
  let x_442 : vec3<f32> = ((vec3<f32>(x_435.x, x_435.y, x_435.z) * vec3<f32>(x_437.x, x_437.x, x_437.x)) + vec3<f32>(x_440.x, x_440.y, x_440.z));
  let x_443 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_445 : i32 = u_xlati33;
  let x_448 : i32 = u_xlati33;
  let x_452 : vec4<f32> = x_288.x_MainLightWorldToShadow[((x_445 + 2i) / 4i)][((x_448 + 2i) % 4i)];
  let x_454 : vec3<f32> = vs_TEXCOORD1;
  let x_457 : vec4<f32> = u_xlat5;
  let x_459 : vec3<f32> = ((vec3<f32>(x_452.x, x_452.y, x_452.z) * vec3<f32>(x_454.z, x_454.z, x_454.z)) + vec3<f32>(x_457.x, x_457.y, x_457.z));
  let x_460 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
  let x_462 : vec4<f32> = u_xlat5;
  let x_464 : i32 = u_xlati33;
  let x_467 : i32 = u_xlati33;
  let x_471 : vec4<f32> = x_288.x_MainLightWorldToShadow[((x_464 + 3i) / 4i)][((x_467 + 3i) % 4i)];
  let x_473 : vec3<f32> = (vec3<f32>(x_462.x, x_462.y, x_462.z) + vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_477 : f32 = vs_TEXCOORD1.y;
  let x_479 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat33 = (x_477 * x_479);
  let x_482 : f32 = x_44.unity_MatrixV[0i].z;
  let x_484 : f32 = vs_TEXCOORD1.x;
  let x_486 : f32 = u_xlat33;
  u_xlat33 = ((x_482 * x_484) + x_486);
  let x_489 : f32 = x_44.unity_MatrixV[2i].z;
  let x_491 : f32 = vs_TEXCOORD1.z;
  let x_493 : f32 = u_xlat33;
  u_xlat33 = ((x_489 * x_491) + x_493);
  let x_495 : f32 = u_xlat33;
  let x_497 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat33 = (x_495 + x_497);
  let x_499 : f32 = u_xlat33;
  let x_503 : f32 = x_44.x_ProjectionParams.y;
  u_xlat33 = (-(x_499) + -(x_503));
  let x_506 : f32 = u_xlat33;
  u_xlat33 = max(x_506, 0.0f);
  let x_508 : f32 = u_xlat33;
  let x_510 : f32 = x_44.unity_FogParams.x;
  u_xlat33 = (x_508 * x_510);
  u_xlat4.w = 1.0f;
  let x_519 : vec4<f32> = x_516.unity_SHAr;
  let x_520 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_519, x_520);
  let x_525 : vec4<f32> = x_516.unity_SHAg;
  let x_526 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_525, x_526);
  let x_531 : vec4<f32> = x_516.unity_SHAb;
  let x_532 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_531, x_532);
  let x_535 : vec4<f32> = u_xlat4;
  let x_537 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_535.y, x_535.z, x_535.z, x_535.x) * vec4<f32>(x_537.x, x_537.y, x_537.z, x_537.z));
  let x_542 : vec4<f32> = x_516.unity_SHBr;
  let x_543 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_542, x_543);
  let x_548 : vec4<f32> = x_516.unity_SHBg;
  let x_549 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_548, x_549);
  let x_554 : vec4<f32> = x_516.unity_SHBb;
  let x_555 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_554, x_555);
  let x_559 : f32 = u_xlat4.y;
  let x_561 : f32 = u_xlat4.y;
  u_xlat23.x = (x_559 * x_561);
  let x_565 : f32 = u_xlat4.x;
  let x_567 : f32 = u_xlat4.x;
  let x_570 : f32 = u_xlat23.x;
  u_xlat23.x = ((x_565 * x_567) + -(x_570));
  let x_576 : vec4<f32> = x_516.unity_SHC;
  let x_578 : vec2<f32> = u_xlat23;
  let x_581 : vec4<f32> = u_xlat8;
  let x_583 : vec3<f32> = ((vec3<f32>(x_576.x, x_576.y, x_576.z) * vec3<f32>(x_578.x, x_578.x, x_578.x)) + vec3<f32>(x_581.x, x_581.y, x_581.z));
  let x_584 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_586 : vec4<f32> = u_xlat6;
  let x_588 : vec4<f32> = u_xlat7;
  let x_590 : vec3<f32> = (vec3<f32>(x_586.x, x_586.y, x_586.z) + vec3<f32>(x_588.x, x_588.y, x_588.z));
  let x_591 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
  let x_593 : vec4<f32> = u_xlat6;
  let x_595 : vec3<f32> = max(vec3<f32>(x_593.x, x_593.y, x_593.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_596 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  let x_600 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_601 : vec2<f32> = vec2<f32>(x_600.x, x_600.y);
  u_xlat23 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_601.x, x_601.y));
  let x_606 : vec2<f32> = u_xlat23;
  let x_607 : vec4<f32> = hlslcc_FragCoord;
  let x_609 : vec2<f32> = (x_606 * vec2<f32>(x_607.x, x_607.y));
  let x_610 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_609.x, x_609.y, x_610.z, x_610.w);
  let x_613 : f32 = u_xlat7.y;
  let x_616 : f32 = x_44.x_ScaleBiasRt.x;
  let x_619 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat23.x = ((x_613 * x_616) + x_619);
  let x_623 : f32 = u_xlat23.x;
  u_xlat7.z = (-(x_623) + 1.0f);
  let x_628 : f32 = u_xlat1.x;
  u_xlat23.x = ((-(x_628) * 0.959999979f) + 0.959999979f);
  let x_636 : f32 = u_xlat23.x;
  u_xlat34 = (-(x_636) + 1.0f);
  let x_640 : vec2<f32> = u_xlat23;
  let x_642 : vec4<f32> = u_xlat2;
  u_xlat13 = (vec3<f32>(x_640.x, x_640.x, x_640.x) * vec3<f32>(x_642.y, x_642.z, x_642.w));
  let x_645 : vec4<f32> = u_xlat0;
  let x_648 : vec4<f32> = x_71.x_BaseColor;
  let x_653 : vec3<f32> = ((vec3<f32>(x_645.x, x_645.y, x_645.z) * vec3<f32>(x_648.x, x_648.y, x_648.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_654 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
  let x_656 : vec3<f32> = u_xlat1;
  let x_658 : vec4<f32> = u_xlat0;
  let x_663 : vec3<f32> = ((vec3<f32>(x_656.x, x_656.x, x_656.x) * vec3<f32>(x_658.x, x_658.y, x_658.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_664 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
  let x_667 : f32 = u_xlat1.y;
  let x_670 : f32 = x_71.x_Smoothness;
  u_xlat1.x = ((-(x_667) * x_670) + 1.0f);
  let x_675 : f32 = u_xlat1.x;
  let x_677 : f32 = u_xlat1.x;
  u_xlat23.x = (x_675 * x_677);
  let x_681 : f32 = u_xlat23.x;
  u_xlat23.x = max(x_681, 0.0078125f);
  let x_687 : f32 = u_xlat23.x;
  let x_689 : f32 = u_xlat23.x;
  u_xlat37 = (x_687 * x_689);
  let x_693 : f32 = u_xlat1.y;
  let x_695 : f32 = x_71.x_Smoothness;
  let x_697 : f32 = u_xlat34;
  u_xlat12.x = ((x_693 * x_695) + x_697);
  let x_701 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_701, 0.0f, 1.0f);
  let x_705 : f32 = u_xlat23.x;
  u_xlat34 = ((x_705 * 4.0f) + 2.0f);
  let x_714 : vec4<f32> = u_xlat7;
  let x_717 : f32 = x_44.x_GlobalMipBias.x;
  let x_718 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_714.x, x_714.z), x_717);
  u_xlat38 = x_718.x;
  let x_721 : f32 = u_xlat38;
  u_xlat39 = (x_721 + -1.0f);
  let x_724 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_725 : f32 = u_xlat39;
  u_xlat39 = ((x_724 * x_725) + 1.0f);
  let x_729 : f32 = u_xlat3.x;
  let x_730 : f32 = u_xlat38;
  u_xlat3.x = min(x_729, x_730);
  let x_734 : vec4<f32> = u_xlat5;
  let x_735 : vec2<f32> = vec2<f32>(x_734.x, x_734.y);
  let x_737 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_735.x, x_735.y, x_737);
  let x_749 : vec3<f32> = txVec0;
  let x_751 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_749.xy, x_749.z);
  u_xlat5.x = x_751;
  let x_755 : f32 = x_288.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_755) + 1.0f);
  let x_760 : f32 = u_xlat5.x;
  let x_762 : f32 = x_288.x_MainLightShadowParams.x;
  let x_765 : f32 = u_xlat16.x;
  u_xlat5.x = ((x_760 * x_762) + x_765);
  let x_770 : f32 = u_xlat5.z;
  u_xlatb16 = (0.0f >= x_770);
  let x_774 : f32 = u_xlat5.z;
  u_xlatb27 = (x_774 >= 1.0f);
  let x_776 : bool = u_xlatb27;
  let x_777 : bool = u_xlatb16;
  u_xlatb16 = (x_776 | x_777);
  let x_779 : bool = u_xlatb16;
  if (x_779) {
    x_780 = 1.0f;
  } else {
    let x_785 : f32 = u_xlat5.x;
    x_780 = x_785;
  }
  let x_786 : f32 = x_780;
  u_xlat5.x = x_786;
  let x_788 : vec3<f32> = vs_TEXCOORD1;
  let x_790 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat16 = (x_788 + -(x_790));
  let x_793 : vec3<f32> = u_xlat16;
  let x_794 : vec3<f32> = u_xlat16;
  u_xlat16.x = dot(x_793, x_794);
  let x_798 : f32 = u_xlat16.x;
  let x_800 : f32 = x_288.x_MainLightShadowParams.z;
  let x_803 : f32 = x_288.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_798 * x_800) + x_803);
  let x_807 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_807, 0.0f, 1.0f);
  let x_812 : f32 = u_xlat5.x;
  u_xlat27 = (-(x_812) + 1.0f);
  let x_816 : f32 = u_xlat16.x;
  let x_817 : f32 = u_xlat27;
  let x_820 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_816 * x_817) + x_820);
  let x_823 : f32 = u_xlat39;
  let x_826 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat16 = (vec3<f32>(x_823, x_823, x_823) * vec3<f32>(x_826.x, x_826.y, x_826.z));
  let x_829 : vec3<f32> = u_xlat14;
  let x_831 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(-(x_829), vec3<f32>(x_831.x, x_831.y, x_831.z));
  let x_836 : f32 = u_xlat7.x;
  let x_838 : f32 = u_xlat7.x;
  u_xlat7.x = (x_836 + x_838);
  let x_841 : vec4<f32> = u_xlat4;
  let x_843 : vec4<f32> = u_xlat7;
  let x_847 : vec3<f32> = u_xlat14;
  let x_849 : vec3<f32> = ((vec3<f32>(x_841.x, x_841.y, x_841.z) * -(vec3<f32>(x_843.x, x_843.x, x_843.x))) + -(x_847));
  let x_850 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
  let x_853 : vec4<f32> = u_xlat4;
  let x_855 : vec3<f32> = u_xlat14;
  u_xlat40 = dot(vec3<f32>(x_853.x, x_853.y, x_853.z), x_855);
  let x_857 : f32 = u_xlat40;
  u_xlat40 = clamp(x_857, 0.0f, 1.0f);
  let x_859 : f32 = u_xlat40;
  u_xlat40 = (-(x_859) + 1.0f);
  let x_862 : f32 = u_xlat40;
  let x_863 : f32 = u_xlat40;
  u_xlat40 = (x_862 * x_863);
  let x_865 : f32 = u_xlat40;
  let x_866 : f32 = u_xlat40;
  u_xlat40 = (x_865 * x_866);
  let x_869 : f32 = u_xlat1.x;
  u_xlat8.x = ((-(x_869) * 0.699999988f) + 1.700000048f);
  let x_877 : f32 = u_xlat1.x;
  let x_879 : f32 = u_xlat8.x;
  u_xlat1.x = (x_877 * x_879);
  let x_883 : f32 = u_xlat1.x;
  u_xlat1.x = (x_883 * 6.0f);
  let x_895 : vec4<f32> = u_xlat7;
  let x_898 : f32 = u_xlat1.x;
  let x_899 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_895.x, x_895.y, x_895.z), x_898);
  u_xlat8 = x_899;
  let x_901 : f32 = u_xlat8.w;
  u_xlat1.x = (x_901 + -1.0f);
  let x_905 : f32 = x_516.unity_SpecCube0_HDR.w;
  let x_907 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_905 * x_907) + 1.0f);
  let x_912 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_912, 0.0f);
  let x_916 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_916);
  let x_920 : f32 = u_xlat1.x;
  let x_922 : f32 = x_516.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_920 * x_922);
  let x_926 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_926);
  let x_930 : f32 = u_xlat1.x;
  let x_932 : f32 = x_516.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_930 * x_932);
  let x_935 : vec4<f32> = u_xlat8;
  let x_937 : vec3<f32> = u_xlat1;
  let x_939 : vec3<f32> = (vec3<f32>(x_935.x, x_935.y, x_935.z) * vec3<f32>(x_937.x, x_937.x, x_937.x));
  let x_940 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_939.x, x_939.y, x_939.z, x_940.w);
  let x_942 : vec2<f32> = u_xlat23;
  let x_944 : vec2<f32> = u_xlat23;
  let x_948 : vec2<f32> = ((vec2<f32>(x_942.x, x_942.x) * vec2<f32>(x_944.x, x_944.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_949 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_948.x, x_949.y, x_948.y);
  let x_952 : f32 = u_xlat1.z;
  u_xlat23.x = (1.0f / x_952);
  let x_955 : vec4<f32> = u_xlat0;
  let x_958 : vec2<f32> = u_xlat12;
  let x_960 : vec3<f32> = (-(vec3<f32>(x_955.x, x_955.y, x_955.z)) + vec3<f32>(x_958.x, x_958.x, x_958.x));
  let x_961 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_960.x, x_960.y, x_960.z, x_961.w);
  let x_963 : f32 = u_xlat40;
  let x_965 : vec4<f32> = u_xlat8;
  let x_968 : vec4<f32> = u_xlat0;
  let x_970 : vec3<f32> = ((vec3<f32>(x_963, x_963, x_963) * vec3<f32>(x_965.x, x_965.y, x_965.z)) + vec3<f32>(x_968.x, x_968.y, x_968.z));
  let x_971 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_970.x, x_970.y, x_970.z, x_971.w);
  let x_973 : vec2<f32> = u_xlat23;
  let x_975 : vec4<f32> = u_xlat8;
  let x_977 : vec3<f32> = (vec3<f32>(x_973.x, x_973.x, x_973.x) * vec3<f32>(x_975.x, x_975.y, x_975.z));
  let x_978 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_977.x, x_977.y, x_977.z, x_978.w);
  let x_980 : vec4<f32> = u_xlat7;
  let x_982 : vec4<f32> = u_xlat8;
  let x_984 : vec3<f32> = (vec3<f32>(x_980.x, x_980.y, x_980.z) * vec3<f32>(x_982.x, x_982.y, x_982.z));
  let x_985 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_984.x, x_984.y, x_984.z, x_985.w);
  let x_987 : vec4<f32> = u_xlat6;
  let x_989 : vec3<f32> = u_xlat13;
  let x_991 : vec4<f32> = u_xlat7;
  let x_993 : vec3<f32> = ((vec3<f32>(x_987.x, x_987.y, x_987.z) * x_989) + vec3<f32>(x_991.x, x_991.y, x_991.z));
  let x_994 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_993.x, x_993.y, x_993.z, x_994.w);
  let x_997 : f32 = u_xlat5.x;
  let x_999 : f32 = x_516.unity_LightData.z;
  u_xlat12.x = (x_997 * x_999);
  let x_1002 : vec4<f32> = u_xlat4;
  let x_1005 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat23.x = dot(vec3<f32>(x_1002.x, x_1002.y, x_1002.z), vec3<f32>(x_1005.x, x_1005.y, x_1005.z));
  let x_1010 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_1010, 0.0f, 1.0f);
  let x_1014 : f32 = u_xlat23.x;
  let x_1016 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1014 * x_1016);
  let x_1019 : vec2<f32> = u_xlat12;
  let x_1021 : vec3<f32> = u_xlat16;
  let x_1022 : vec3<f32> = (vec3<f32>(x_1019.x, x_1019.x, x_1019.x) * x_1021);
  let x_1023 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
  let x_1025 : vec3<f32> = u_xlat14;
  let x_1027 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1029 : vec3<f32> = (x_1025 + vec3<f32>(x_1027.x, x_1027.y, x_1027.z));
  let x_1030 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
  let x_1032 : vec4<f32> = u_xlat7;
  let x_1034 : vec4<f32> = u_xlat7;
  u_xlat12.x = dot(vec3<f32>(x_1032.x, x_1032.y, x_1032.z), vec3<f32>(x_1034.x, x_1034.y, x_1034.z));
  let x_1039 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_1039, 1.17549435e-37f);
  let x_1044 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_1044);
  let x_1047 : vec2<f32> = u_xlat12;
  let x_1049 : vec4<f32> = u_xlat7;
  let x_1051 : vec3<f32> = (vec3<f32>(x_1047.x, x_1047.x, x_1047.x) * vec3<f32>(x_1049.x, x_1049.y, x_1049.z));
  let x_1052 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
  let x_1054 : vec4<f32> = u_xlat4;
  let x_1056 : vec4<f32> = u_xlat7;
  u_xlat12.x = dot(vec3<f32>(x_1054.x, x_1054.y, x_1054.z), vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
  let x_1061 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_1061, 0.0f, 1.0f);
  let x_1065 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1067 : vec4<f32> = u_xlat7;
  u_xlat12.y = dot(vec3<f32>(x_1065.x, x_1065.y, x_1065.z), vec3<f32>(x_1067.x, x_1067.y, x_1067.z));
  let x_1072 : f32 = u_xlat12.y;
  u_xlat12.y = clamp(x_1072, 0.0f, 1.0f);
  let x_1075 : vec2<f32> = u_xlat12;
  let x_1076 : vec2<f32> = u_xlat12;
  u_xlat12 = (x_1075 * x_1076);
  let x_1079 : f32 = u_xlat12.x;
  let x_1081 : f32 = u_xlat1.x;
  u_xlat12.x = ((x_1079 * x_1081) + 1.000010014f);
  let x_1087 : f32 = u_xlat12.x;
  let x_1089 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1087 * x_1089);
  let x_1093 : f32 = u_xlat12.y;
  u_xlat23.x = max(x_1093, 0.100000001f);
  let x_1098 : f32 = u_xlat23.x;
  let x_1100 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1098 * x_1100);
  let x_1103 : f32 = u_xlat34;
  let x_1105 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1103 * x_1105);
  let x_1108 : f32 = u_xlat37;
  let x_1110 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1108 / x_1110);
  let x_1113 : vec4<f32> = u_xlat0;
  let x_1115 : vec2<f32> = u_xlat12;
  let x_1118 : vec3<f32> = u_xlat13;
  let x_1119 : vec3<f32> = ((vec3<f32>(x_1113.x, x_1113.y, x_1113.z) * vec3<f32>(x_1115.x, x_1115.x, x_1115.x)) + x_1118);
  let x_1120 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
  let x_1122 : vec4<f32> = u_xlat5;
  let x_1124 : vec4<f32> = u_xlat7;
  let x_1126 : vec3<f32> = (vec3<f32>(x_1122.x, x_1122.y, x_1122.z) * vec3<f32>(x_1124.x, x_1124.y, x_1124.z));
  let x_1127 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1126.x, x_1126.y, x_1126.z, x_1127.w);
  let x_1130 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1132 : f32 = x_516.unity_LightData.y;
  u_xlat12.x = min(x_1130, x_1132);
  let x_1137 : f32 = u_xlat12.x;
  u_xlatu12 = bitcast<u32>(i32(x_1137));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1149 : u32 = u_xlatu_loop_1;
    let x_1150 : u32 = u_xlatu12;
    if ((x_1149 < x_1150)) {
    } else {
      break;
    }
    let x_1153 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_1153 >> 2u);
    let x_1156 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_1156 & 3u));
    let x_1159 : u32 = u_xlatu38;
    let x_1162 : vec4<f32> = x_516.unity_LightIndices[bitcast<i32>(x_1159)];
    let x_1172 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1177 : vec4<u32> = indexable[x_1172];
    u_xlat38 = dot(x_1162, bitcast<vec4<f32>>(x_1177));
    let x_1181 : f32 = u_xlat38;
    u_xlati38 = i32(x_1181);
    let x_1183 : vec3<f32> = vs_TEXCOORD1;
    let x_1195 : i32 = u_xlati38;
    let x_1197 : vec4<f32> = x_1194.x_AdditionalLightsPosition[x_1195];
    let x_1200 : i32 = u_xlati38;
    let x_1202 : vec4<f32> = x_1194.x_AdditionalLightsPosition[x_1200];
    let x_1204 : vec3<f32> = ((-(x_1183) * vec3<f32>(x_1197.w, x_1197.w, x_1197.w)) + vec3<f32>(x_1202.x, x_1202.y, x_1202.z));
    let x_1205 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1204.x, x_1204.y, x_1204.z, x_1205.w);
    let x_1207 : vec4<f32> = u_xlat8;
    let x_1209 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1207.x, x_1207.y, x_1207.z), vec3<f32>(x_1209.x, x_1209.y, x_1209.z));
    let x_1212 : f32 = u_xlat40;
    u_xlat40 = max(x_1212, 6.10351562e-05f);
    let x_1216 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1216);
    let x_1219 : f32 = u_xlat41;
    let x_1221 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1219, x_1219, x_1219) * vec3<f32>(x_1221.x, x_1221.y, x_1221.z));
    let x_1225 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1225);
    let x_1227 : f32 = u_xlat40;
    let x_1228 : i32 = u_xlati38;
    let x_1230 : f32 = x_1194.x_AdditionalLightsAttenuation[x_1228].x;
    u_xlat40 = (x_1227 * x_1230);
    let x_1232 : f32 = u_xlat40;
    let x_1234 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1232) * x_1234) + 1.0f);
    let x_1237 : f32 = u_xlat40;
    u_xlat40 = max(x_1237, 0.0f);
    let x_1239 : f32 = u_xlat40;
    let x_1240 : f32 = u_xlat40;
    u_xlat40 = (x_1239 * x_1240);
    let x_1242 : f32 = u_xlat40;
    let x_1243 : f32 = u_xlat42;
    u_xlat40 = (x_1242 * x_1243);
    let x_1245 : i32 = u_xlati38;
    let x_1247 : vec4<f32> = x_1194.x_AdditionalLightsSpotDir[x_1245];
    let x_1249 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1247.x, x_1247.y, x_1247.z), x_1249);
    let x_1251 : f32 = u_xlat42;
    let x_1252 : i32 = u_xlati38;
    let x_1254 : f32 = x_1194.x_AdditionalLightsAttenuation[x_1252].z;
    let x_1256 : i32 = u_xlati38;
    let x_1258 : f32 = x_1194.x_AdditionalLightsAttenuation[x_1256].w;
    u_xlat42 = ((x_1251 * x_1254) + x_1258);
    let x_1260 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1260, 0.0f, 1.0f);
    let x_1262 : f32 = u_xlat42;
    let x_1263 : f32 = u_xlat42;
    u_xlat42 = (x_1262 * x_1263);
    let x_1265 : f32 = u_xlat40;
    let x_1266 : f32 = u_xlat42;
    u_xlat40 = (x_1265 * x_1266);
    let x_1269 : f32 = u_xlat39;
    let x_1271 : i32 = u_xlati38;
    let x_1273 : vec4<f32> = x_1194.x_AdditionalLightsColor[x_1271];
    u_xlat10 = (vec3<f32>(x_1269, x_1269, x_1269) * vec3<f32>(x_1273.x, x_1273.y, x_1273.z));
    let x_1276 : vec4<f32> = u_xlat4;
    let x_1278 : vec3<f32> = u_xlat9;
    u_xlat38 = dot(vec3<f32>(x_1276.x, x_1276.y, x_1276.z), x_1278);
    let x_1280 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1280, 0.0f, 1.0f);
    let x_1282 : f32 = u_xlat38;
    let x_1283 : f32 = u_xlat40;
    u_xlat38 = (x_1282 * x_1283);
    let x_1285 : f32 = u_xlat38;
    let x_1287 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1285, x_1285, x_1285) * x_1287);
    let x_1289 : vec4<f32> = u_xlat8;
    let x_1291 : f32 = u_xlat41;
    let x_1294 : vec3<f32> = u_xlat14;
    let x_1295 : vec3<f32> = ((vec3<f32>(x_1289.x, x_1289.y, x_1289.z) * vec3<f32>(x_1291, x_1291, x_1291)) + x_1294);
    let x_1296 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1295.x, x_1295.y, x_1295.z, x_1296.w);
    let x_1298 : vec4<f32> = u_xlat8;
    let x_1300 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_1298.x, x_1298.y, x_1298.z), vec3<f32>(x_1300.x, x_1300.y, x_1300.z));
    let x_1303 : f32 = u_xlat38;
    u_xlat38 = max(x_1303, 1.17549435e-37f);
    let x_1305 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_1305);
    let x_1307 : f32 = u_xlat38;
    let x_1309 : vec4<f32> = u_xlat8;
    let x_1311 : vec3<f32> = (vec3<f32>(x_1307, x_1307, x_1307) * vec3<f32>(x_1309.x, x_1309.y, x_1309.z));
    let x_1312 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1311.x, x_1311.y, x_1311.z, x_1312.w);
    let x_1314 : vec4<f32> = u_xlat4;
    let x_1316 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_1314.x, x_1314.y, x_1314.z), vec3<f32>(x_1316.x, x_1316.y, x_1316.z));
    let x_1319 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1319, 0.0f, 1.0f);
    let x_1321 : vec3<f32> = u_xlat9;
    let x_1322 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1321, vec3<f32>(x_1322.x, x_1322.y, x_1322.z));
    let x_1325 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1325, 0.0f, 1.0f);
    let x_1327 : f32 = u_xlat38;
    let x_1328 : f32 = u_xlat38;
    u_xlat38 = (x_1327 * x_1328);
    let x_1330 : f32 = u_xlat38;
    let x_1332 : f32 = u_xlat1.x;
    u_xlat38 = ((x_1330 * x_1332) + 1.000010014f);
    let x_1335 : f32 = u_xlat40;
    let x_1336 : f32 = u_xlat40;
    u_xlat40 = (x_1335 * x_1336);
    let x_1338 : f32 = u_xlat38;
    let x_1339 : f32 = u_xlat38;
    u_xlat38 = (x_1338 * x_1339);
    let x_1341 : f32 = u_xlat40;
    u_xlat40 = max(x_1341, 0.100000001f);
    let x_1343 : f32 = u_xlat38;
    let x_1344 : f32 = u_xlat40;
    u_xlat38 = (x_1343 * x_1344);
    let x_1346 : f32 = u_xlat34;
    let x_1347 : f32 = u_xlat38;
    u_xlat38 = (x_1346 * x_1347);
    let x_1349 : f32 = u_xlat37;
    let x_1350 : f32 = u_xlat38;
    u_xlat38 = (x_1349 / x_1350);
    let x_1352 : vec4<f32> = u_xlat0;
    let x_1354 : f32 = u_xlat38;
    let x_1357 : vec3<f32> = u_xlat13;
    let x_1358 : vec3<f32> = ((vec3<f32>(x_1352.x, x_1352.y, x_1352.z) * vec3<f32>(x_1354, x_1354, x_1354)) + x_1357);
    let x_1359 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1358.x, x_1358.y, x_1358.z, x_1359.w);
    let x_1361 : vec4<f32> = u_xlat8;
    let x_1363 : vec3<f32> = u_xlat10;
    let x_1365 : vec4<f32> = u_xlat7;
    let x_1367 : vec3<f32> = ((vec3<f32>(x_1361.x, x_1361.y, x_1361.z) * x_1363) + vec3<f32>(x_1365.x, x_1365.y, x_1365.z));
    let x_1368 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1367.x, x_1367.y, x_1367.z, x_1368.w);

    continuing {
      let x_1370 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1370 + bitcast<u32>(1i));
    }
  }
  let x_1372 : vec4<f32> = u_xlat6;
  let x_1374 : vec3<f32> = u_xlat3;
  let x_1377 : vec4<f32> = u_xlat5;
  let x_1379 : vec3<f32> = ((vec3<f32>(x_1372.x, x_1372.y, x_1372.z) * vec3<f32>(x_1374.x, x_1374.x, x_1374.x)) + vec3<f32>(x_1377.x, x_1377.y, x_1377.z));
  let x_1380 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1379.x, x_1379.y, x_1379.z, x_1380.w);
  let x_1382 : vec4<f32> = u_xlat7;
  let x_1384 : vec4<f32> = u_xlat0;
  let x_1386 : vec3<f32> = (vec3<f32>(x_1382.x, x_1382.y, x_1382.z) + vec3<f32>(x_1384.x, x_1384.y, x_1384.z));
  let x_1387 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1386.x, x_1386.y, x_1386.z, x_1387.w);
  let x_1389 : f32 = u_xlat33;
  let x_1390 : f32 = u_xlat33;
  u_xlat33 = (x_1389 * -(x_1390));
  let x_1393 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1393);
  let x_1395 : vec4<f32> = u_xlat0;
  let x_1399 : vec4<f32> = x_44.unity_FogColor;
  let x_1402 : vec3<f32> = (vec3<f32>(x_1395.x, x_1395.y, x_1395.z) + -(vec3<f32>(x_1399.x, x_1399.y, x_1399.z)));
  let x_1403 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1402.x, x_1402.y, x_1402.z, x_1403.w);
  let x_1407 : f32 = u_xlat33;
  let x_1409 : vec4<f32> = u_xlat0;
  let x_1413 : vec4<f32> = x_44.unity_FogColor;
  let x_1415 : vec3<f32> = ((vec3<f32>(x_1407, x_1407, x_1407) * vec3<f32>(x_1409.x, x_1409.y, x_1409.z)) + vec3<f32>(x_1413.x, x_1413.y, x_1413.z));
  let x_1416 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1415.x, x_1415.y, x_1415.z, x_1416.w);
  let x_1421 : f32 = x_71.x_Surface;
  u_xlatb0 = (x_1421 == 1.0f);
  let x_1423 : bool = u_xlatb0;
  if (x_1423) {
    let x_1428 : f32 = u_xlat2.x;
    x_1424 = x_1428;
  } else {
    x_1424 = 1.0f;
  }
  let x_1430 : f32 = x_1424;
  SV_Target0.w = x_1430;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  main_1();
  return main_out(SV_Target0);
}

