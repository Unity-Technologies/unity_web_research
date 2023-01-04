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

struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  unity_OrthoParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
}

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(2) var<uniform> x_20 : UnityPerDraw;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(6) var<uniform> x_136 : VGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat12 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlatb12 : bool;
  var x_167 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat13 : f32;
  var x_228 : f32;
  var x_241 : f32;
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
  let x_42 : vec3<f32> = in_NORMAL0;
  let x_47 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_49 : vec3<f32> = (vec3<f32>(x_42.y, x_42.y, x_42.y) * vec3<f32>(x_47.x, x_47.y, x_47.z));
  let x_50 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_49.x, x_49.y, x_49.z, x_50.w);
  let x_53 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_55 : vec3<f32> = in_NORMAL0;
  let x_58 : vec4<f32> = u_xlat0;
  let x_60 : vec3<f32> = ((vec3<f32>(x_53.x, x_53.y, x_53.z) * vec3<f32>(x_55.x, x_55.x, x_55.x)) + vec3<f32>(x_58.x, x_58.y, x_58.z));
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_60.x, x_60.y, x_60.z, x_61.w);
  let x_65 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_67 : vec3<f32> = in_NORMAL0;
  let x_70 : vec4<f32> = u_xlat0;
  let x_72 : vec3<f32> = ((vec3<f32>(x_65.x, x_65.y, x_65.z) * vec3<f32>(x_67.z, x_67.z, x_67.z)) + vec3<f32>(x_70.x, x_70.y, x_70.z));
  let x_73 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_72.x, x_72.y, x_72.z, x_73.w);
  let x_77 : vec4<f32> = u_xlat0;
  let x_79 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_77.x, x_77.y, x_77.z), vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_82 : f32 = u_xlat12;
  u_xlat12 = max(x_82, 1.17549435e-37f);
  let x_85 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_85);
  let x_87 : f32 = u_xlat12;
  let x_89 : vec4<f32> = u_xlat0;
  let x_91 : vec3<f32> = (vec3<f32>(x_87, x_87, x_87) * vec3<f32>(x_89.x, x_89.y, x_89.z));
  let x_92 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
  let x_95 : vec4<f32> = u_xlat0;
  let x_96 : vec3<f32> = vec3<f32>(x_95.x, x_95.y, x_95.z);
  let x_97 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_103 : vec4<f32> = in_POSITION0;
  let x_106 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat1 = (vec3<f32>(x_103.y, x_103.y, x_103.y) * vec3<f32>(x_106.x, x_106.y, x_106.z));
  let x_110 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_112 : vec4<f32> = in_POSITION0;
  let x_115 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_110.x, x_110.y, x_110.z) * vec3<f32>(x_112.x, x_112.x, x_112.x)) + x_115);
  let x_118 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_120 : vec4<f32> = in_POSITION0;
  let x_123 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_118.x, x_118.y, x_118.z) * vec3<f32>(x_120.z, x_120.z, x_120.z)) + x_123);
  let x_125 : vec3<f32> = u_xlat1;
  let x_128 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  u_xlat1 = (x_125 + vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_132 : vec3<f32> = u_xlat1;
  let x_139 : vec3<f32> = x_136.x_WorldSpaceCameraPos;
  let x_140 : vec3<f32> = (-(x_132) + x_139);
  let x_141 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_140.x, x_140.y, x_140.z, x_141.w);
  let x_143 : vec4<f32> = u_xlat2;
  let x_145 : vec4<f32> = u_xlat2;
  u_xlat12 = dot(vec3<f32>(x_143.x, x_143.y, x_143.z), vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_148 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_148);
  let x_150 : f32 = u_xlat12;
  let x_152 : vec4<f32> = u_xlat2;
  let x_154 : vec3<f32> = (vec3<f32>(x_150, x_150, x_150) * vec3<f32>(x_152.x, x_152.y, x_152.z));
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_163 : f32 = x_136.unity_OrthoParams.w;
  u_xlatb12 = (x_163 == 0.0f);
  let x_166 : bool = u_xlatb12;
  if (x_166) {
    let x_172 : f32 = u_xlat2.x;
    x_167 = x_172;
  } else {
    let x_175 : f32 = x_136.unity_MatrixV[0i].z;
    x_167 = x_175;
  }
  let x_176 : f32 = x_167;
  vs_TEXCOORD3.w = x_176;
  let x_179 : vec3<f32> = in_NORMAL0;
  let x_183 : vec2<f32> = (vec2<f32>(x_179.y, x_179.z) * vec2<f32>(1.0f, 0.0f));
  let x_184 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_183.x, x_184.y, x_184.z, x_183.y);
  let x_186 : vec3<f32> = in_NORMAL0;
  let x_190 : vec4<f32> = u_xlat2;
  let x_193 : vec2<f32> = ((vec2<f32>(x_186.z, x_186.x) * vec2<f32>(0.0f, 1.0f)) + -(vec2<f32>(x_190.x, x_190.w)));
  let x_194 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_193.x, x_194.y, x_194.z, x_193.y);
  let x_197 : vec4<f32> = u_xlat2;
  let x_200 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_197.w, x_197.w, x_197.w) * vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_204 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_206 : vec4<f32> = u_xlat2;
  let x_209 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_204.x, x_204.y, x_204.z) * vec3<f32>(x_206.x, x_206.x, x_206.x)) + x_209);
  let x_212 : vec3<f32> = u_xlat3;
  let x_213 : vec3<f32> = u_xlat3;
  u_xlat13 = dot(x_212, x_213);
  let x_215 : f32 = u_xlat13;
  u_xlat13 = max(x_215, 1.17549435e-37f);
  let x_217 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_217);
  let x_219 : f32 = u_xlat13;
  let x_221 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_219, x_219, x_219) * x_221);
  let x_224 : vec3<f32> = u_xlat3;
  let x_225 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
  let x_227 : bool = u_xlatb12;
  if (x_227) {
    let x_233 : f32 = u_xlat2.y;
    x_228 = x_233;
  } else {
    let x_236 : f32 = x_136.unity_MatrixV[1i].z;
    x_228 = x_236;
  }
  let x_237 : f32 = x_228;
  vs_TEXCOORD4.w = x_237;
  let x_240 : bool = u_xlatb12;
  if (x_240) {
    let x_245 : f32 = u_xlat2.z;
    x_241 = x_245;
  } else {
    let x_248 : f32 = x_136.unity_MatrixV[2i].z;
    x_241 = x_248;
  }
  let x_249 : f32 = x_241;
  vs_TEXCOORD5.w = x_249;
  let x_251 : vec4<f32> = u_xlat0;
  let x_253 : vec3<f32> = u_xlat3;
  let x_255 : vec3<f32> = (vec3<f32>(x_251.z, x_251.x, x_251.y) * vec3<f32>(x_253.y, x_253.z, x_253.x));
  let x_256 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_258 : vec4<f32> = u_xlat0;
  let x_260 : vec3<f32> = u_xlat3;
  let x_263 : vec4<f32> = u_xlat2;
  let x_266 : vec3<f32> = ((vec3<f32>(x_258.y, x_258.z, x_258.x) * vec3<f32>(x_260.z, x_260.x, x_260.y)) + -(vec3<f32>(x_263.x, x_263.y, x_263.z)));
  let x_267 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_270 : f32 = x_20.unity_WorldTransformParams.w;
  u_xlatb12 = (x_270 >= 0.0f);
  let x_272 : bool = u_xlatb12;
  u_xlat12 = select(-1.0f, 1.0f, x_272);
  let x_275 : f32 = u_xlat12;
  let x_277 : vec4<f32> = u_xlat0;
  let x_279 : vec3<f32> = (vec3<f32>(x_275, x_275, x_275) * vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_280 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  vs_TEXCOORD6 = 0.0f;
  let x_286 : vec3<f32> = u_xlat1;
  vs_TEXCOORD7 = x_286;
  let x_287 : vec3<f32> = u_xlat1;
  let x_290 : vec4<f32> = x_136.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_287.y, x_287.y, x_287.y, x_287.y) * x_290);
  let x_293 : vec4<f32> = x_136.unity_MatrixVP[0i];
  let x_294 : vec3<f32> = u_xlat1;
  let x_297 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_293 * vec4<f32>(x_294.x, x_294.x, x_294.x, x_294.x)) + x_297);
  let x_300 : vec4<f32> = x_136.unity_MatrixVP[2i];
  let x_301 : vec3<f32> = u_xlat1;
  let x_304 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_300 * vec4<f32>(x_301.z, x_301.z, x_301.z, x_301.z)) + x_304);
  let x_310 : vec4<f32> = u_xlat0;
  let x_312 : vec4<f32> = x_136.unity_MatrixVP[3i];
  gl_Position = (x_310 + x_312);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD5_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD7_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(2) in_TEXCOORD0_param : vec2<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5, vs_TEXCOORD7, gl_Position);
}

