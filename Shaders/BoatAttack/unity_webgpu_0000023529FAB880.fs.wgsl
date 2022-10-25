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

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_55 : PGlobals;

@group(1) @binding(1) var<uniform> x_110 : UnityPerDraw;

@group(0) @binding(0) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(1) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP2 : vec4<f32>;

var<private> SV_TARGET0 : vec4<f32>;

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
  var u_xlat1 : vec3<f32>;
  var x_117 : f32;
  var x_130 : f32;
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
  var x_308 : f32;
  var x_320 : f32;
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
  let x_105 : f32 = u_xlat2;
  let x_113 : vec4<f32> = x_110.unity_WorldToObject[1i];
  u_xlat1 = (vec3<f32>(x_105, x_105, x_105) * vec3<f32>(x_113.x, x_113.y, x_113.z));
  let x_116 : bool = u_xlatb6;
  if (x_116) {
    let x_122 : f32 = u_xlat0.x;
    x_117 = x_122;
  } else {
    let x_126 : f32 = x_55.unity_MatrixV[0i].z;
    x_117 = x_126;
  }
  let x_127 : f32 = x_117;
  u_xlat0.x = x_127;
  let x_129 : bool = u_xlatb6;
  if (x_129) {
    let x_134 : f32 = u_xlat0.z;
    x_130 = x_134;
  } else {
    let x_138 : f32 = x_55.unity_MatrixV[2i].z;
    x_130 = x_138;
  }
  let x_139 : f32 = x_130;
  u_xlat2 = x_139;
  let x_141 : vec4<f32> = x_110.unity_WorldToObject[0i];
  let x_143 : vec4<f32> = u_xlat0;
  let x_146 : vec3<f32> = u_xlat1;
  let x_147 : vec3<f32> = ((vec3<f32>(x_141.x, x_141.y, x_141.z) * vec3<f32>(x_143.x, x_143.x, x_143.x)) + x_146);
  let x_148 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_147.x, x_148.y, x_147.y, x_147.z);
  let x_151 : vec4<f32> = x_110.unity_WorldToObject[2i];
  let x_153 : f32 = u_xlat2;
  let x_156 : vec4<f32> = u_xlat0;
  let x_158 : vec3<f32> = ((vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(x_153, x_153, x_153)) + vec3<f32>(x_156.x, x_156.z, x_156.w));
  let x_159 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_161 : vec4<f32> = u_xlat0;
  let x_163 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_161.x, x_161.y, x_161.z), vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_166);
  let x_168 : f32 = u_xlat6;
  let x_170 : vec4<f32> = u_xlat0;
  let x_172 : vec3<f32> = (vec3<f32>(x_168, x_168, x_168) * vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_175 : vec4<f32> = u_xlat0;
  let x_179 : vec4<f32> = x_55.x_ScreenParams;
  let x_181 : vec3<f32> = (abs(vec3<f32>(x_175.x, x_175.y, x_175.z)) * vec3<f32>(x_179.x, x_179.y, x_179.x));
  let x_182 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_187 : vec4<f32> = u_xlat0;
  u_xlatu0 = vec3<u32>(vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_192 : u32 = u_xlatu0.z;
  u_xlatu4 = (x_192 * 1025u);
  let x_196 : u32 = u_xlatu4;
  u_xlatu6 = (x_196 >> 6u);
  let x_200 : u32 = u_xlatu6;
  let x_201 : u32 = u_xlatu4;
  u_xlati4 = bitcast<i32>((x_200 ^ x_201));
  let x_204 : i32 = u_xlati4;
  u_xlatu4 = (bitcast<u32>(x_204) * 9u);
  let x_208 : u32 = u_xlatu4;
  u_xlatu6 = (x_208 >> 11u);
  let x_211 : u32 = u_xlatu6;
  let x_212 : u32 = u_xlatu4;
  u_xlati4 = bitcast<i32>((x_211 ^ x_212));
  let x_215 : i32 = u_xlati4;
  u_xlati4 = (x_215 * 32769i);
  let x_219 : i32 = u_xlati4;
  let x_222 : u32 = u_xlatu0.y;
  u_xlati2 = bitcast<i32>((bitcast<u32>(x_219) ^ x_222));
  let x_226 : i32 = u_xlati2;
  u_xlatu2 = (bitcast<u32>(x_226) * 1025u);
  let x_229 : u32 = u_xlatu2;
  u_xlatu4 = (x_229 >> 6u);
  let x_231 : u32 = u_xlatu4;
  let x_232 : u32 = u_xlatu2;
  u_xlati2 = bitcast<i32>((x_231 ^ x_232));
  let x_235 : i32 = u_xlati2;
  u_xlatu2 = (bitcast<u32>(x_235) * 9u);
  let x_238 : u32 = u_xlatu2;
  u_xlatu4 = (x_238 >> 11u);
  let x_240 : u32 = u_xlatu4;
  let x_241 : u32 = u_xlatu2;
  u_xlati2 = bitcast<i32>((x_240 ^ x_241));
  let x_244 : i32 = u_xlati2;
  u_xlati2 = (x_244 * 32769i);
  let x_247 : i32 = u_xlati2;
  let x_250 : u32 = u_xlatu0.x;
  u_xlati0 = bitcast<i32>((bitcast<u32>(x_247) ^ x_250));
  let x_253 : i32 = u_xlati0;
  u_xlatu0.x = (bitcast<u32>(x_253) * 1025u);
  let x_258 : u32 = u_xlatu0.x;
  u_xlatu2 = (x_258 >> 6u);
  let x_260 : u32 = u_xlatu2;
  let x_262 : u32 = u_xlatu0.x;
  u_xlati0 = bitcast<i32>((x_260 ^ x_262));
  let x_265 : i32 = u_xlati0;
  u_xlatu0.x = (bitcast<u32>(x_265) * 9u);
  let x_270 : u32 = u_xlatu0.x;
  u_xlatu2 = (x_270 >> 11u);
  let x_272 : u32 = u_xlatu2;
  let x_274 : u32 = u_xlatu0.x;
  u_xlati0 = bitcast<i32>((x_272 ^ x_274));
  let x_277 : i32 = u_xlati0;
  u_xlati0 = (x_277 * 32769i);
  param = 1065353216i;
  let x_283 : i32 = u_xlati0;
  param_1 = x_283;
  param_2 = 0i;
  param_3 = 23i;
  let x_286 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat0.x = bitcast<f32>(x_286);
  let x_290 : f32 = u_xlat0.x;
  u_xlat0.x = (x_290 + -1.0f);
  let x_295 : f32 = u_xlat0.x;
  u_xlat2 = (-(x_295) + 1.0f);
  let x_301 : f32 = x_110.unity_LODFade.x;
  u_xlatb4 = (x_301 < 0.0f);
  let x_304 : f32 = x_110.unity_LODFade.x;
  u_xlat6 = (x_304 + 1.0f);
  let x_307 : bool = u_xlatb4;
  if (x_307) {
    let x_311 : f32 = u_xlat6;
    x_308 = x_311;
  } else {
    let x_314 : f32 = x_110.unity_LODFade.x;
    x_308 = x_314;
  }
  let x_315 : f32 = x_308;
  u_xlat4 = x_315;
  let x_317 : f32 = u_xlat4;
  u_xlatb6 = (0.5f >= x_317);
  let x_319 : bool = u_xlatb6;
  if (x_319) {
    let x_324 : f32 = u_xlat0.x;
    x_320 = x_324;
  } else {
    let x_326 : f32 = u_xlat2;
    x_320 = x_326;
  }
  let x_327 : f32 = x_320;
  u_xlat0.x = x_327;
  let x_329 : f32 = u_xlat4;
  let x_333 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_329 * 2.0f) + -(x_333));
  let x_349 : vec4<f32> = vs_INTERP2;
  let x_352 : f32 = x_55.x_GlobalMipBias.x;
  let x_353 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_349.x, x_349.y), x_352);
  u_xlat2 = x_353.w;
  let x_355 : f32 = u_xlat2;
  let x_357 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_355 * x_357) + -0.400000006f);
  let x_364 : f32 = u_xlat0.x;
  u_xlatb0 = (x_364 < 0.0f);
  let x_366 : bool = u_xlatb0;
  if (((select(0i, 1i, x_366) * -1i) != 0i)) {
    discard;
  }
  SV_TARGET0 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @location(0)
  SV_TARGET0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_INTERP0_param : vec3<f32>, @location(1) vs_INTERP2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP2 = vs_INTERP2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_TARGET0);
}

