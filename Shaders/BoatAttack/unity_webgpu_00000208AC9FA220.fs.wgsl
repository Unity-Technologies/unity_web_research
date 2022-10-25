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

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_158 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_352 : UnityPerDraw;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(4) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2197 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb63 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat65 : f32;
  var u_xlat3 : vec3<f32>;
  var x_103 : f32;
  var x_117 : f32;
  var x_129 : f32;
  var u_xlat63 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu63 : u32;
  var u_xlati63 : i32;
  var u_xlat22 : vec3<f32>;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlat27 : f32;
  var u_xlatb48 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlatb69 : bool;
  var u_xlat49 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat69 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat28 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat29 : vec3<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat30 : vec2<f32>;
  var u_xlat57 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
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
  var u_xlatb25 : bool;
  var u_xlatb46 : bool;
  var x_1842 : f32;
  var u_xlat25 : f32;
  var u_xlat46 : f32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu66 : u32;
  var u_xlati69 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati66 : i32;
  var u_xlat70 : f32;
  var u_xlat71 : f32;
  var u_xlatb0 : bool;
  var x_2409 : f32;
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
  u_xlatb63 = (x_69 == 0.0f);
  let x_75 : vec3<f32> = vs_TEXCOORD1;
  let x_80 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_81 : vec3<f32> = (-(x_75) + x_80);
  let x_82 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  let x_86 : vec4<f32> = u_xlat2;
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat65 = dot(vec3<f32>(x_86.x, x_86.y, x_86.z), vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_91 : f32 = u_xlat65;
  u_xlat65 = inverseSqrt(x_91);
  let x_93 : f32 = u_xlat65;
  let x_95 : vec4<f32> = u_xlat2;
  let x_97 : vec3<f32> = (vec3<f32>(x_93, x_93, x_93) * vec3<f32>(x_95.x, x_95.y, x_95.z));
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_102 : bool = u_xlatb63;
  if (x_102) {
    let x_107 : f32 = u_xlat2.x;
    x_103 = x_107;
  } else {
    let x_113 : f32 = x_44.unity_MatrixV[0i].z;
    x_103 = x_113;
  }
  let x_114 : f32 = x_103;
  u_xlat3.x = x_114;
  let x_116 : bool = u_xlatb63;
  if (x_116) {
    let x_122 : f32 = u_xlat2.y;
    x_117 = x_122;
  } else {
    let x_125 : f32 = x_44.unity_MatrixV[1i].z;
    x_117 = x_125;
  }
  let x_126 : f32 = x_117;
  u_xlat3.y = x_126;
  let x_128 : bool = u_xlatb63;
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
  u_xlat63 = dot(x_141, x_142);
  let x_144 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_144);
  let x_146 : f32 = u_xlat63;
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
  u_xlat63 = dot(x_270, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_276 : f32 = u_xlat63;
  u_xlat63 = (-(x_276) + 4.0f);
  let x_281 : f32 = u_xlat63;
  u_xlatu63 = u32(x_281);
  let x_285 : u32 = u_xlatu63;
  u_xlati63 = (bitcast<i32>(x_285) << bitcast<u32>(2i));
  let x_288 : vec3<f32> = vs_TEXCOORD1;
  let x_290 : i32 = u_xlati63;
  let x_293 : i32 = u_xlati63;
  let x_297 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_290 + 1i) / 4i)][((x_293 + 1i) % 4i)];
  let x_299 : vec3<f32> = (vec3<f32>(x_288.y, x_288.y, x_288.y) * vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : i32 = u_xlati63;
  let x_304 : i32 = u_xlati63;
  let x_307 : vec4<f32> = x_158.x_MainLightWorldToShadow[(x_302 / 4i)][(x_304 % 4i)];
  let x_309 : vec3<f32> = vs_TEXCOORD1;
  let x_312 : vec4<f32> = u_xlat4;
  let x_314 : vec3<f32> = ((vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_309.x, x_309.x, x_309.x)) + vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : i32 = u_xlati63;
  let x_320 : i32 = u_xlati63;
  let x_324 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_317 + 2i) / 4i)][((x_320 + 2i) % 4i)];
  let x_326 : vec3<f32> = vs_TEXCOORD1;
  let x_329 : vec4<f32> = u_xlat4;
  let x_331 : vec3<f32> = ((vec3<f32>(x_324.x, x_324.y, x_324.z) * vec3<f32>(x_326.z, x_326.z, x_326.z)) + vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat4;
  let x_336 : i32 = u_xlati63;
  let x_339 : i32 = u_xlati63;
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
  u_xlat63 = (x_395 * x_397);
  let x_400 : f32 = u_xlat2.x;
  let x_402 : f32 = u_xlat2.x;
  let x_404 : f32 = u_xlat63;
  u_xlat63 = ((x_400 * x_402) + -(x_404));
  let x_409 : vec4<f32> = x_352.unity_SHC;
  let x_411 : f32 = u_xlat63;
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
  u_xlat63 = ((x_449 * x_452) + x_455);
  let x_457 : f32 = u_xlat63;
  u_xlat6.z = (-(x_457) + 1.0f);
  let x_462 : f32 = x_57.x_Metallic;
  u_xlat63 = ((-(x_462) * 0.959999979f) + 0.959999979f);
  let x_467 : f32 = u_xlat63;
  u_xlat65 = (-(x_467) + 1.0f);
  let x_471 : f32 = u_xlat63;
  let x_473 : vec4<f32> = u_xlat1;
  u_xlat22 = (vec3<f32>(x_471, x_471, x_471) * vec3<f32>(x_473.y, x_473.z, x_473.w));
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
  u_xlat63 = (-(x_507) + 1.0f);
  let x_511 : f32 = u_xlat63;
  let x_512 : f32 = u_xlat63;
  u_xlat66 = (x_511 * x_512);
  let x_514 : f32 = u_xlat66;
  u_xlat66 = max(x_514, 0.0078125f);
  let x_518 : f32 = u_xlat66;
  let x_519 : f32 = u_xlat66;
  u_xlat67 = (x_518 * x_519);
  let x_521 : f32 = u_xlat65;
  let x_523 : f32 = x_57.x_Smoothness;
  u_xlat65 = (x_521 + x_523);
  let x_525 : f32 = u_xlat65;
  u_xlat65 = clamp(x_525, 0.0f, 1.0f);
  let x_528 : f32 = u_xlat66;
  u_xlat68 = ((x_528 * 4.0f) + 2.0f);
  let x_536 : vec4<f32> = u_xlat6;
  let x_539 : f32 = x_44.x_GlobalMipBias.x;
  let x_540 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_536.x, x_536.z), x_539);
  u_xlat6.x = x_540.x;
  let x_545 : f32 = u_xlat6.x;
  u_xlat27 = (x_545 + -1.0f);
  let x_548 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_549 : f32 = u_xlat27;
  u_xlat27 = ((x_548 * x_549) + 1.0f);
  let x_553 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_553, 1.0f);
  let x_558 : f32 = x_158.x_MainLightShadowParams.y;
  u_xlatb48 = (0.0f < x_558);
  let x_560 : bool = u_xlatb48;
  if (x_560) {
    let x_564 : f32 = x_158.x_MainLightShadowParams.y;
    u_xlatb48 = (x_564 == 1.0f);
    let x_566 : bool = u_xlatb48;
    if (x_566) {
      let x_569 : vec4<f32> = u_xlat4;
      let x_572 : vec4<f32> = x_158.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_569.x, x_569.y, x_569.x, x_569.y) + x_572);
      let x_575 : vec4<f32> = u_xlat7;
      let x_576 : vec2<f32> = vec2<f32>(x_575.x, x_575.y);
      let x_578 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_576.x, x_576.y, x_578);
      let x_591 : vec3<f32> = txVec0;
      let x_593 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_591.xy, x_591.z);
      u_xlat8.x = x_593;
      let x_596 : vec4<f32> = u_xlat7;
      let x_597 : vec2<f32> = vec2<f32>(x_596.z, x_596.w);
      let x_599 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_597.x, x_597.y, x_599);
      let x_606 : vec3<f32> = txVec1;
      let x_608 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_606.xy, x_606.z);
      u_xlat8.y = x_608;
      let x_610 : vec4<f32> = u_xlat4;
      let x_613 : vec4<f32> = x_158.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_610.x, x_610.y, x_610.x, x_610.y) + x_613);
      let x_616 : vec4<f32> = u_xlat7;
      let x_617 : vec2<f32> = vec2<f32>(x_616.x, x_616.y);
      let x_619 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_617.x, x_617.y, x_619);
      let x_626 : vec3<f32> = txVec2;
      let x_628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_626.xy, x_626.z);
      u_xlat8.z = x_628;
      let x_631 : vec4<f32> = u_xlat7;
      let x_632 : vec2<f32> = vec2<f32>(x_631.z, x_631.w);
      let x_634 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_632.x, x_632.y, x_634);
      let x_641 : vec3<f32> = txVec3;
      let x_643 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_641.xy, x_641.z);
      u_xlat8.w = x_643;
      let x_647 : vec4<f32> = u_xlat8;
      u_xlat48.x = dot(x_647, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_655 : f32 = x_158.x_MainLightShadowParams.y;
      u_xlatb69 = (x_655 == 2.0f);
      let x_657 : bool = u_xlatb69;
      if (x_657) {
        let x_660 : vec4<f32> = u_xlat4;
        let x_663 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_668 : vec2<f32> = ((vec2<f32>(x_660.x, x_660.y) * vec2<f32>(x_663.z, x_663.w)) + vec2<f32>(0.5f, 0.5f));
        let x_669 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_668.x, x_668.y, x_669.z, x_669.w);
        let x_671 : vec4<f32> = u_xlat7;
        let x_673 : vec2<f32> = floor(vec2<f32>(x_671.x, x_671.y));
        let x_674 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_673.x, x_673.y, x_674.z, x_674.w);
        let x_677 : vec4<f32> = u_xlat4;
        let x_680 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_683 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_677.x, x_677.y) * vec2<f32>(x_680.z, x_680.w)) + -(vec2<f32>(x_683.x, x_683.y)));
        let x_687 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_687.x, x_687.x, x_687.y, x_687.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_692 : vec4<f32> = u_xlat8;
        let x_694 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_692.x, x_692.x, x_692.z, x_692.z) * vec4<f32>(x_694.x, x_694.x, x_694.z, x_694.z));
        let x_697 : vec4<f32> = u_xlat9;
        let x_701 : vec2<f32> = (vec2<f32>(x_697.y, x_697.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_702 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_701.x, x_702.y, x_701.y, x_702.w);
        let x_704 : vec4<f32> = u_xlat9;
        let x_707 : vec2<f32> = u_xlat49;
        let x_709 : vec2<f32> = ((vec2<f32>(x_704.x, x_704.z) * vec2<f32>(0.5f, 0.5f)) + -(x_707));
        let x_710 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_709.x, x_709.y, x_710.z, x_710.w);
        let x_713 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_713) + vec2<f32>(1.0f, 1.0f));
        let x_717 : vec2<f32> = u_xlat49;
        let x_719 : vec2<f32> = min(x_717, vec2<f32>(0.0f, 0.0f));
        let x_720 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_719.x, x_719.y, x_720.z, x_720.w);
        let x_722 : vec4<f32> = u_xlat10;
        let x_725 : vec4<f32> = u_xlat10;
        let x_728 : vec2<f32> = u_xlat51;
        let x_729 : vec2<f32> = ((-(vec2<f32>(x_722.x, x_722.y)) * vec2<f32>(x_725.x, x_725.y)) + x_728);
        let x_730 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_729.x, x_729.y, x_730.z, x_730.w);
        let x_732 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_732, vec2<f32>(0.0f, 0.0f));
        let x_734 : vec2<f32> = u_xlat49;
        let x_736 : vec2<f32> = u_xlat49;
        let x_738 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_734) * x_736) + vec2<f32>(x_738.y, x_738.w));
        let x_741 : vec4<f32> = u_xlat10;
        let x_743 : vec2<f32> = (vec2<f32>(x_741.x, x_741.y) + vec2<f32>(1.0f, 1.0f));
        let x_744 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_743.x, x_743.y, x_744.z, x_744.w);
        let x_746 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_746 + vec2<f32>(1.0f, 1.0f));
        let x_749 : vec4<f32> = u_xlat9;
        let x_753 : vec2<f32> = (vec2<f32>(x_749.x, x_749.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_754 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_753.x, x_753.y, x_754.z, x_754.w);
        let x_756 : vec2<f32> = u_xlat51;
        let x_757 : vec2<f32> = (x_756 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_758 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_757.x, x_757.y, x_758.z, x_758.w);
        let x_760 : vec4<f32> = u_xlat10;
        let x_762 : vec2<f32> = (vec2<f32>(x_760.x, x_760.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_763 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_762.x, x_762.y, x_763.z, x_763.w);
        let x_766 : vec2<f32> = u_xlat49;
        let x_767 : vec2<f32> = (x_766 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_768 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_767.x, x_767.y, x_768.z, x_768.w);
        let x_770 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_770.y, x_770.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_774 : f32 = u_xlat10.x;
        u_xlat11.z = x_774;
        let x_777 : f32 = u_xlat49.x;
        u_xlat11.w = x_777;
        let x_780 : f32 = u_xlat12.x;
        u_xlat9.z = x_780;
        let x_783 : f32 = u_xlat8.x;
        u_xlat9.w = x_783;
        let x_786 : vec4<f32> = u_xlat9;
        let x_788 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_786.z, x_786.w, x_786.x, x_786.z) + vec4<f32>(x_788.z, x_788.w, x_788.x, x_788.z));
        let x_792 : f32 = u_xlat11.y;
        u_xlat10.z = x_792;
        let x_795 : f32 = u_xlat49.y;
        u_xlat10.w = x_795;
        let x_798 : f32 = u_xlat9.y;
        u_xlat12.z = x_798;
        let x_801 : f32 = u_xlat8.z;
        u_xlat12.w = x_801;
        let x_803 : vec4<f32> = u_xlat10;
        let x_805 : vec4<f32> = u_xlat12;
        let x_807 : vec3<f32> = (vec3<f32>(x_803.z, x_803.y, x_803.w) + vec3<f32>(x_805.z, x_805.y, x_805.w));
        let x_808 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
        let x_810 : vec4<f32> = u_xlat9;
        let x_812 : vec4<f32> = u_xlat13;
        let x_814 : vec3<f32> = (vec3<f32>(x_810.x, x_810.z, x_810.w) / vec3<f32>(x_812.z, x_812.w, x_812.y));
        let x_815 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
        let x_817 : vec4<f32> = u_xlat9;
        let x_823 : vec3<f32> = (vec3<f32>(x_817.x, x_817.y, x_817.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_824 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_823.x, x_823.y, x_823.z, x_824.w);
        let x_826 : vec4<f32> = u_xlat12;
        let x_828 : vec4<f32> = u_xlat8;
        let x_830 : vec3<f32> = (vec3<f32>(x_826.z, x_826.y, x_826.w) / vec3<f32>(x_828.x, x_828.y, x_828.z));
        let x_831 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
        let x_833 : vec4<f32> = u_xlat10;
        let x_835 : vec3<f32> = (vec3<f32>(x_833.x, x_833.y, x_833.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_836 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
        let x_838 : vec4<f32> = u_xlat9;
        let x_841 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_843 : vec3<f32> = (vec3<f32>(x_838.y, x_838.x, x_838.z) * vec3<f32>(x_841.x, x_841.x, x_841.x));
        let x_844 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
        let x_846 : vec4<f32> = u_xlat10;
        let x_849 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_851 : vec3<f32> = (vec3<f32>(x_846.x, x_846.y, x_846.z) * vec3<f32>(x_849.y, x_849.y, x_849.y));
        let x_852 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
        let x_855 : f32 = u_xlat10.x;
        u_xlat9.w = x_855;
        let x_857 : vec4<f32> = u_xlat7;
        let x_860 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_863 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_857.x, x_857.y, x_857.x, x_857.y) * vec4<f32>(x_860.x, x_860.y, x_860.x, x_860.y)) + vec4<f32>(x_863.y, x_863.w, x_863.x, x_863.w));
        let x_866 : vec4<f32> = u_xlat7;
        let x_869 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_872 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_866.x, x_866.y) * vec2<f32>(x_869.x, x_869.y)) + vec2<f32>(x_872.z, x_872.w));
        let x_876 : f32 = u_xlat9.y;
        u_xlat10.w = x_876;
        let x_878 : vec4<f32> = u_xlat10;
        let x_879 : vec2<f32> = vec2<f32>(x_878.y, x_878.z);
        let x_880 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_880.x, x_879.x, x_880.z, x_879.y);
        let x_882 : vec4<f32> = u_xlat7;
        let x_885 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_888 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_882.x, x_882.y, x_882.x, x_882.y) * vec4<f32>(x_885.x, x_885.y, x_885.x, x_885.y)) + vec4<f32>(x_888.x, x_888.y, x_888.z, x_888.y));
        let x_891 : vec4<f32> = u_xlat7;
        let x_894 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_897 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_891.x, x_891.y, x_891.x, x_891.y) * vec4<f32>(x_894.x, x_894.y, x_894.x, x_894.y)) + vec4<f32>(x_897.w, x_897.y, x_897.w, x_897.z));
        let x_900 : vec4<f32> = u_xlat7;
        let x_903 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_906 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_900.x, x_900.y, x_900.x, x_900.y) * vec4<f32>(x_903.x, x_903.y, x_903.x, x_903.y)) + vec4<f32>(x_906.x, x_906.w, x_906.z, x_906.w));
        let x_910 : vec4<f32> = u_xlat8;
        let x_912 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_910.x, x_910.x, x_910.x, x_910.y) * vec4<f32>(x_912.z, x_912.w, x_912.y, x_912.z));
        let x_916 : vec4<f32> = u_xlat8;
        let x_918 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_916.y, x_916.y, x_916.z, x_916.z) * x_918);
        let x_922 : f32 = u_xlat8.z;
        let x_924 : f32 = u_xlat13.y;
        u_xlat69 = (x_922 * x_924);
        let x_927 : vec4<f32> = u_xlat11;
        let x_928 : vec2<f32> = vec2<f32>(x_927.x, x_927.y);
        let x_930 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_928.x, x_928.y, x_930);
        let x_937 : vec3<f32> = txVec4;
        let x_939 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_937.xy, x_937.z);
        u_xlat7.x = x_939;
        let x_942 : vec4<f32> = u_xlat11;
        let x_943 : vec2<f32> = vec2<f32>(x_942.z, x_942.w);
        let x_945 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_943.x, x_943.y, x_945);
        let x_953 : vec3<f32> = txVec5;
        let x_955 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_953.xy, x_953.z);
        u_xlat28 = x_955;
        let x_956 : f32 = u_xlat28;
        let x_958 : f32 = u_xlat14.y;
        u_xlat28 = (x_956 * x_958);
        let x_961 : f32 = u_xlat14.x;
        let x_963 : f32 = u_xlat7.x;
        let x_965 : f32 = u_xlat28;
        u_xlat7.x = ((x_961 * x_963) + x_965);
        let x_969 : vec2<f32> = u_xlat49;
        let x_971 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_969.x, x_969.y, x_971);
        let x_978 : vec3<f32> = txVec6;
        let x_980 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_978.xy, x_978.z);
        u_xlat28 = x_980;
        let x_982 : f32 = u_xlat14.z;
        let x_983 : f32 = u_xlat28;
        let x_986 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_982 * x_983) + x_986);
        let x_990 : vec4<f32> = u_xlat10;
        let x_991 : vec2<f32> = vec2<f32>(x_990.x, x_990.y);
        let x_993 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_991.x, x_991.y, x_993);
        let x_1000 : vec3<f32> = txVec7;
        let x_1002 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1000.xy, x_1000.z);
        u_xlat28 = x_1002;
        let x_1004 : f32 = u_xlat14.w;
        let x_1005 : f32 = u_xlat28;
        let x_1008 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1004 * x_1005) + x_1008);
        let x_1012 : vec4<f32> = u_xlat12;
        let x_1013 : vec2<f32> = vec2<f32>(x_1012.x, x_1012.y);
        let x_1015 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1013.x, x_1013.y, x_1015);
        let x_1022 : vec3<f32> = txVec8;
        let x_1024 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1022.xy, x_1022.z);
        u_xlat28 = x_1024;
        let x_1026 : f32 = u_xlat15.x;
        let x_1027 : f32 = u_xlat28;
        let x_1030 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1026 * x_1027) + x_1030);
        let x_1034 : vec4<f32> = u_xlat12;
        let x_1035 : vec2<f32> = vec2<f32>(x_1034.z, x_1034.w);
        let x_1037 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1035.x, x_1035.y, x_1037);
        let x_1044 : vec3<f32> = txVec9;
        let x_1046 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1044.xy, x_1044.z);
        u_xlat28 = x_1046;
        let x_1048 : f32 = u_xlat15.y;
        let x_1049 : f32 = u_xlat28;
        let x_1052 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1048 * x_1049) + x_1052);
        let x_1056 : vec4<f32> = u_xlat10;
        let x_1057 : vec2<f32> = vec2<f32>(x_1056.z, x_1056.w);
        let x_1059 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1057.x, x_1057.y, x_1059);
        let x_1066 : vec3<f32> = txVec10;
        let x_1068 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1066.xy, x_1066.z);
        u_xlat28 = x_1068;
        let x_1070 : f32 = u_xlat15.z;
        let x_1071 : f32 = u_xlat28;
        let x_1074 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1070 * x_1071) + x_1074);
        let x_1078 : vec4<f32> = u_xlat9;
        let x_1079 : vec2<f32> = vec2<f32>(x_1078.x, x_1078.y);
        let x_1081 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1079.x, x_1079.y, x_1081);
        let x_1088 : vec3<f32> = txVec11;
        let x_1090 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1088.xy, x_1088.z);
        u_xlat28 = x_1090;
        let x_1092 : f32 = u_xlat15.w;
        let x_1093 : f32 = u_xlat28;
        let x_1096 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1092 * x_1093) + x_1096);
        let x_1100 : vec4<f32> = u_xlat9;
        let x_1101 : vec2<f32> = vec2<f32>(x_1100.z, x_1100.w);
        let x_1103 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1101.x, x_1101.y, x_1103);
        let x_1110 : vec3<f32> = txVec12;
        let x_1112 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1110.xy, x_1110.z);
        u_xlat28 = x_1112;
        let x_1113 : f32 = u_xlat69;
        let x_1114 : f32 = u_xlat28;
        let x_1117 : f32 = u_xlat7.x;
        u_xlat48.x = ((x_1113 * x_1114) + x_1117);
      } else {
        let x_1121 : vec4<f32> = u_xlat4;
        let x_1124 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1127 : vec2<f32> = ((vec2<f32>(x_1121.x, x_1121.y) * vec2<f32>(x_1124.z, x_1124.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1128 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1127.x, x_1127.y, x_1128.z, x_1128.w);
        let x_1130 : vec4<f32> = u_xlat7;
        let x_1132 : vec2<f32> = floor(vec2<f32>(x_1130.x, x_1130.y));
        let x_1133 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1132.x, x_1132.y, x_1133.z, x_1133.w);
        let x_1135 : vec4<f32> = u_xlat4;
        let x_1138 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1141 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1135.x, x_1135.y) * vec2<f32>(x_1138.z, x_1138.w)) + -(vec2<f32>(x_1141.x, x_1141.y)));
        let x_1145 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1145.x, x_1145.x, x_1145.y, x_1145.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1148 : vec4<f32> = u_xlat8;
        let x_1150 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1148.x, x_1148.x, x_1148.z, x_1148.z) * vec4<f32>(x_1150.x, x_1150.x, x_1150.z, x_1150.z));
        let x_1153 : vec4<f32> = u_xlat9;
        let x_1157 : vec2<f32> = (vec2<f32>(x_1153.y, x_1153.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1158 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1158.x, x_1157.x, x_1158.z, x_1157.y);
        let x_1160 : vec4<f32> = u_xlat9;
        let x_1163 : vec2<f32> = u_xlat49;
        let x_1165 : vec2<f32> = ((vec2<f32>(x_1160.x, x_1160.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1163));
        let x_1166 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1165.x, x_1166.y, x_1165.y, x_1166.w);
        let x_1168 : vec2<f32> = u_xlat49;
        let x_1170 : vec2<f32> = (-(x_1168) + vec2<f32>(1.0f, 1.0f));
        let x_1171 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1170.x, x_1170.y, x_1171.z, x_1171.w);
        let x_1173 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1173, vec2<f32>(0.0f, 0.0f));
        let x_1175 : vec2<f32> = u_xlat51;
        let x_1177 : vec2<f32> = u_xlat51;
        let x_1179 : vec4<f32> = u_xlat9;
        let x_1181 : vec2<f32> = ((-(x_1175) * x_1177) + vec2<f32>(x_1179.x, x_1179.y));
        let x_1182 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1181.x, x_1181.y, x_1182.z, x_1182.w);
        let x_1184 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1184, vec2<f32>(0.0f, 0.0f));
        let x_1187 : vec2<f32> = u_xlat51;
        let x_1189 : vec2<f32> = u_xlat51;
        let x_1191 : vec4<f32> = u_xlat8;
        let x_1193 : vec2<f32> = ((-(x_1187) * x_1189) + vec2<f32>(x_1191.y, x_1191.w));
        let x_1194 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1193.x, x_1194.y, x_1193.y);
        let x_1196 : vec4<f32> = u_xlat9;
        let x_1199 : vec2<f32> = (vec2<f32>(x_1196.x, x_1196.y) + vec2<f32>(2.0f, 2.0f));
        let x_1200 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1199.x, x_1199.y, x_1200.z, x_1200.w);
        let x_1202 : vec3<f32> = u_xlat29;
        let x_1204 : vec2<f32> = (vec2<f32>(x_1202.x, x_1202.z) + vec2<f32>(2.0f, 2.0f));
        let x_1205 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1205.x, x_1204.x, x_1205.z, x_1204.y);
        let x_1208 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1208 * 0.081632003f);
        let x_1212 : vec4<f32> = u_xlat8;
        let x_1215 : vec3<f32> = (vec3<f32>(x_1212.z, x_1212.x, x_1212.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1216 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1215.x, x_1215.y, x_1215.z, x_1216.w);
        let x_1218 : vec4<f32> = u_xlat9;
        let x_1221 : vec2<f32> = (vec2<f32>(x_1218.x, x_1218.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1222 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1221.x, x_1221.y, x_1222.z, x_1222.w);
        let x_1225 : f32 = u_xlat12.y;
        u_xlat11.x = x_1225;
        let x_1227 : vec2<f32> = u_xlat49;
        let x_1234 : vec2<f32> = ((vec2<f32>(x_1227.x, x_1227.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1235 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1235.x, x_1234.x, x_1235.z, x_1234.y);
        let x_1237 : vec2<f32> = u_xlat49;
        let x_1241 : vec2<f32> = ((vec2<f32>(x_1237.x, x_1237.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1242 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1241.x, x_1242.y, x_1241.y, x_1242.w);
        let x_1245 : f32 = u_xlat8.x;
        u_xlat9.y = x_1245;
        let x_1248 : f32 = u_xlat10.y;
        u_xlat9.w = x_1248;
        let x_1250 : vec4<f32> = u_xlat9;
        let x_1251 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1250 + x_1251);
        let x_1253 : vec2<f32> = u_xlat49;
        let x_1256 : vec2<f32> = ((vec2<f32>(x_1253.y, x_1253.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1257 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1257.x, x_1256.x, x_1257.z, x_1256.y);
        let x_1259 : vec2<f32> = u_xlat49;
        let x_1262 : vec2<f32> = ((vec2<f32>(x_1259.y, x_1259.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1263 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1262.x, x_1263.y, x_1262.y, x_1263.w);
        let x_1266 : f32 = u_xlat8.y;
        u_xlat10.y = x_1266;
        let x_1268 : vec4<f32> = u_xlat10;
        let x_1269 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1268 + x_1269);
        let x_1271 : vec4<f32> = u_xlat9;
        let x_1272 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1271 / x_1272);
        let x_1274 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1274 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1280 : vec4<f32> = u_xlat10;
        let x_1281 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1280 / x_1281);
        let x_1283 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1283 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1285 : vec4<f32> = u_xlat9;
        let x_1288 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1285.w, x_1285.x, x_1285.y, x_1285.z) * vec4<f32>(x_1288.x, x_1288.x, x_1288.x, x_1288.x));
        let x_1291 : vec4<f32> = u_xlat10;
        let x_1294 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1291.x, x_1291.w, x_1291.y, x_1291.z) * vec4<f32>(x_1294.y, x_1294.y, x_1294.y, x_1294.y));
        let x_1297 : vec4<f32> = u_xlat9;
        let x_1298 : vec3<f32> = vec3<f32>(x_1297.y, x_1297.z, x_1297.w);
        let x_1299 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1298.x, x_1299.y, x_1298.y, x_1298.z);
        let x_1302 : f32 = u_xlat10.x;
        u_xlat12.y = x_1302;
        let x_1304 : vec4<f32> = u_xlat7;
        let x_1307 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1310 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1304.x, x_1304.y, x_1304.x, x_1304.y) * vec4<f32>(x_1307.x, x_1307.y, x_1307.x, x_1307.y)) + vec4<f32>(x_1310.x, x_1310.y, x_1310.z, x_1310.y));
        let x_1313 : vec4<f32> = u_xlat7;
        let x_1316 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1319 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1313.x, x_1313.y) * vec2<f32>(x_1316.x, x_1316.y)) + vec2<f32>(x_1319.w, x_1319.y));
        let x_1323 : f32 = u_xlat12.y;
        u_xlat9.y = x_1323;
        let x_1326 : f32 = u_xlat10.z;
        u_xlat12.y = x_1326;
        let x_1328 : vec4<f32> = u_xlat7;
        let x_1331 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1334 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1328.x, x_1328.y, x_1328.x, x_1328.y) * vec4<f32>(x_1331.x, x_1331.y, x_1331.x, x_1331.y)) + vec4<f32>(x_1334.x, x_1334.y, x_1334.z, x_1334.y));
        let x_1337 : vec4<f32> = u_xlat7;
        let x_1340 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1343 : vec4<f32> = u_xlat12;
        let x_1345 : vec2<f32> = ((vec2<f32>(x_1337.x, x_1337.y) * vec2<f32>(x_1340.x, x_1340.y)) + vec2<f32>(x_1343.w, x_1343.y));
        let x_1346 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1345.x, x_1345.y, x_1346.z, x_1346.w);
        let x_1349 : f32 = u_xlat12.y;
        u_xlat9.z = x_1349;
        let x_1352 : vec4<f32> = u_xlat7;
        let x_1355 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1358 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1352.x, x_1352.y, x_1352.x, x_1352.y) * vec4<f32>(x_1355.x, x_1355.y, x_1355.x, x_1355.y)) + vec4<f32>(x_1358.x, x_1358.y, x_1358.x, x_1358.z));
        let x_1362 : f32 = u_xlat10.w;
        u_xlat12.y = x_1362;
        let x_1365 : vec4<f32> = u_xlat7;
        let x_1368 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1371 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1365.x, x_1365.y, x_1365.x, x_1365.y) * vec4<f32>(x_1368.x, x_1368.y, x_1368.x, x_1368.y)) + vec4<f32>(x_1371.x, x_1371.y, x_1371.z, x_1371.y));
        let x_1375 : vec4<f32> = u_xlat7;
        let x_1378 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1381 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1375.x, x_1375.y) * vec2<f32>(x_1378.x, x_1378.y)) + vec2<f32>(x_1381.w, x_1381.y));
        let x_1385 : f32 = u_xlat12.y;
        u_xlat9.w = x_1385;
        let x_1388 : vec4<f32> = u_xlat7;
        let x_1391 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1394 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1388.x, x_1388.y) * vec2<f32>(x_1391.x, x_1391.y)) + vec2<f32>(x_1394.x, x_1394.w));
        let x_1397 : vec4<f32> = u_xlat12;
        let x_1398 : vec3<f32> = vec3<f32>(x_1397.x, x_1397.z, x_1397.w);
        let x_1399 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1398.x, x_1399.y, x_1398.y, x_1398.z);
        let x_1401 : vec4<f32> = u_xlat7;
        let x_1404 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1407 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1401.x, x_1401.y, x_1401.x, x_1401.y) * vec4<f32>(x_1404.x, x_1404.y, x_1404.x, x_1404.y)) + vec4<f32>(x_1407.x, x_1407.y, x_1407.z, x_1407.y));
        let x_1411 : vec4<f32> = u_xlat7;
        let x_1414 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1417 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1411.x, x_1411.y) * vec2<f32>(x_1414.x, x_1414.y)) + vec2<f32>(x_1417.w, x_1417.y));
        let x_1421 : f32 = u_xlat9.x;
        u_xlat10.x = x_1421;
        let x_1423 : vec4<f32> = u_xlat7;
        let x_1426 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1429 : vec4<f32> = u_xlat10;
        let x_1431 : vec2<f32> = ((vec2<f32>(x_1423.x, x_1423.y) * vec2<f32>(x_1426.x, x_1426.y)) + vec2<f32>(x_1429.x, x_1429.y));
        let x_1432 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1431.x, x_1431.y, x_1432.z, x_1432.w);
        let x_1435 : vec4<f32> = u_xlat8;
        let x_1437 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1435.x, x_1435.x, x_1435.x, x_1435.x) * x_1437);
        let x_1440 : vec4<f32> = u_xlat8;
        let x_1442 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1440.y, x_1440.y, x_1440.y, x_1440.y) * x_1442);
        let x_1445 : vec4<f32> = u_xlat8;
        let x_1447 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1445.z, x_1445.z, x_1445.z, x_1445.z) * x_1447);
        let x_1449 : vec4<f32> = u_xlat8;
        let x_1451 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1449.w, x_1449.w, x_1449.w, x_1449.w) * x_1451);
        let x_1454 : vec4<f32> = u_xlat13;
        let x_1455 : vec2<f32> = vec2<f32>(x_1454.x, x_1454.y);
        let x_1457 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1455.x, x_1455.y, x_1457);
        let x_1464 : vec3<f32> = txVec13;
        let x_1466 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1464.xy, x_1464.z);
        u_xlat69 = x_1466;
        let x_1468 : vec4<f32> = u_xlat13;
        let x_1469 : vec2<f32> = vec2<f32>(x_1468.z, x_1468.w);
        let x_1471 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1469.x, x_1469.y, x_1471);
        let x_1478 : vec3<f32> = txVec14;
        let x_1480 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1478.xy, x_1478.z);
        u_xlat9.x = x_1480;
        let x_1483 : f32 = u_xlat9.x;
        let x_1485 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1483 * x_1485);
        let x_1489 : f32 = u_xlat18.x;
        let x_1490 : f32 = u_xlat69;
        let x_1493 : f32 = u_xlat9.x;
        u_xlat69 = ((x_1489 * x_1490) + x_1493);
        let x_1496 : vec2<f32> = u_xlat49;
        let x_1498 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1496.x, x_1496.y, x_1498);
        let x_1505 : vec3<f32> = txVec15;
        let x_1507 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1505.xy, x_1505.z);
        u_xlat49.x = x_1507;
        let x_1510 : f32 = u_xlat18.z;
        let x_1512 : f32 = u_xlat49.x;
        let x_1514 : f32 = u_xlat69;
        u_xlat69 = ((x_1510 * x_1512) + x_1514);
        let x_1517 : vec4<f32> = u_xlat16;
        let x_1518 : vec2<f32> = vec2<f32>(x_1517.x, x_1517.y);
        let x_1520 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1518.x, x_1518.y, x_1520);
        let x_1527 : vec3<f32> = txVec16;
        let x_1529 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1527.xy, x_1527.z);
        u_xlat49.x = x_1529;
        let x_1532 : f32 = u_xlat18.w;
        let x_1534 : f32 = u_xlat49.x;
        let x_1536 : f32 = u_xlat69;
        u_xlat69 = ((x_1532 * x_1534) + x_1536);
        let x_1539 : vec4<f32> = u_xlat14;
        let x_1540 : vec2<f32> = vec2<f32>(x_1539.x, x_1539.y);
        let x_1542 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1540.x, x_1540.y, x_1542);
        let x_1549 : vec3<f32> = txVec17;
        let x_1551 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1549.xy, x_1549.z);
        u_xlat49.x = x_1551;
        let x_1554 : f32 = u_xlat19.x;
        let x_1556 : f32 = u_xlat49.x;
        let x_1558 : f32 = u_xlat69;
        u_xlat69 = ((x_1554 * x_1556) + x_1558);
        let x_1561 : vec4<f32> = u_xlat14;
        let x_1562 : vec2<f32> = vec2<f32>(x_1561.z, x_1561.w);
        let x_1564 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1562.x, x_1562.y, x_1564);
        let x_1571 : vec3<f32> = txVec18;
        let x_1573 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1571.xy, x_1571.z);
        u_xlat49.x = x_1573;
        let x_1576 : f32 = u_xlat19.y;
        let x_1578 : f32 = u_xlat49.x;
        let x_1580 : f32 = u_xlat69;
        u_xlat69 = ((x_1576 * x_1578) + x_1580);
        let x_1583 : vec4<f32> = u_xlat15;
        let x_1584 : vec2<f32> = vec2<f32>(x_1583.x, x_1583.y);
        let x_1586 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1584.x, x_1584.y, x_1586);
        let x_1593 : vec3<f32> = txVec19;
        let x_1595 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1593.xy, x_1593.z);
        u_xlat49.x = x_1595;
        let x_1598 : f32 = u_xlat19.z;
        let x_1600 : f32 = u_xlat49.x;
        let x_1602 : f32 = u_xlat69;
        u_xlat69 = ((x_1598 * x_1600) + x_1602);
        let x_1605 : vec4<f32> = u_xlat16;
        let x_1606 : vec2<f32> = vec2<f32>(x_1605.z, x_1605.w);
        let x_1608 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1606.x, x_1606.y, x_1608);
        let x_1615 : vec3<f32> = txVec20;
        let x_1617 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1615.xy, x_1615.z);
        u_xlat49.x = x_1617;
        let x_1620 : f32 = u_xlat19.w;
        let x_1622 : f32 = u_xlat49.x;
        let x_1624 : f32 = u_xlat69;
        u_xlat69 = ((x_1620 * x_1622) + x_1624);
        let x_1627 : vec4<f32> = u_xlat17;
        let x_1628 : vec2<f32> = vec2<f32>(x_1627.x, x_1627.y);
        let x_1630 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1628.x, x_1628.y, x_1630);
        let x_1637 : vec3<f32> = txVec21;
        let x_1639 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1637.xy, x_1637.z);
        u_xlat49.x = x_1639;
        let x_1642 : f32 = u_xlat20.x;
        let x_1644 : f32 = u_xlat49.x;
        let x_1646 : f32 = u_xlat69;
        u_xlat69 = ((x_1642 * x_1644) + x_1646);
        let x_1649 : vec4<f32> = u_xlat17;
        let x_1650 : vec2<f32> = vec2<f32>(x_1649.z, x_1649.w);
        let x_1652 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1650.x, x_1650.y, x_1652);
        let x_1659 : vec3<f32> = txVec22;
        let x_1661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1659.xy, x_1659.z);
        u_xlat49.x = x_1661;
        let x_1664 : f32 = u_xlat20.y;
        let x_1666 : f32 = u_xlat49.x;
        let x_1668 : f32 = u_xlat69;
        u_xlat69 = ((x_1664 * x_1666) + x_1668);
        let x_1671 : vec2<f32> = u_xlat30;
        let x_1673 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1671.x, x_1671.y, x_1673);
        let x_1680 : vec3<f32> = txVec23;
        let x_1682 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1680.xy, x_1680.z);
        u_xlat49.x = x_1682;
        let x_1685 : f32 = u_xlat20.z;
        let x_1687 : f32 = u_xlat49.x;
        let x_1689 : f32 = u_xlat69;
        u_xlat69 = ((x_1685 * x_1687) + x_1689);
        let x_1692 : vec2<f32> = u_xlat57;
        let x_1694 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1692.x, x_1692.y, x_1694);
        let x_1701 : vec3<f32> = txVec24;
        let x_1703 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1701.xy, x_1701.z);
        u_xlat49.x = x_1703;
        let x_1706 : f32 = u_xlat20.w;
        let x_1708 : f32 = u_xlat49.x;
        let x_1710 : f32 = u_xlat69;
        u_xlat69 = ((x_1706 * x_1708) + x_1710);
        let x_1713 : vec4<f32> = u_xlat12;
        let x_1714 : vec2<f32> = vec2<f32>(x_1713.x, x_1713.y);
        let x_1716 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1714.x, x_1714.y, x_1716);
        let x_1723 : vec3<f32> = txVec25;
        let x_1725 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1723.xy, x_1723.z);
        u_xlat49.x = x_1725;
        let x_1728 : f32 = u_xlat8.x;
        let x_1730 : f32 = u_xlat49.x;
        let x_1732 : f32 = u_xlat69;
        u_xlat69 = ((x_1728 * x_1730) + x_1732);
        let x_1735 : vec4<f32> = u_xlat12;
        let x_1736 : vec2<f32> = vec2<f32>(x_1735.z, x_1735.w);
        let x_1738 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1736.x, x_1736.y, x_1738);
        let x_1745 : vec3<f32> = txVec26;
        let x_1747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1745.xy, x_1745.z);
        u_xlat49.x = x_1747;
        let x_1750 : f32 = u_xlat8.y;
        let x_1752 : f32 = u_xlat49.x;
        let x_1754 : f32 = u_xlat69;
        u_xlat69 = ((x_1750 * x_1752) + x_1754);
        let x_1757 : vec2<f32> = u_xlat52;
        let x_1759 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1757.x, x_1757.y, x_1759);
        let x_1766 : vec3<f32> = txVec27;
        let x_1768 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1766.xy, x_1766.z);
        u_xlat49.x = x_1768;
        let x_1771 : f32 = u_xlat8.z;
        let x_1773 : f32 = u_xlat49.x;
        let x_1775 : f32 = u_xlat69;
        u_xlat69 = ((x_1771 * x_1773) + x_1775);
        let x_1778 : vec4<f32> = u_xlat7;
        let x_1779 : vec2<f32> = vec2<f32>(x_1778.x, x_1778.y);
        let x_1781 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1779.x, x_1779.y, x_1781);
        let x_1788 : vec3<f32> = txVec28;
        let x_1790 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1788.xy, x_1788.z);
        u_xlat7.x = x_1790;
        let x_1793 : f32 = u_xlat8.w;
        let x_1795 : f32 = u_xlat7.x;
        let x_1797 : f32 = u_xlat69;
        u_xlat48.x = ((x_1793 * x_1795) + x_1797);
      }
    }
  } else {
    let x_1802 : vec4<f32> = u_xlat4;
    let x_1803 : vec2<f32> = vec2<f32>(x_1802.x, x_1802.y);
    let x_1805 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1803.x, x_1803.y, x_1805);
    let x_1812 : vec3<f32> = txVec29;
    let x_1814 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1812.xy, x_1812.z);
    u_xlat48.x = x_1814;
  }
  let x_1817 : f32 = x_158.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1817) + 1.0f);
  let x_1822 : f32 = u_xlat48.x;
  let x_1824 : f32 = x_158.x_MainLightShadowParams.x;
  let x_1827 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1822 * x_1824) + x_1827);
  let x_1832 : f32 = u_xlat4.z;
  u_xlatb25 = (0.0f >= x_1832);
  let x_1836 : f32 = u_xlat4.z;
  u_xlatb46 = (x_1836 >= 1.0f);
  let x_1838 : bool = u_xlatb46;
  let x_1839 : bool = u_xlatb25;
  u_xlatb25 = (x_1838 | x_1839);
  let x_1841 : bool = u_xlatb25;
  if (x_1841) {
    x_1842 = 1.0f;
  } else {
    let x_1847 : f32 = u_xlat4.x;
    x_1842 = x_1847;
  }
  let x_1848 : f32 = x_1842;
  u_xlat4.x = x_1848;
  let x_1850 : vec3<f32> = vs_TEXCOORD1;
  let x_1852 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1854 : vec3<f32> = (x_1850 + -(x_1852));
  let x_1855 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1854.x, x_1854.y, x_1854.z, x_1855.w);
  let x_1858 : vec4<f32> = u_xlat7;
  let x_1860 : vec4<f32> = u_xlat7;
  u_xlat25 = dot(vec3<f32>(x_1858.x, x_1858.y, x_1858.z), vec3<f32>(x_1860.x, x_1860.y, x_1860.z));
  let x_1863 : f32 = u_xlat25;
  let x_1865 : f32 = x_158.x_MainLightShadowParams.z;
  let x_1868 : f32 = x_158.x_MainLightShadowParams.w;
  u_xlat25 = ((x_1863 * x_1865) + x_1868);
  let x_1870 : f32 = u_xlat25;
  u_xlat25 = clamp(x_1870, 0.0f, 1.0f);
  let x_1874 : f32 = u_xlat4.x;
  u_xlat46 = (-(x_1874) + 1.0f);
  let x_1877 : f32 = u_xlat25;
  let x_1878 : f32 = u_xlat46;
  let x_1881 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1877 * x_1878) + x_1881);
  let x_1884 : f32 = u_xlat27;
  let x_1887 : vec4<f32> = x_44.x_MainLightColor;
  let x_1889 : vec3<f32> = (vec3<f32>(x_1884, x_1884, x_1884) * vec3<f32>(x_1887.x, x_1887.y, x_1887.z));
  let x_1890 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1889.x, x_1889.y, x_1889.z, x_1890.w);
  let x_1892 : vec3<f32> = u_xlat3;
  let x_1894 : vec4<f32> = u_xlat2;
  u_xlat25 = dot(-(x_1892), vec3<f32>(x_1894.x, x_1894.y, x_1894.z));
  let x_1897 : f32 = u_xlat25;
  let x_1898 : f32 = u_xlat25;
  u_xlat25 = (x_1897 + x_1898);
  let x_1900 : vec4<f32> = u_xlat2;
  let x_1902 : f32 = u_xlat25;
  let x_1906 : vec3<f32> = u_xlat3;
  let x_1908 : vec3<f32> = ((vec3<f32>(x_1900.x, x_1900.y, x_1900.z) * -(vec3<f32>(x_1902, x_1902, x_1902))) + -(x_1906));
  let x_1909 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1908.x, x_1908.y, x_1908.z, x_1909.w);
  let x_1911 : vec4<f32> = u_xlat2;
  let x_1913 : vec3<f32> = u_xlat3;
  u_xlat25 = dot(vec3<f32>(x_1911.x, x_1911.y, x_1911.z), x_1913);
  let x_1915 : f32 = u_xlat25;
  u_xlat25 = clamp(x_1915, 0.0f, 1.0f);
  let x_1917 : f32 = u_xlat25;
  u_xlat25 = (-(x_1917) + 1.0f);
  let x_1920 : f32 = u_xlat25;
  let x_1921 : f32 = u_xlat25;
  u_xlat25 = (x_1920 * x_1921);
  let x_1923 : f32 = u_xlat25;
  let x_1924 : f32 = u_xlat25;
  u_xlat25 = (x_1923 * x_1924);
  let x_1926 : f32 = u_xlat63;
  u_xlat46 = ((-(x_1926) * 0.699999988f) + 1.700000048f);
  let x_1932 : f32 = u_xlat63;
  let x_1933 : f32 = u_xlat46;
  u_xlat63 = (x_1932 * x_1933);
  let x_1935 : f32 = u_xlat63;
  u_xlat63 = (x_1935 * 6.0f);
  let x_1946 : vec4<f32> = u_xlat8;
  let x_1948 : f32 = u_xlat63;
  let x_1949 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1946.x, x_1946.y, x_1946.z), x_1948);
  u_xlat8 = x_1949;
  let x_1951 : f32 = u_xlat8.w;
  u_xlat63 = (x_1951 + -1.0f);
  let x_1954 : f32 = x_352.unity_SpecCube0_HDR.w;
  let x_1955 : f32 = u_xlat63;
  u_xlat63 = ((x_1954 * x_1955) + 1.0f);
  let x_1958 : f32 = u_xlat63;
  u_xlat63 = max(x_1958, 0.0f);
  let x_1960 : f32 = u_xlat63;
  u_xlat63 = log2(x_1960);
  let x_1962 : f32 = u_xlat63;
  let x_1964 : f32 = x_352.unity_SpecCube0_HDR.y;
  u_xlat63 = (x_1962 * x_1964);
  let x_1966 : f32 = u_xlat63;
  u_xlat63 = exp2(x_1966);
  let x_1968 : f32 = u_xlat63;
  let x_1970 : f32 = x_352.unity_SpecCube0_HDR.x;
  u_xlat63 = (x_1968 * x_1970);
  let x_1972 : vec4<f32> = u_xlat8;
  let x_1974 : f32 = u_xlat63;
  let x_1976 : vec3<f32> = (vec3<f32>(x_1972.x, x_1972.y, x_1972.z) * vec3<f32>(x_1974, x_1974, x_1974));
  let x_1977 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1976.x, x_1976.y, x_1976.z, x_1977.w);
  let x_1979 : f32 = u_xlat66;
  let x_1981 : f32 = u_xlat66;
  u_xlat48 = ((vec2<f32>(x_1979, x_1979) * vec2<f32>(x_1981, x_1981)) + vec2<f32>(-1.0f, 1.0f));
  let x_1987 : f32 = u_xlat48.y;
  u_xlat63 = (1.0f / x_1987);
  let x_1989 : vec4<f32> = u_xlat0;
  let x_1992 : f32 = u_xlat65;
  let x_1994 : vec3<f32> = (-(vec3<f32>(x_1989.x, x_1989.y, x_1989.z)) + vec3<f32>(x_1992, x_1992, x_1992));
  let x_1995 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1994.x, x_1994.y, x_1994.z, x_1995.w);
  let x_1997 : f32 = u_xlat25;
  let x_1999 : vec4<f32> = u_xlat9;
  let x_2002 : vec4<f32> = u_xlat0;
  let x_2004 : vec3<f32> = ((vec3<f32>(x_1997, x_1997, x_1997) * vec3<f32>(x_1999.x, x_1999.y, x_1999.z)) + vec3<f32>(x_2002.x, x_2002.y, x_2002.z));
  let x_2005 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2004.x, x_2004.y, x_2004.z, x_2005.w);
  let x_2007 : f32 = u_xlat63;
  let x_2009 : vec4<f32> = u_xlat9;
  let x_2011 : vec3<f32> = (vec3<f32>(x_2007, x_2007, x_2007) * vec3<f32>(x_2009.x, x_2009.y, x_2009.z));
  let x_2012 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2011.x, x_2011.y, x_2011.z, x_2012.w);
  let x_2014 : vec4<f32> = u_xlat8;
  let x_2016 : vec4<f32> = u_xlat9;
  let x_2018 : vec3<f32> = (vec3<f32>(x_2014.x, x_2014.y, x_2014.z) * vec3<f32>(x_2016.x, x_2016.y, x_2016.z));
  let x_2019 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2018.x, x_2018.y, x_2018.z, x_2019.w);
  let x_2021 : vec4<f32> = u_xlat5;
  let x_2023 : vec3<f32> = u_xlat22;
  let x_2025 : vec4<f32> = u_xlat8;
  let x_2027 : vec3<f32> = ((vec3<f32>(x_2021.x, x_2021.y, x_2021.z) * x_2023) + vec3<f32>(x_2025.x, x_2025.y, x_2025.z));
  let x_2028 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2027.x, x_2027.y, x_2027.z, x_2028.w);
  let x_2031 : f32 = u_xlat4.x;
  let x_2033 : f32 = x_352.unity_LightData.z;
  u_xlat63 = (x_2031 * x_2033);
  let x_2035 : vec4<f32> = u_xlat2;
  let x_2038 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat65 = dot(vec3<f32>(x_2035.x, x_2035.y, x_2035.z), vec3<f32>(x_2038.x, x_2038.y, x_2038.z));
  let x_2041 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2041, 0.0f, 1.0f);
  let x_2043 : f32 = u_xlat63;
  let x_2044 : f32 = u_xlat65;
  u_xlat63 = (x_2043 * x_2044);
  let x_2046 : f32 = u_xlat63;
  let x_2048 : vec4<f32> = u_xlat7;
  let x_2050 : vec3<f32> = (vec3<f32>(x_2046, x_2046, x_2046) * vec3<f32>(x_2048.x, x_2048.y, x_2048.z));
  let x_2051 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2050.x, x_2050.y, x_2050.z, x_2051.w);
  let x_2053 : vec3<f32> = u_xlat3;
  let x_2055 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2057 : vec3<f32> = (x_2053 + vec3<f32>(x_2055.x, x_2055.y, x_2055.z));
  let x_2058 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2057.x, x_2057.y, x_2057.z, x_2058.w);
  let x_2060 : vec4<f32> = u_xlat7;
  let x_2062 : vec4<f32> = u_xlat7;
  u_xlat63 = dot(vec3<f32>(x_2060.x, x_2060.y, x_2060.z), vec3<f32>(x_2062.x, x_2062.y, x_2062.z));
  let x_2065 : f32 = u_xlat63;
  u_xlat63 = max(x_2065, 1.17549435e-37f);
  let x_2068 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_2068);
  let x_2070 : f32 = u_xlat63;
  let x_2072 : vec4<f32> = u_xlat7;
  let x_2074 : vec3<f32> = (vec3<f32>(x_2070, x_2070, x_2070) * vec3<f32>(x_2072.x, x_2072.y, x_2072.z));
  let x_2075 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2074.x, x_2074.y, x_2074.z, x_2075.w);
  let x_2077 : vec4<f32> = u_xlat2;
  let x_2079 : vec4<f32> = u_xlat7;
  u_xlat63 = dot(vec3<f32>(x_2077.x, x_2077.y, x_2077.z), vec3<f32>(x_2079.x, x_2079.y, x_2079.z));
  let x_2082 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2082, 0.0f, 1.0f);
  let x_2085 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2087 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(vec3<f32>(x_2085.x, x_2085.y, x_2085.z), vec3<f32>(x_2087.x, x_2087.y, x_2087.z));
  let x_2090 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2090, 0.0f, 1.0f);
  let x_2092 : f32 = u_xlat63;
  let x_2093 : f32 = u_xlat63;
  u_xlat63 = (x_2092 * x_2093);
  let x_2095 : f32 = u_xlat63;
  let x_2097 : f32 = u_xlat48.x;
  u_xlat63 = ((x_2095 * x_2097) + 1.000010014f);
  let x_2101 : f32 = u_xlat65;
  let x_2102 : f32 = u_xlat65;
  u_xlat65 = (x_2101 * x_2102);
  let x_2104 : f32 = u_xlat63;
  let x_2105 : f32 = u_xlat63;
  u_xlat63 = (x_2104 * x_2105);
  let x_2107 : f32 = u_xlat65;
  u_xlat65 = max(x_2107, 0.100000001f);
  let x_2110 : f32 = u_xlat63;
  let x_2111 : f32 = u_xlat65;
  u_xlat63 = (x_2110 * x_2111);
  let x_2113 : f32 = u_xlat68;
  let x_2114 : f32 = u_xlat63;
  u_xlat63 = (x_2113 * x_2114);
  let x_2116 : f32 = u_xlat67;
  let x_2117 : f32 = u_xlat63;
  u_xlat63 = (x_2116 / x_2117);
  let x_2119 : vec4<f32> = u_xlat0;
  let x_2121 : f32 = u_xlat63;
  let x_2124 : vec3<f32> = u_xlat22;
  let x_2125 : vec3<f32> = ((vec3<f32>(x_2119.x, x_2119.y, x_2119.z) * vec3<f32>(x_2121, x_2121, x_2121)) + x_2124);
  let x_2126 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2125.x, x_2125.y, x_2125.z, x_2126.w);
  let x_2128 : vec4<f32> = u_xlat4;
  let x_2130 : vec4<f32> = u_xlat7;
  let x_2132 : vec3<f32> = (vec3<f32>(x_2128.x, x_2128.y, x_2128.z) * vec3<f32>(x_2130.x, x_2130.y, x_2130.z));
  let x_2133 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2132.x, x_2132.y, x_2132.z, x_2133.w);
  let x_2136 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2138 : f32 = x_352.unity_LightData.y;
  u_xlat63 = min(x_2136, x_2138);
  let x_2140 : f32 = u_xlat63;
  u_xlatu63 = bitcast<u32>(i32(x_2140));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2152 : u32 = u_xlatu_loop_1;
    let x_2153 : u32 = u_xlatu63;
    if ((x_2152 < x_2153)) {
    } else {
      break;
    }
    let x_2156 : u32 = u_xlatu_loop_1;
    u_xlatu66 = (x_2156 >> 2u);
    let x_2159 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2159 & 3u));
    let x_2162 : u32 = u_xlatu66;
    let x_2165 : vec4<f32> = x_352.unity_LightIndices[bitcast<i32>(x_2162)];
    let x_2175 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2180 : vec4<u32> = indexable[x_2175];
    u_xlat66 = dot(x_2165, bitcast<vec4<f32>>(x_2180));
    let x_2184 : f32 = u_xlat66;
    u_xlati66 = i32(x_2184);
    let x_2186 : vec3<f32> = vs_TEXCOORD1;
    let x_2198 : i32 = u_xlati66;
    let x_2200 : vec4<f32> = x_2197.x_AdditionalLightsPosition[x_2198];
    let x_2203 : i32 = u_xlati66;
    let x_2205 : vec4<f32> = x_2197.x_AdditionalLightsPosition[x_2203];
    let x_2207 : vec3<f32> = ((-(x_2186) * vec3<f32>(x_2200.w, x_2200.w, x_2200.w)) + vec3<f32>(x_2205.x, x_2205.y, x_2205.z));
    let x_2208 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2207.x, x_2207.y, x_2207.z, x_2208.w);
    let x_2210 : vec4<f32> = u_xlat8;
    let x_2212 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2210.x, x_2210.y, x_2210.z), vec3<f32>(x_2212.x, x_2212.y, x_2212.z));
    let x_2215 : f32 = u_xlat69;
    u_xlat69 = max(x_2215, 6.10351562e-05f);
    let x_2219 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_2219);
    let x_2221 : f32 = u_xlat70;
    let x_2223 : vec4<f32> = u_xlat8;
    let x_2225 : vec3<f32> = (vec3<f32>(x_2221, x_2221, x_2221) * vec3<f32>(x_2223.x, x_2223.y, x_2223.z));
    let x_2226 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2225.x, x_2225.y, x_2225.z, x_2226.w);
    let x_2229 : f32 = u_xlat69;
    u_xlat71 = (1.0f / x_2229);
    let x_2231 : f32 = u_xlat69;
    let x_2232 : i32 = u_xlati66;
    let x_2234 : f32 = x_2197.x_AdditionalLightsAttenuation[x_2232].x;
    u_xlat69 = (x_2231 * x_2234);
    let x_2236 : f32 = u_xlat69;
    let x_2238 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2236) * x_2238) + 1.0f);
    let x_2241 : f32 = u_xlat69;
    u_xlat69 = max(x_2241, 0.0f);
    let x_2243 : f32 = u_xlat69;
    let x_2244 : f32 = u_xlat69;
    u_xlat69 = (x_2243 * x_2244);
    let x_2246 : f32 = u_xlat69;
    let x_2247 : f32 = u_xlat71;
    u_xlat69 = (x_2246 * x_2247);
    let x_2249 : i32 = u_xlati66;
    let x_2251 : vec4<f32> = x_2197.x_AdditionalLightsSpotDir[x_2249];
    let x_2253 : vec4<f32> = u_xlat9;
    u_xlat71 = dot(vec3<f32>(x_2251.x, x_2251.y, x_2251.z), vec3<f32>(x_2253.x, x_2253.y, x_2253.z));
    let x_2256 : f32 = u_xlat71;
    let x_2257 : i32 = u_xlati66;
    let x_2259 : f32 = x_2197.x_AdditionalLightsAttenuation[x_2257].z;
    let x_2261 : i32 = u_xlati66;
    let x_2263 : f32 = x_2197.x_AdditionalLightsAttenuation[x_2261].w;
    u_xlat71 = ((x_2256 * x_2259) + x_2263);
    let x_2265 : f32 = u_xlat71;
    u_xlat71 = clamp(x_2265, 0.0f, 1.0f);
    let x_2267 : f32 = u_xlat71;
    let x_2268 : f32 = u_xlat71;
    u_xlat71 = (x_2267 * x_2268);
    let x_2270 : f32 = u_xlat69;
    let x_2271 : f32 = u_xlat71;
    u_xlat69 = (x_2270 * x_2271);
    let x_2273 : f32 = u_xlat27;
    let x_2275 : i32 = u_xlati66;
    let x_2277 : vec4<f32> = x_2197.x_AdditionalLightsColor[x_2275];
    let x_2279 : vec3<f32> = (vec3<f32>(x_2273, x_2273, x_2273) * vec3<f32>(x_2277.x, x_2277.y, x_2277.z));
    let x_2280 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2279.x, x_2279.y, x_2279.z, x_2280.w);
    let x_2282 : vec4<f32> = u_xlat2;
    let x_2284 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_2282.x, x_2282.y, x_2282.z), vec3<f32>(x_2284.x, x_2284.y, x_2284.z));
    let x_2287 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2287, 0.0f, 1.0f);
    let x_2289 : f32 = u_xlat66;
    let x_2290 : f32 = u_xlat69;
    u_xlat66 = (x_2289 * x_2290);
    let x_2292 : f32 = u_xlat66;
    let x_2294 : vec4<f32> = u_xlat10;
    let x_2296 : vec3<f32> = (vec3<f32>(x_2292, x_2292, x_2292) * vec3<f32>(x_2294.x, x_2294.y, x_2294.z));
    let x_2297 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2296.x, x_2296.y, x_2296.z, x_2297.w);
    let x_2299 : vec4<f32> = u_xlat8;
    let x_2301 : f32 = u_xlat70;
    let x_2304 : vec3<f32> = u_xlat3;
    let x_2305 : vec3<f32> = ((vec3<f32>(x_2299.x, x_2299.y, x_2299.z) * vec3<f32>(x_2301, x_2301, x_2301)) + x_2304);
    let x_2306 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2305.x, x_2305.y, x_2305.z, x_2306.w);
    let x_2308 : vec4<f32> = u_xlat8;
    let x_2310 : vec4<f32> = u_xlat8;
    u_xlat66 = dot(vec3<f32>(x_2308.x, x_2308.y, x_2308.z), vec3<f32>(x_2310.x, x_2310.y, x_2310.z));
    let x_2313 : f32 = u_xlat66;
    u_xlat66 = max(x_2313, 1.17549435e-37f);
    let x_2315 : f32 = u_xlat66;
    u_xlat66 = inverseSqrt(x_2315);
    let x_2317 : f32 = u_xlat66;
    let x_2319 : vec4<f32> = u_xlat8;
    let x_2321 : vec3<f32> = (vec3<f32>(x_2317, x_2317, x_2317) * vec3<f32>(x_2319.x, x_2319.y, x_2319.z));
    let x_2322 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2321.x, x_2321.y, x_2321.z, x_2322.w);
    let x_2324 : vec4<f32> = u_xlat2;
    let x_2326 : vec4<f32> = u_xlat8;
    u_xlat66 = dot(vec3<f32>(x_2324.x, x_2324.y, x_2324.z), vec3<f32>(x_2326.x, x_2326.y, x_2326.z));
    let x_2329 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2329, 0.0f, 1.0f);
    let x_2331 : vec4<f32> = u_xlat9;
    let x_2333 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2331.x, x_2331.y, x_2331.z), vec3<f32>(x_2333.x, x_2333.y, x_2333.z));
    let x_2336 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2336, 0.0f, 1.0f);
    let x_2338 : f32 = u_xlat66;
    let x_2339 : f32 = u_xlat66;
    u_xlat66 = (x_2338 * x_2339);
    let x_2341 : f32 = u_xlat66;
    let x_2343 : f32 = u_xlat48.x;
    u_xlat66 = ((x_2341 * x_2343) + 1.000010014f);
    let x_2346 : f32 = u_xlat69;
    let x_2347 : f32 = u_xlat69;
    u_xlat69 = (x_2346 * x_2347);
    let x_2349 : f32 = u_xlat66;
    let x_2350 : f32 = u_xlat66;
    u_xlat66 = (x_2349 * x_2350);
    let x_2352 : f32 = u_xlat69;
    u_xlat69 = max(x_2352, 0.100000001f);
    let x_2354 : f32 = u_xlat66;
    let x_2355 : f32 = u_xlat69;
    u_xlat66 = (x_2354 * x_2355);
    let x_2357 : f32 = u_xlat68;
    let x_2358 : f32 = u_xlat66;
    u_xlat66 = (x_2357 * x_2358);
    let x_2360 : f32 = u_xlat67;
    let x_2361 : f32 = u_xlat66;
    u_xlat66 = (x_2360 / x_2361);
    let x_2363 : vec4<f32> = u_xlat0;
    let x_2365 : f32 = u_xlat66;
    let x_2368 : vec3<f32> = u_xlat22;
    let x_2369 : vec3<f32> = ((vec3<f32>(x_2363.x, x_2363.y, x_2363.z) * vec3<f32>(x_2365, x_2365, x_2365)) + x_2368);
    let x_2370 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2369.x, x_2369.y, x_2369.z, x_2370.w);
    let x_2372 : vec4<f32> = u_xlat8;
    let x_2374 : vec4<f32> = u_xlat10;
    let x_2377 : vec4<f32> = u_xlat7;
    let x_2379 : vec3<f32> = ((vec3<f32>(x_2372.x, x_2372.y, x_2372.z) * vec3<f32>(x_2374.x, x_2374.y, x_2374.z)) + vec3<f32>(x_2377.x, x_2377.y, x_2377.z));
    let x_2380 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2379.x, x_2379.y, x_2379.z, x_2380.w);

    continuing {
      let x_2382 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2382 + bitcast<u32>(1i));
    }
  }
  let x_2384 : vec4<f32> = u_xlat5;
  let x_2386 : vec4<f32> = u_xlat6;
  let x_2389 : vec4<f32> = u_xlat4;
  let x_2391 : vec3<f32> = ((vec3<f32>(x_2384.x, x_2384.y, x_2384.z) * vec3<f32>(x_2386.x, x_2386.x, x_2386.x)) + vec3<f32>(x_2389.x, x_2389.y, x_2389.z));
  let x_2392 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2391.x, x_2391.y, x_2391.z, x_2392.w);
  let x_2396 : vec4<f32> = u_xlat7;
  let x_2398 : vec4<f32> = u_xlat0;
  let x_2400 : vec3<f32> = (vec3<f32>(x_2396.x, x_2396.y, x_2396.z) + vec3<f32>(x_2398.x, x_2398.y, x_2398.z));
  let x_2401 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2400.x, x_2400.y, x_2400.z, x_2401.w);
  let x_2406 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_2406 == 1.0f);
  let x_2408 : bool = u_xlatb0;
  if (x_2408) {
    let x_2413 : f32 = u_xlat1.x;
    x_2409 = x_2413;
  } else {
    x_2409 = 1.0f;
  }
  let x_2415 : f32 = x_2409;
  SV_Target0.w = x_2415;
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

