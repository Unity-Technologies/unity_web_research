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

var<private> gl_FragCoord : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_70 : PGlobals;

@group(1) @binding(1) var<uniform> x_124 : UnityPerDraw;

@group(0) @binding(0) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(1) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP1 : vec4<f32>;

var<private> SV_TARGET0 : vec4<f32>;

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
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlatb6 : bool;
  var u_xlat2 : f32;
  var x_105 : f32;
  var u_xlat1 : vec3<f32>;
  var x_131 : f32;
  var x_144 : f32;
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
  var x_321 : f32;
  var x_333 : f32;
  var u_xlatb0 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_49 : vec4<f32> = gl_FragCoord;
  let x_50 : vec3<f32> = vec3<f32>(x_49.x, x_49.y, x_49.z);
  let x_55 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_50.x, x_50.y, x_50.z, (1.0f / x_55));
  let x_64 : vec3<f32> = vs_INTERP0;
  let x_74 : vec3<f32> = x_70.x_WorldSpaceCameraPos;
  let x_75 : vec3<f32> = (-(x_64) + x_74);
  let x_76 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_75.x, x_75.y, x_75.z, x_76.w);
  let x_80 : vec4<f32> = u_xlat0;
  let x_82 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_80.x, x_80.y, x_80.z), vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_85 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_85);
  let x_87 : f32 = u_xlat6;
  let x_89 : vec4<f32> = u_xlat0;
  let x_91 : vec3<f32> = (vec3<f32>(x_87, x_87, x_87) * vec3<f32>(x_89.x, x_89.y, x_89.z));
  let x_92 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
  let x_100 : f32 = x_70.unity_OrthoParams.w;
  u_xlatb6 = (x_100 == 0.0f);
  let x_104 : bool = u_xlatb6;
  if (x_104) {
    let x_110 : f32 = u_xlat0.y;
    x_105 = x_110;
  } else {
    let x_115 : f32 = x_70.unity_MatrixV[1i].z;
    x_105 = x_115;
  }
  let x_116 : f32 = x_105;
  u_xlat2 = x_116;
  let x_119 : f32 = u_xlat2;
  let x_127 : vec4<f32> = x_124.unity_WorldToObject[1i];
  u_xlat1 = (vec3<f32>(x_119, x_119, x_119) * vec3<f32>(x_127.x, x_127.y, x_127.z));
  let x_130 : bool = u_xlatb6;
  if (x_130) {
    let x_136 : f32 = u_xlat0.x;
    x_131 = x_136;
  } else {
    let x_140 : f32 = x_70.unity_MatrixV[0i].z;
    x_131 = x_140;
  }
  let x_141 : f32 = x_131;
  u_xlat0.x = x_141;
  let x_143 : bool = u_xlatb6;
  if (x_143) {
    let x_148 : f32 = u_xlat0.z;
    x_144 = x_148;
  } else {
    let x_152 : f32 = x_70.unity_MatrixV[2i].z;
    x_144 = x_152;
  }
  let x_153 : f32 = x_144;
  u_xlat2 = x_153;
  let x_155 : vec4<f32> = x_124.unity_WorldToObject[0i];
  let x_157 : vec4<f32> = u_xlat0;
  let x_160 : vec3<f32> = u_xlat1;
  let x_161 : vec3<f32> = ((vec3<f32>(x_155.x, x_155.y, x_155.z) * vec3<f32>(x_157.x, x_157.x, x_157.x)) + x_160);
  let x_162 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_161.x, x_162.y, x_161.y, x_161.z);
  let x_165 : vec4<f32> = x_124.unity_WorldToObject[2i];
  let x_167 : f32 = u_xlat2;
  let x_170 : vec4<f32> = u_xlat0;
  let x_172 : vec3<f32> = ((vec3<f32>(x_165.x, x_165.y, x_165.z) * vec3<f32>(x_167, x_167, x_167)) + vec3<f32>(x_170.x, x_170.z, x_170.w));
  let x_173 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_175 : vec4<f32> = u_xlat0;
  let x_177 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_175.x, x_175.y, x_175.z), vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_180);
  let x_182 : f32 = u_xlat6;
  let x_184 : vec4<f32> = u_xlat0;
  let x_186 : vec3<f32> = (vec3<f32>(x_182, x_182, x_182) * vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_187 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_189 : vec4<f32> = u_xlat0;
  let x_193 : vec4<f32> = x_70.x_ScreenParams;
  let x_195 : vec3<f32> = (abs(vec3<f32>(x_189.x, x_189.y, x_189.z)) * vec3<f32>(x_193.x, x_193.y, x_193.x));
  let x_196 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_201 : vec4<f32> = u_xlat0;
  u_xlatu0 = vec3<u32>(vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_206 : u32 = u_xlatu0.z;
  u_xlatu4 = (x_206 * 1025u);
  let x_210 : u32 = u_xlatu4;
  u_xlatu6 = (x_210 >> 6u);
  let x_214 : u32 = u_xlatu6;
  let x_215 : u32 = u_xlatu4;
  u_xlati4 = bitcast<i32>((x_214 ^ x_215));
  let x_218 : i32 = u_xlati4;
  u_xlatu4 = (bitcast<u32>(x_218) * 9u);
  let x_222 : u32 = u_xlatu4;
  u_xlatu6 = (x_222 >> 11u);
  let x_225 : u32 = u_xlatu6;
  let x_226 : u32 = u_xlatu4;
  u_xlati4 = bitcast<i32>((x_225 ^ x_226));
  let x_229 : i32 = u_xlati4;
  u_xlati4 = (x_229 * 32769i);
  let x_233 : i32 = u_xlati4;
  let x_236 : u32 = u_xlatu0.y;
  u_xlati2 = bitcast<i32>((bitcast<u32>(x_233) ^ x_236));
  let x_240 : i32 = u_xlati2;
  u_xlatu2 = (bitcast<u32>(x_240) * 1025u);
  let x_243 : u32 = u_xlatu2;
  u_xlatu4 = (x_243 >> 6u);
  let x_245 : u32 = u_xlatu4;
  let x_246 : u32 = u_xlatu2;
  u_xlati2 = bitcast<i32>((x_245 ^ x_246));
  let x_249 : i32 = u_xlati2;
  u_xlatu2 = (bitcast<u32>(x_249) * 9u);
  let x_252 : u32 = u_xlatu2;
  u_xlatu4 = (x_252 >> 11u);
  let x_254 : u32 = u_xlatu4;
  let x_255 : u32 = u_xlatu2;
  u_xlati2 = bitcast<i32>((x_254 ^ x_255));
  let x_258 : i32 = u_xlati2;
  u_xlati2 = (x_258 * 32769i);
  let x_261 : i32 = u_xlati2;
  let x_264 : u32 = u_xlatu0.x;
  u_xlati0 = bitcast<i32>((bitcast<u32>(x_261) ^ x_264));
  let x_267 : i32 = u_xlati0;
  u_xlatu0.x = (bitcast<u32>(x_267) * 1025u);
  let x_272 : u32 = u_xlatu0.x;
  u_xlatu2 = (x_272 >> 6u);
  let x_274 : u32 = u_xlatu2;
  let x_276 : u32 = u_xlatu0.x;
  u_xlati0 = bitcast<i32>((x_274 ^ x_276));
  let x_279 : i32 = u_xlati0;
  u_xlatu0.x = (bitcast<u32>(x_279) * 9u);
  let x_284 : u32 = u_xlatu0.x;
  u_xlatu2 = (x_284 >> 11u);
  let x_286 : u32 = u_xlatu2;
  let x_288 : u32 = u_xlatu0.x;
  u_xlati0 = bitcast<i32>((x_286 ^ x_288));
  let x_291 : i32 = u_xlati0;
  u_xlati0 = (x_291 * 32769i);
  param = 1065353216i;
  let x_297 : i32 = u_xlati0;
  param_1 = x_297;
  param_2 = 0i;
  param_3 = 23i;
  let x_300 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat0.x = bitcast<f32>(x_300);
  let x_304 : f32 = u_xlat0.x;
  u_xlat0.x = (x_304 + -1.0f);
  let x_309 : f32 = u_xlat0.x;
  u_xlat2 = (-(x_309) + 1.0f);
  let x_314 : f32 = x_124.unity_LODFade.x;
  u_xlatb4 = (x_314 < 0.0f);
  let x_317 : f32 = x_124.unity_LODFade.x;
  u_xlat6 = (x_317 + 1.0f);
  let x_320 : bool = u_xlatb4;
  if (x_320) {
    let x_324 : f32 = u_xlat6;
    x_321 = x_324;
  } else {
    let x_327 : f32 = x_124.unity_LODFade.x;
    x_321 = x_327;
  }
  let x_328 : f32 = x_321;
  u_xlat4 = x_328;
  let x_330 : f32 = u_xlat4;
  u_xlatb6 = (0.5f >= x_330);
  let x_332 : bool = u_xlatb6;
  if (x_332) {
    let x_337 : f32 = u_xlat0.x;
    x_333 = x_337;
  } else {
    let x_339 : f32 = u_xlat2;
    x_333 = x_339;
  }
  let x_340 : f32 = x_333;
  u_xlat0.x = x_340;
  let x_342 : f32 = u_xlat4;
  let x_346 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_342 * 2.0f) + -(x_346));
  let x_361 : vec4<f32> = vs_INTERP1;
  let x_364 : f32 = x_70.x_GlobalMipBias.x;
  let x_365 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_361.x, x_361.y), x_364);
  u_xlat2 = x_365.w;
  let x_367 : f32 = u_xlat2;
  let x_369 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_367 * x_369) + -0.400000006f);
  let x_376 : f32 = u_xlat0.x;
  u_xlatb0 = (x_376 < 0.0f);
  let x_378 : bool = u_xlatb0;
  if (((select(0i, 1i, x_378) * -1i) != 0i)) {
    discard;
  }
  let x_388 : vec4<f32> = hlslcc_FragCoord;
  SV_TARGET0 = vec4<f32>(x_388.z, x_388.z, x_388.z, x_388.z);
  return;
}

struct main_out {
  @location(0)
  SV_TARGET0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(1) vs_INTERP1_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP1 = vs_INTERP1_param;
  main_1();
  return main_out(SV_TARGET0);
}

