struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_UVSec : f32,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_94 : vec2<f32>;
  var u_xlat12 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_24 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_24);
  let x_28 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_29 : vec4<f32> = in_POSITION0;
  let x_32 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_28 * vec4<f32>(x_29.x, x_29.x, x_29.x, x_29.x)) + x_32);
  let x_35 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_36 : vec4<f32> = in_POSITION0;
  let x_39 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_35 * vec4<f32>(x_36.z, x_36.z, x_36.z, x_36.z)) + x_39);
  let x_41 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat0 = (x_41 + x_44);
  let x_47 : vec4<f32> = u_xlat0;
  let x_51 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_47.y, x_47.y, x_47.y, x_47.y) * x_51);
  let x_54 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_55 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_54 * vec4<f32>(x_55.x, x_55.x, x_55.x, x_55.x)) + x_58);
  let x_61 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_62 : vec4<f32> = u_xlat0;
  let x_65 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_61 * vec4<f32>(x_62.z, x_62.z, x_62.z, x_62.z)) + x_65);
  let x_74 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_75 : vec4<f32> = u_xlat0;
  let x_78 : vec4<f32> = u_xlat1;
  gl_Position = ((x_74 * vec4<f32>(x_75.w, x_75.w, x_75.w, x_75.w)) + x_78);
  let x_88 : f32 = x_18.x_UVSec;
  u_xlatb0 = (x_88 == 0.0f);
  let x_91 : bool = u_xlatb0;
  if (x_91) {
    let x_99 : vec2<f32> = in_TEXCOORD0;
    x_94 = x_99;
  } else {
    let x_102 : vec2<f32> = in_TEXCOORD1;
    x_94 = x_102;
  }
  let x_103 : vec2<f32> = x_94;
  let x_104 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_103.x, x_103.y, x_104.z, x_104.w);
  let x_107 : vec4<f32> = u_xlat0;
  let x_111 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_115 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_117 : vec2<f32> = ((vec2<f32>(x_107.x, x_107.y) * vec2<f32>(x_111.x, x_111.y)) + vec2<f32>(x_115.z, x_115.w));
  let x_118 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_118.x, x_118.y, x_117.x, x_117.y);
  let x_120 : vec2<f32> = in_TEXCOORD0;
  let x_123 : vec4<f32> = x_18.x_MainTex_ST;
  let x_127 : vec4<f32> = x_18.x_MainTex_ST;
  let x_129 : vec2<f32> = ((x_120 * vec2<f32>(x_123.x, x_123.y)) + vec2<f32>(x_127.z, x_127.w));
  let x_130 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_129.x, x_129.y, x_130.z, x_130.w);
  let x_132 : vec4<f32> = in_POSITION0;
  let x_135 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_137 : vec3<f32> = (vec3<f32>(x_132.y, x_132.y, x_132.y) * vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_138 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_137.x, x_137.y, x_137.z, x_138.w);
  let x_141 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_143 : vec4<f32> = in_POSITION0;
  let x_146 : vec4<f32> = u_xlat0;
  let x_148 : vec3<f32> = ((vec3<f32>(x_141.x, x_141.y, x_141.z) * vec3<f32>(x_143.x, x_143.x, x_143.x)) + vec3<f32>(x_146.x, x_146.y, x_146.z));
  let x_149 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  let x_152 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_154 : vec4<f32> = in_POSITION0;
  let x_157 : vec4<f32> = u_xlat0;
  let x_159 : vec3<f32> = ((vec3<f32>(x_152.x, x_152.y, x_152.z) * vec3<f32>(x_154.z, x_154.z, x_154.z)) + vec3<f32>(x_157.x, x_157.y, x_157.z));
  let x_160 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_163 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_165 : vec4<f32> = in_POSITION0;
  let x_168 : vec4<f32> = u_xlat0;
  let x_170 : vec3<f32> = ((vec3<f32>(x_163.x, x_163.y, x_163.z) * vec3<f32>(x_165.w, x_165.w, x_165.w)) + vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_171 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_174 : vec4<f32> = u_xlat0;
  let x_178 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_180 : vec3<f32> = (vec3<f32>(x_174.x, x_174.y, x_174.z) + -(x_178));
  let x_181 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  vs_TEXCOORD1.w = 0.0f;
  let x_187 : vec4<f32> = in_TANGENT0;
  let x_190 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_192 : vec3<f32> = (vec3<f32>(x_187.y, x_187.y, x_187.y) * vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_193 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_196 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_198 : vec4<f32> = in_TANGENT0;
  let x_201 : vec4<f32> = u_xlat1;
  let x_203 : vec3<f32> = ((vec3<f32>(x_196.x, x_196.y, x_196.z) * vec3<f32>(x_198.x, x_198.x, x_198.x)) + vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_207 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_209 : vec4<f32> = in_TANGENT0;
  let x_212 : vec4<f32> = u_xlat1;
  let x_214 : vec3<f32> = ((vec3<f32>(x_207.x, x_207.y, x_207.z) * vec3<f32>(x_209.z, x_209.z, x_209.z)) + vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_215 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_219 : vec4<f32> = u_xlat1;
  let x_221 : vec4<f32> = u_xlat1;
  u_xlat12 = dot(vec3<f32>(x_219.x, x_219.y, x_219.z), vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_224 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_224);
  let x_226 : f32 = u_xlat12;
  let x_228 : vec4<f32> = u_xlat1;
  let x_230 : vec3<f32> = (vec3<f32>(x_226, x_226, x_226) * vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_231 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_234 : vec4<f32> = u_xlat1;
  let x_235 : vec3<f32> = vec3<f32>(x_234.x, x_234.y, x_234.z);
  let x_236 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_240 : vec4<f32> = u_xlat0;
  let x_244 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_248 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat2 = ((-(vec3<f32>(x_240.x, x_240.y, x_240.z)) * vec3<f32>(x_244.w, x_244.w, x_244.w)) + vec3<f32>(x_248.x, x_248.y, x_248.z));
  let x_253 : vec4<f32> = u_xlat0;
  vs_TEXCOORD5 = vec3<f32>(x_253.x, x_253.y, x_253.z);
  let x_257 : f32 = u_xlat2.x;
  vs_TEXCOORD2.w = x_257;
  let x_261 : vec3<f32> = in_NORMAL0;
  let x_263 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_261, vec3<f32>(x_263.x, x_263.y, x_263.z));
  let x_267 : vec3<f32> = in_NORMAL0;
  let x_269 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_267, vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_273 : vec3<f32> = in_NORMAL0;
  let x_275 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_273, vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_280 : vec4<f32> = u_xlat0;
  let x_282 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_280.x, x_280.y, x_280.z), vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_285 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_285);
  let x_287 : f32 = u_xlat12;
  let x_289 : vec4<f32> = u_xlat0;
  let x_291 : vec3<f32> = (vec3<f32>(x_287, x_287, x_287) * vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_292 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_295 : vec4<f32> = u_xlat1;
  let x_297 : vec4<f32> = u_xlat0;
  u_xlat3 = (vec3<f32>(x_295.y, x_295.z, x_295.x) * vec3<f32>(x_297.z, x_297.x, x_297.y));
  let x_300 : vec4<f32> = u_xlat0;
  let x_302 : vec4<f32> = u_xlat1;
  let x_305 : vec3<f32> = u_xlat3;
  let x_307 : vec3<f32> = ((vec3<f32>(x_300.y, x_300.z, x_300.x) * vec3<f32>(x_302.z, x_302.x, x_302.y)) + -(x_305));
  let x_308 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_311 : vec4<f32> = u_xlat0;
  let x_312 : vec3<f32> = vec3<f32>(x_311.x, x_311.y, x_311.z);
  let x_313 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_317 : f32 = in_TANGENT0.w;
  let x_320 : f32 = x_18.unity_WorldTransformParams.w;
  u_xlat0.x = (x_317 * x_320);
  let x_324 : vec4<f32> = u_xlat0;
  let x_326 : vec4<f32> = u_xlat1;
  let x_328 : vec3<f32> = (vec3<f32>(x_324.x, x_324.x, x_324.x) * vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_332 : f32 = u_xlat2.y;
  vs_TEXCOORD3.w = x_332;
  let x_335 : f32 = u_xlat2.z;
  vs_TEXCOORD4.w = x_335;
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD5, vs_TEXCOORD4, vs_TEXCOORD3);
}

