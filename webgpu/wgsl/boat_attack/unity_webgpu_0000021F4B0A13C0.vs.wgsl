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

struct x_Terrain {
  x_NormalScale0 : f32,
  x_NormalScale1 : f32,
  x_NormalScale2 : f32,
  x_NormalScale3 : f32,
  x_Metallic0 : f32,
  x_Metallic1 : f32,
  x_Metallic2 : f32,
  x_Metallic3 : f32,
  x_Smoothness0 : f32,
  x_Smoothness1 : f32,
  x_Smoothness2 : f32,
  x_Smoothness3 : f32,
  x_DiffuseRemapScale0 : vec4<f32>,
  x_DiffuseRemapScale1 : vec4<f32>,
  x_DiffuseRemapScale2 : vec4<f32>,
  x_DiffuseRemapScale3 : vec4<f32>,
  x_MaskMapRemapOffset0 : vec4<f32>,
  x_MaskMapRemapOffset1 : vec4<f32>,
  x_MaskMapRemapOffset2 : vec4<f32>,
  x_MaskMapRemapOffset3 : vec4<f32>,
  x_MaskMapRemapScale0 : vec4<f32>,
  x_MaskMapRemapScale1 : vec4<f32>,
  x_MaskMapRemapScale2 : vec4<f32>,
  x_MaskMapRemapScale3 : vec4<f32>,
  x_Control_ST : vec4<f32>,
  x_Control_TexelSize : vec4<f32>,
  x_DiffuseHasAlpha0 : f32,
  x_DiffuseHasAlpha1 : f32,
  x_DiffuseHasAlpha2 : f32,
  x_DiffuseHasAlpha3 : f32,
  x_LayerHasMask0 : f32,
  x_LayerHasMask1 : f32,
  x_LayerHasMask2 : f32,
  x_LayerHasMask3 : f32,
  x_Splat0_ST : vec4<f32>,
  x_Splat1_ST : vec4<f32>,
  x_Splat2_ST : vec4<f32>,
  x_Splat3_ST : vec4<f32>,
  x_HeightTransition : f32,
  x_NumLayersCount : f32,
}

struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  unity_OrthoParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
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

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(2) var<uniform> x_20 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_41 : x_Terrain;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(7) var<uniform> x_189 : VGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_346 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat12 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlatb12 : bool;
  var x_220 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat13 : f32;
  var x_281 : f32;
  var x_294 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = in_TEXCOORD0;
  let x_25 : vec4<f32> = x_20.unity_LightmapST;
  let x_29 : vec4<f32> = x_20.unity_LightmapST;
  let x_31 : vec2<f32> = ((x_13 * vec2<f32>(x_25.x, x_25.y)) + vec2<f32>(x_29.z, x_29.w));
  let x_32 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_32.x, x_32.y, x_31.x, x_31.y);
  let x_34 : vec2<f32> = in_TEXCOORD0;
  let x_35 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_34.x, x_34.y, x_35.z, x_35.w);
  let x_38 : vec2<f32> = in_TEXCOORD0;
  let x_44 : vec4<f32> = x_41.x_Splat0_ST;
  let x_48 : vec4<f32> = x_41.x_Splat0_ST;
  let x_50 : vec2<f32> = ((x_38 * vec2<f32>(x_44.x, x_44.y)) + vec2<f32>(x_48.z, x_48.w));
  let x_51 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_50.x, x_50.y, x_51.z, x_51.w);
  let x_53 : vec2<f32> = in_TEXCOORD0;
  let x_56 : vec4<f32> = x_41.x_Splat1_ST;
  let x_60 : vec4<f32> = x_41.x_Splat1_ST;
  let x_62 : vec2<f32> = ((x_53 * vec2<f32>(x_56.x, x_56.y)) + vec2<f32>(x_60.z, x_60.w));
  let x_63 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_63.x, x_63.y, x_62.x, x_62.y);
  let x_66 : vec2<f32> = in_TEXCOORD0;
  let x_69 : vec4<f32> = x_41.x_Splat2_ST;
  let x_73 : vec4<f32> = x_41.x_Splat2_ST;
  let x_75 : vec2<f32> = ((x_66 * vec2<f32>(x_69.x, x_69.y)) + vec2<f32>(x_73.z, x_73.w));
  let x_76 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_75.x, x_75.y, x_76.z, x_76.w);
  let x_78 : vec2<f32> = in_TEXCOORD0;
  let x_81 : vec4<f32> = x_41.x_Splat3_ST;
  let x_85 : vec4<f32> = x_41.x_Splat3_ST;
  let x_87 : vec2<f32> = ((x_78 * vec2<f32>(x_81.x, x_81.y)) + vec2<f32>(x_85.z, x_85.w));
  let x_88 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_88.x, x_88.y, x_87.x, x_87.y);
  let x_95 : vec3<f32> = in_NORMAL0;
  let x_100 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_102 : vec3<f32> = (vec3<f32>(x_95.y, x_95.y, x_95.y) * vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_102.x, x_102.y, x_102.z, x_103.w);
  let x_106 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_108 : vec3<f32> = in_NORMAL0;
  let x_111 : vec4<f32> = u_xlat0;
  let x_113 : vec3<f32> = ((vec3<f32>(x_106.x, x_106.y, x_106.z) * vec3<f32>(x_108.x, x_108.x, x_108.x)) + vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_118 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_120 : vec3<f32> = in_NORMAL0;
  let x_123 : vec4<f32> = u_xlat0;
  let x_125 : vec3<f32> = ((vec3<f32>(x_118.x, x_118.y, x_118.z) * vec3<f32>(x_120.z, x_120.z, x_120.z)) + vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_126 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_125.x, x_125.y, x_125.z, x_126.w);
  let x_130 : vec4<f32> = u_xlat0;
  let x_132 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_130.x, x_130.y, x_130.z), vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_135 : f32 = u_xlat12;
  u_xlat12 = max(x_135, 1.17549435e-37f);
  let x_138 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_138);
  let x_140 : f32 = u_xlat12;
  let x_142 : vec4<f32> = u_xlat0;
  let x_144 : vec3<f32> = (vec3<f32>(x_140, x_140, x_140) * vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_145 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
  let x_148 : vec4<f32> = u_xlat0;
  let x_149 : vec3<f32> = vec3<f32>(x_148.x, x_148.y, x_148.z);
  let x_150 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_156 : vec4<f32> = in_POSITION0;
  let x_159 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat1 = (vec3<f32>(x_156.y, x_156.y, x_156.y) * vec3<f32>(x_159.x, x_159.y, x_159.z));
  let x_163 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_165 : vec4<f32> = in_POSITION0;
  let x_168 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_163.x, x_163.y, x_163.z) * vec3<f32>(x_165.x, x_165.x, x_165.x)) + x_168);
  let x_171 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_173 : vec4<f32> = in_POSITION0;
  let x_176 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_171.x, x_171.y, x_171.z) * vec3<f32>(x_173.z, x_173.z, x_173.z)) + x_176);
  let x_178 : vec3<f32> = u_xlat1;
  let x_181 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  u_xlat1 = (x_178 + vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_185 : vec3<f32> = u_xlat1;
  let x_192 : vec3<f32> = x_189.x_WorldSpaceCameraPos;
  let x_193 : vec3<f32> = (-(x_185) + x_192);
  let x_194 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec4<f32> = u_xlat2;
  let x_198 : vec4<f32> = u_xlat2;
  u_xlat12 = dot(vec3<f32>(x_196.x, x_196.y, x_196.z), vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_201 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_201);
  let x_203 : f32 = u_xlat12;
  let x_205 : vec4<f32> = u_xlat2;
  let x_207 : vec3<f32> = (vec3<f32>(x_203, x_203, x_203) * vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_208 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_216 : f32 = x_189.unity_OrthoParams.w;
  u_xlatb12 = (x_216 == 0.0f);
  let x_219 : bool = u_xlatb12;
  if (x_219) {
    let x_225 : f32 = u_xlat2.x;
    x_220 = x_225;
  } else {
    let x_228 : f32 = x_189.unity_MatrixV[0i].z;
    x_220 = x_228;
  }
  let x_229 : f32 = x_220;
  vs_TEXCOORD3.w = x_229;
  let x_232 : vec3<f32> = in_NORMAL0;
  let x_236 : vec2<f32> = (vec2<f32>(x_232.y, x_232.z) * vec2<f32>(1.0f, 0.0f));
  let x_237 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_236.x, x_237.y, x_237.z, x_236.y);
  let x_239 : vec3<f32> = in_NORMAL0;
  let x_243 : vec4<f32> = u_xlat2;
  let x_246 : vec2<f32> = ((vec2<f32>(x_239.z, x_239.x) * vec2<f32>(0.0f, 1.0f)) + -(vec2<f32>(x_243.x, x_243.w)));
  let x_247 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_246.x, x_247.y, x_247.z, x_246.y);
  let x_250 : vec4<f32> = u_xlat2;
  let x_253 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_250.w, x_250.w, x_250.w) * vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_257 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_259 : vec4<f32> = u_xlat2;
  let x_262 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_257.x, x_257.y, x_257.z) * vec3<f32>(x_259.x, x_259.x, x_259.x)) + x_262);
  let x_265 : vec3<f32> = u_xlat3;
  let x_266 : vec3<f32> = u_xlat3;
  u_xlat13 = dot(x_265, x_266);
  let x_268 : f32 = u_xlat13;
  u_xlat13 = max(x_268, 1.17549435e-37f);
  let x_270 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_270);
  let x_272 : f32 = u_xlat13;
  let x_274 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_272, x_272, x_272) * x_274);
  let x_277 : vec3<f32> = u_xlat3;
  let x_278 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_280 : bool = u_xlatb12;
  if (x_280) {
    let x_286 : f32 = u_xlat2.y;
    x_281 = x_286;
  } else {
    let x_289 : f32 = x_189.unity_MatrixV[1i].z;
    x_281 = x_289;
  }
  let x_290 : f32 = x_281;
  vs_TEXCOORD4.w = x_290;
  let x_293 : bool = u_xlatb12;
  if (x_293) {
    let x_298 : f32 = u_xlat2.z;
    x_294 = x_298;
  } else {
    let x_301 : f32 = x_189.unity_MatrixV[2i].z;
    x_294 = x_301;
  }
  let x_302 : f32 = x_294;
  vs_TEXCOORD5.w = x_302;
  let x_304 : vec4<f32> = u_xlat0;
  let x_306 : vec3<f32> = u_xlat3;
  let x_308 : vec3<f32> = (vec3<f32>(x_304.z, x_304.x, x_304.y) * vec3<f32>(x_306.y, x_306.z, x_306.x));
  let x_309 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec4<f32> = u_xlat0;
  let x_313 : vec3<f32> = u_xlat3;
  let x_316 : vec4<f32> = u_xlat2;
  let x_319 : vec3<f32> = ((vec3<f32>(x_311.y, x_311.z, x_311.x) * vec3<f32>(x_313.z, x_313.x, x_313.y)) + -(vec3<f32>(x_316.x, x_316.y, x_316.z)));
  let x_320 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_323 : f32 = x_20.unity_WorldTransformParams.w;
  u_xlatb12 = (x_323 >= 0.0f);
  let x_325 : bool = u_xlatb12;
  u_xlat12 = select(-1.0f, 1.0f, x_325);
  let x_328 : f32 = u_xlat12;
  let x_330 : vec4<f32> = u_xlat0;
  let x_332 : vec3<f32> = (vec3<f32>(x_328, x_328, x_328) * vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  vs_TEXCOORD6 = 0.0f;
  let x_339 : vec3<f32> = u_xlat1;
  vs_TEXCOORD7 = x_339;
  let x_340 : vec3<f32> = u_xlat1;
  let x_348 : vec4<f32> = x_346.x_MainLightWorldToShadow[0i][1i];
  let x_350 : vec3<f32> = (vec3<f32>(x_340.y, x_340.y, x_340.y) * vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_354 : vec4<f32> = x_346.x_MainLightWorldToShadow[0i][0i];
  let x_356 : vec3<f32> = u_xlat1;
  let x_359 : vec4<f32> = u_xlat0;
  let x_361 : vec3<f32> = ((vec3<f32>(x_354.x, x_354.y, x_354.z) * vec3<f32>(x_356.x, x_356.x, x_356.x)) + vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_362 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_365 : vec4<f32> = x_346.x_MainLightWorldToShadow[0i][2i];
  let x_367 : vec3<f32> = u_xlat1;
  let x_370 : vec4<f32> = u_xlat0;
  let x_372 : vec3<f32> = ((vec3<f32>(x_365.x, x_365.y, x_365.z) * vec3<f32>(x_367.z, x_367.z, x_367.z)) + vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_376 : vec4<f32> = u_xlat0;
  let x_379 : vec4<f32> = x_346.x_MainLightWorldToShadow[0i][3i];
  let x_381 : vec3<f32> = (vec3<f32>(x_376.x, x_376.y, x_376.z) + vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_382 : vec4<f32> = vs_TEXCOORD8;
  vs_TEXCOORD8 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  vs_TEXCOORD8.w = 0.0f;
  let x_385 : vec3<f32> = u_xlat1;
  let x_388 : vec4<f32> = x_189.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_385.y, x_385.y, x_385.y, x_385.y) * x_388);
  let x_391 : vec4<f32> = x_189.unity_MatrixVP[0i];
  let x_392 : vec3<f32> = u_xlat1;
  let x_395 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_391 * vec4<f32>(x_392.x, x_392.x, x_392.x, x_392.x)) + x_395);
  let x_398 : vec4<f32> = x_189.unity_MatrixVP[2i];
  let x_399 : vec3<f32> = u_xlat1;
  let x_402 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_398 * vec4<f32>(x_399.z, x_399.z, x_399.z, x_399.z)) + x_402);
  let x_408 : vec4<f32> = u_xlat0;
  let x_410 : vec4<f32> = x_189.unity_MatrixVP[3i];
  gl_Position = (x_408 + x_410);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec4<f32>,
  @location(6)
  vs_TEXCOORD7_1 : vec3<f32>,
  @location(7)
  vs_TEXCOORD8_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(2) in_TEXCOORD0_param : vec2<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5, vs_TEXCOORD7, vs_TEXCOORD8, gl_Position);
}

