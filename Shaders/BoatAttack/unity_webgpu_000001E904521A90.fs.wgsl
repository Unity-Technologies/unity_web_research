struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ScreenParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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

struct UnityPerMaterial {
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  Color_C30C7CA3 : vec4<f32>,
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
}

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_55 : PGlobals;

@group(1) @binding(1) var<uniform> x_109 : UnityPerDraw;

@group(0) @binding(0) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(1) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP1 : vec4<f32>;

var<private> SV_TARGET0 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_375 : UnityPerMaterial;

var<private> gl_FragCoord : vec4<f32>;

fn int_bitfieldInsert_i1_i1_i1_i1_(base : ptr<function, i32>, insert : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var mask : u32;
  let x_19 : i32 = *(bits);
  let x_23 : i32 = *(offset_1);
  mask = (~((4294967295u << bitcast<u32>(x_19))) << bitcast<u32>(x_23));
  let x_26 : i32 = *(base);
  let x_28 : u32 = mask;
  let x_31 : i32 = *(insert);
  let x_33 : i32 = *(offset_1);
  let x_36 : u32 = mask;
  return bitcast<i32>(((bitcast<u32>(x_26) & ~(x_28)) | ((bitcast<u32>(x_31) << bitcast<u32>(x_33)) & x_36)));
}

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlatb6 : bool;
  var u_xlat2 : f32;
  var x_91 : f32;
  var u_xlat1 : vec4<f32>;
  var x_118 : f32;
  var x_131 : f32;
  var u_xlatu0 : vec3<u32>;
  var u_xlatu4 : u32;
  var u_xlatu6 : u32;
  var u_xlati4 : i32;
  var u_xlati2 : i32;
  var u_xlatu2 : u32;
  var u_xlati0 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlatb4 : bool;
  var u_xlat4 : f32;
  var x_310 : f32;
  var x_322 : f32;
  var u_xlatb0 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_49 : vec3<f32> = vs_INTERP0;
  let x_59 : vec3<f32> = x_55.x_WorldSpaceCameraPos;
  let x_60 : vec3<f32> = (-(x_49) + x_59);
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_60.x, x_60.y, x_60.z, x_61.w);
  let x_65 : vec4<f32> = u_xlat0;
  let x_67 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_65.x, x_65.y, x_65.z), vec3<f32>(x_67.x, x_67.y, x_67.z));
  let x_70 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_70);
  let x_72 : f32 = u_xlat6;
  let x_74 : vec4<f32> = u_xlat0;
  let x_76 : vec3<f32> = (vec3<f32>(x_72, x_72, x_72) * vec3<f32>(x_74.x, x_74.y, x_74.z));
  let x_77 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_76.x, x_76.y, x_76.z, x_77.w);
  let x_86 : f32 = x_55.unity_OrthoParams.w;
  u_xlatb6 = (x_86 == 0.0f);
  let x_90 : bool = u_xlatb6;
  if (x_90) {
    let x_96 : f32 = u_xlat0.y;
    x_91 = x_96;
  } else {
    let x_101 : f32 = x_55.unity_MatrixV[1i].z;
    x_91 = x_101;
  }
  let x_102 : f32 = x_91;
  u_xlat2 = x_102;
  let x_104 : f32 = u_xlat2;
  let x_112 : vec4<f32> = x_109.unity_WorldToObject[1i];
  let x_114 : vec3<f32> = (vec3<f32>(x_104, x_104, x_104) * vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_115 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_117 : bool = u_xlatb6;
  if (x_117) {
    let x_123 : f32 = u_xlat0.x;
    x_118 = x_123;
  } else {
    let x_127 : f32 = x_55.unity_MatrixV[0i].z;
    x_118 = x_127;
  }
  let x_128 : f32 = x_118;
  u_xlat0.x = x_128;
  let x_130 : bool = u_xlatb6;
  if (x_130) {
    let x_135 : f32 = u_xlat0.z;
    x_131 = x_135;
  } else {
    let x_139 : f32 = x_55.unity_MatrixV[2i].z;
    x_131 = x_139;
  }
  let x_140 : f32 = x_131;
  u_xlat2 = x_140;
  let x_142 : vec4<f32> = x_109.unity_WorldToObject[0i];
  let x_144 : vec4<f32> = u_xlat0;
  let x_147 : vec4<f32> = u_xlat1;
  let x_149 : vec3<f32> = ((vec3<f32>(x_142.x, x_142.y, x_142.z) * vec3<f32>(x_144.x, x_144.x, x_144.x)) + vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_150 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_149.x, x_150.y, x_149.y, x_149.z);
  let x_153 : vec4<f32> = x_109.unity_WorldToObject[2i];
  let x_155 : f32 = u_xlat2;
  let x_158 : vec4<f32> = u_xlat0;
  let x_160 : vec3<f32> = ((vec3<f32>(x_153.x, x_153.y, x_153.z) * vec3<f32>(x_155, x_155, x_155)) + vec3<f32>(x_158.x, x_158.z, x_158.w));
  let x_161 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_163 : vec4<f32> = u_xlat0;
  let x_165 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_163.x, x_163.y, x_163.z), vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_168);
  let x_170 : f32 = u_xlat6;
  let x_172 : vec4<f32> = u_xlat0;
  let x_174 : vec3<f32> = (vec3<f32>(x_170, x_170, x_170) * vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_175 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_177 : vec4<f32> = u_xlat0;
  let x_181 : vec4<f32> = x_55.x_ScreenParams;
  let x_183 : vec3<f32> = (abs(vec3<f32>(x_177.x, x_177.y, x_177.z)) * vec3<f32>(x_181.x, x_181.y, x_181.x));
  let x_184 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_189 : vec4<f32> = u_xlat0;
  u_xlatu0 = vec3<u32>(vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_194 : u32 = u_xlatu0.z;
  u_xlatu4 = (x_194 * 1025u);
  let x_198 : u32 = u_xlatu4;
  u_xlatu6 = (x_198 >> 6u);
  let x_202 : u32 = u_xlatu6;
  let x_203 : u32 = u_xlatu4;
  u_xlati4 = bitcast<i32>((x_202 ^ x_203));
  let x_206 : i32 = u_xlati4;
  u_xlatu4 = (bitcast<u32>(x_206) * 9u);
  let x_210 : u32 = u_xlatu4;
  u_xlatu6 = (x_210 >> 11u);
  let x_213 : u32 = u_xlatu6;
  let x_214 : u32 = u_xlatu4;
  u_xlati4 = bitcast<i32>((x_213 ^ x_214));
  let x_217 : i32 = u_xlati4;
  u_xlati4 = (x_217 * 32769i);
  let x_221 : i32 = u_xlati4;
  let x_224 : u32 = u_xlatu0.y;
  u_xlati2 = bitcast<i32>((bitcast<u32>(x_221) ^ x_224));
  let x_228 : i32 = u_xlati2;
  u_xlatu2 = (bitcast<u32>(x_228) * 1025u);
  let x_231 : u32 = u_xlatu2;
  u_xlatu4 = (x_231 >> 6u);
  let x_233 : u32 = u_xlatu4;
  let x_234 : u32 = u_xlatu2;
  u_xlati2 = bitcast<i32>((x_233 ^ x_234));
  let x_237 : i32 = u_xlati2;
  u_xlatu2 = (bitcast<u32>(x_237) * 9u);
  let x_240 : u32 = u_xlatu2;
  u_xlatu4 = (x_240 >> 11u);
  let x_242 : u32 = u_xlatu4;
  let x_243 : u32 = u_xlatu2;
  u_xlati2 = bitcast<i32>((x_242 ^ x_243));
  let x_246 : i32 = u_xlati2;
  u_xlati2 = (x_246 * 32769i);
  let x_249 : i32 = u_xlati2;
  let x_252 : u32 = u_xlatu0.x;
  u_xlati0 = bitcast<i32>((bitcast<u32>(x_249) ^ x_252));
  let x_255 : i32 = u_xlati0;
  u_xlatu0.x = (bitcast<u32>(x_255) * 1025u);
  let x_260 : u32 = u_xlatu0.x;
  u_xlatu2 = (x_260 >> 6u);
  let x_262 : u32 = u_xlatu2;
  let x_264 : u32 = u_xlatu0.x;
  u_xlati0 = bitcast<i32>((x_262 ^ x_264));
  let x_267 : i32 = u_xlati0;
  u_xlatu0.x = (bitcast<u32>(x_267) * 9u);
  let x_272 : u32 = u_xlatu0.x;
  u_xlatu2 = (x_272 >> 11u);
  let x_274 : u32 = u_xlatu2;
  let x_276 : u32 = u_xlatu0.x;
  u_xlati0 = bitcast<i32>((x_274 ^ x_276));
  let x_279 : i32 = u_xlati0;
  u_xlati0 = (x_279 * 32769i);
  param = 1065353216i;
  let x_285 : i32 = u_xlati0;
  param_1 = x_285;
  param_2 = 0i;
  param_3 = 23i;
  let x_288 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat0.x = bitcast<f32>(x_288);
  let x_292 : f32 = u_xlat0.x;
  u_xlat0.x = (x_292 + -1.0f);
  let x_297 : f32 = u_xlat0.x;
  u_xlat2 = (-(x_297) + 1.0f);
  let x_303 : f32 = x_109.unity_LODFade.x;
  u_xlatb4 = (x_303 < 0.0f);
  let x_306 : f32 = x_109.unity_LODFade.x;
  u_xlat6 = (x_306 + 1.0f);
  let x_309 : bool = u_xlatb4;
  if (x_309) {
    let x_313 : f32 = u_xlat6;
    x_310 = x_313;
  } else {
    let x_316 : f32 = x_109.unity_LODFade.x;
    x_310 = x_316;
  }
  let x_317 : f32 = x_310;
  u_xlat4 = x_317;
  let x_319 : f32 = u_xlat4;
  u_xlatb6 = (0.5f >= x_319);
  let x_321 : bool = u_xlatb6;
  if (x_321) {
    let x_326 : f32 = u_xlat0.x;
    x_322 = x_326;
  } else {
    let x_328 : f32 = u_xlat2;
    x_322 = x_328;
  }
  let x_329 : f32 = x_322;
  u_xlat0.x = x_329;
  let x_331 : f32 = u_xlat4;
  let x_335 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_331 * 2.0f) + -(x_335));
  let x_351 : vec4<f32> = vs_INTERP1;
  let x_354 : f32 = x_55.x_GlobalMipBias.x;
  let x_355 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_351.x, x_351.y), x_354);
  u_xlat1 = x_355;
  let x_357 : f32 = u_xlat1.w;
  let x_359 : f32 = u_xlat0.x;
  u_xlat2 = ((x_357 * x_359) + -0.400000006f);
  let x_364 : f32 = u_xlat0.x;
  let x_366 : f32 = u_xlat1.w;
  u_xlat0.x = (x_364 * x_366);
  let x_371 : vec4<f32> = u_xlat1;
  let x_377 : vec4<f32> = x_375.Color_C30C7CA3;
  let x_379 : vec3<f32> = (vec3<f32>(x_371.x, x_371.y, x_371.z) * vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_380 : vec4<f32> = SV_TARGET0;
  SV_TARGET0 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_383 : f32 = u_xlat0.x;
  SV_TARGET0.w = x_383;
  let x_387 : f32 = u_xlat2;
  u_xlatb0 = (x_387 < 0.0f);
  let x_389 : bool = u_xlatb0;
  if (((select(0i, 1i, x_389) * -1i) != 0i)) {
    discard;
  }
  return;
}

struct main_out {
  @location(0)
  SV_TARGET0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_INTERP0_param : vec3<f32>, @location(1) vs_INTERP1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP1 = vs_INTERP1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_TARGET0);
}

