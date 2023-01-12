struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
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

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb1 : bool;
  var x_95 : vec2<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
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
  let x_68 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_69 : vec4<f32> = u_xlat0;
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_68 * vec4<f32>(x_69.w, x_69.w, x_69.w, x_69.w)) + x_72);
  let x_80 : vec4<f32> = u_xlat0;
  gl_Position = x_80;
  let x_89 : f32 = x_18.x_UVSec;
  u_xlatb1 = (x_89 == 0.0f);
  let x_92 : bool = u_xlatb1;
  if (x_92) {
    let x_100 : vec2<f32> = in_TEXCOORD0;
    x_95 = x_100;
  } else {
    let x_103 : vec2<f32> = in_TEXCOORD1;
    x_95 = x_103;
  }
  let x_104 : vec2<f32> = x_95;
  let x_105 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_104.x, x_104.y, x_105.z, x_105.w);
  let x_108 : vec4<f32> = u_xlat1;
  let x_112 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_116 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_118 : vec2<f32> = ((vec2<f32>(x_108.x, x_108.y) * vec2<f32>(x_112.x, x_112.y)) + vec2<f32>(x_116.z, x_116.w));
  let x_119 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_119.x, x_119.y, x_118.x, x_118.y);
  let x_121 : vec2<f32> = in_TEXCOORD0;
  let x_124 : vec4<f32> = x_18.x_MainTex_ST;
  let x_128 : vec4<f32> = x_18.x_MainTex_ST;
  let x_130 : vec2<f32> = ((x_121 * vec2<f32>(x_124.x, x_124.y)) + vec2<f32>(x_128.z, x_128.w));
  let x_131 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_130.x, x_130.y, x_131.z, x_131.w);
  vs_TEXCOORD1.w = 0.0f;
  let x_137 : vec4<f32> = in_POSITION0;
  let x_140 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_142 : vec3<f32> = (vec3<f32>(x_137.y, x_137.y, x_137.y) * vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_143 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_146 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_148 : vec4<f32> = in_POSITION0;
  let x_151 : vec4<f32> = u_xlat1;
  let x_153 : vec3<f32> = ((vec3<f32>(x_146.x, x_146.y, x_146.z) * vec3<f32>(x_148.x, x_148.x, x_148.x)) + vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_154 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_157 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_159 : vec4<f32> = in_POSITION0;
  let x_162 : vec4<f32> = u_xlat1;
  let x_164 : vec3<f32> = ((vec3<f32>(x_157.x, x_157.y, x_157.z) * vec3<f32>(x_159.z, x_159.z, x_159.z)) + vec3<f32>(x_162.x, x_162.y, x_162.z));
  let x_165 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
  let x_168 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_170 : vec4<f32> = in_POSITION0;
  let x_173 : vec4<f32> = u_xlat1;
  let x_175 : vec3<f32> = ((vec3<f32>(x_168.x, x_168.y, x_168.z) * vec3<f32>(x_170.w, x_170.w, x_170.w)) + vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_176 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
  let x_178 : vec4<f32> = u_xlat1;
  let x_182 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_184 : vec3<f32> = (vec3<f32>(x_178.x, x_178.y, x_178.z) + -(x_182));
  let x_185 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_191 : f32 = u_xlat1.x;
  vs_TEXCOORD2.w = x_191;
  let x_196 : vec4<f32> = in_TANGENT0;
  let x_199 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat2 = (vec3<f32>(x_196.y, x_196.y, x_196.y) * vec3<f32>(x_199.x, x_199.y, x_199.z));
  let x_203 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_205 : vec4<f32> = in_TANGENT0;
  let x_208 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_203.x, x_203.y, x_203.z) * vec3<f32>(x_205.x, x_205.x, x_205.x)) + x_208);
  let x_211 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_213 : vec4<f32> = in_TANGENT0;
  let x_216 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_213.z, x_213.z, x_213.z)) + x_216);
  let x_218 : vec3<f32> = u_xlat2;
  let x_219 : vec3<f32> = u_xlat2;
  u_xlat1.x = dot(x_218, x_219);
  let x_223 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_223);
  let x_226 : vec4<f32> = u_xlat1;
  let x_228 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_226.x, x_226.x, x_226.x) * x_228);
  let x_230 : vec3<f32> = u_xlat2;
  let x_231 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_236 : vec3<f32> = in_NORMAL0;
  let x_238 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat3.x = dot(x_236, vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_242 : vec3<f32> = in_NORMAL0;
  let x_244 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat3.y = dot(x_242, vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_248 : vec3<f32> = in_NORMAL0;
  let x_250 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat3.z = dot(x_248, vec3<f32>(x_250.x, x_250.y, x_250.z));
  let x_255 : vec3<f32> = u_xlat3;
  let x_256 : vec3<f32> = u_xlat3;
  u_xlat1.x = dot(x_255, x_256);
  let x_260 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_260);
  let x_263 : vec4<f32> = u_xlat1;
  let x_265 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_263.x, x_263.x, x_263.x) * x_265);
  let x_268 : vec3<f32> = u_xlat2;
  let x_270 : vec3<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_268.y, x_268.z, x_268.x) * vec3<f32>(x_270.z, x_270.x, x_270.y));
  let x_273 : vec3<f32> = u_xlat3;
  let x_275 : vec3<f32> = u_xlat2;
  let x_278 : vec3<f32> = u_xlat4;
  u_xlat2 = ((vec3<f32>(x_273.y, x_273.z, x_273.x) * vec3<f32>(x_275.z, x_275.x, x_275.y)) + -(x_278));
  let x_282 : vec3<f32> = u_xlat3;
  let x_283 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_287 : f32 = in_TANGENT0.w;
  let x_290 : f32 = x_18.unity_WorldTransformParams.w;
  u_xlat1.x = (x_287 * x_290);
  let x_294 : vec4<f32> = u_xlat1;
  let x_296 : vec3<f32> = u_xlat2;
  let x_297 : vec3<f32> = (vec3<f32>(x_294.x, x_294.x, x_294.x) * x_296);
  let x_298 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_301 : f32 = u_xlat1.y;
  vs_TEXCOORD3.w = x_301;
  let x_304 : f32 = u_xlat1.z;
  vs_TEXCOORD4.w = x_304;
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_310 : f32 = u_xlat0.y;
  let x_312 : f32 = x_18.x_ProjectionParams.x;
  u_xlat0.y = (x_310 * x_312);
  let x_315 : vec4<f32> = u_xlat0;
  let x_319 : vec3<f32> = (vec3<f32>(x_315.x, x_315.w, x_315.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_320 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_319.x, x_320.y, x_319.y, x_319.z);
  let x_323 : vec4<f32> = u_xlat0;
  let x_324 : vec2<f32> = vec2<f32>(x_323.z, x_323.w);
  let x_325 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_325.x, x_325.y, x_324.x, x_324.y);
  let x_327 : vec4<f32> = u_xlat1;
  let x_329 : vec4<f32> = u_xlat1;
  let x_331 : vec2<f32> = (vec2<f32>(x_327.z, x_327.z) + vec2<f32>(x_329.x, x_329.w));
  let x_332 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_331.x, x_331.y, x_332.z, x_332.w);
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
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD7_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD4, vs_TEXCOORD3, vs_TEXCOORD7);
}

