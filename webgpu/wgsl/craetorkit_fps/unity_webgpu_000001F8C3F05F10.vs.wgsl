struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
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

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_95 : vec2<f32>;
  var u_xlat9 : f32;
  var u_xlat2 : vec3<f32>;
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
  let x_36 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_37 : vec4<f32> = in_POSITION0;
  let x_40 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_36 * vec4<f32>(x_37.z, x_37.z, x_37.z, x_37.z)) + x_40);
  let x_42 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat0 = (x_42 + x_45);
  let x_48 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_48.y, x_48.y, x_48.y, x_48.y) * x_52);
  let x_55 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_56 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_55 * vec4<f32>(x_56.x, x_56.x, x_56.x, x_56.x)) + x_59);
  let x_62 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_63 : vec4<f32> = u_xlat0;
  let x_66 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_62 * vec4<f32>(x_63.z, x_63.z, x_63.z, x_63.z)) + x_66);
  let x_75 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_76 : vec4<f32> = u_xlat0;
  let x_79 : vec4<f32> = u_xlat1;
  gl_Position = ((x_75 * vec4<f32>(x_76.w, x_76.w, x_76.w, x_76.w)) + x_79);
  let x_89 : f32 = x_18.x_UVSec;
  u_xlatb0 = (x_89 == 0.0f);
  let x_92 : bool = u_xlatb0;
  if (x_92) {
    let x_100 : vec2<f32> = in_TEXCOORD0;
    x_95 = x_100;
  } else {
    let x_103 : vec2<f32> = in_TEXCOORD1;
    x_95 = x_103;
  }
  let x_104 : vec2<f32> = x_95;
  let x_105 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_104.x, x_104.y, x_105.z, x_105.w);
  let x_108 : vec4<f32> = u_xlat0;
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
  let x_143 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_146 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_148 : vec4<f32> = in_POSITION0;
  let x_151 : vec4<f32> = u_xlat0;
  let x_153 : vec3<f32> = ((vec3<f32>(x_146.x, x_146.y, x_146.z) * vec3<f32>(x_148.x, x_148.x, x_148.x)) + vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_154 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_157 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_159 : vec4<f32> = in_POSITION0;
  let x_162 : vec4<f32> = u_xlat0;
  let x_164 : vec3<f32> = ((vec3<f32>(x_157.x, x_157.y, x_157.z) * vec3<f32>(x_159.z, x_159.z, x_159.z)) + vec3<f32>(x_162.x, x_162.y, x_162.z));
  let x_165 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
  let x_168 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_170 : vec4<f32> = in_POSITION0;
  let x_173 : vec4<f32> = u_xlat0;
  let x_175 : vec3<f32> = ((vec3<f32>(x_168.x, x_168.y, x_168.z) * vec3<f32>(x_170.w, x_170.w, x_170.w)) + vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_176 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
  let x_178 : vec4<f32> = u_xlat0;
  let x_182 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_184 : vec3<f32> = (vec3<f32>(x_178.x, x_178.y, x_178.z) + -(x_182));
  let x_185 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_191 : f32 = u_xlat0.x;
  vs_TEXCOORD2.w = x_191;
  let x_194 : vec4<f32> = in_TANGENT0;
  let x_197 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_199 : vec3<f32> = (vec3<f32>(x_194.y, x_194.y, x_194.y) * vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_200 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_203 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_205 : vec4<f32> = in_TANGENT0;
  let x_208 : vec4<f32> = u_xlat1;
  let x_210 : vec3<f32> = ((vec3<f32>(x_203.x, x_203.y, x_203.z) * vec3<f32>(x_205.x, x_205.x, x_205.x)) + vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_211 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_214 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_216 : vec4<f32> = in_TANGENT0;
  let x_219 : vec4<f32> = u_xlat1;
  let x_221 : vec3<f32> = ((vec3<f32>(x_214.x, x_214.y, x_214.z) * vec3<f32>(x_216.z, x_216.z, x_216.z)) + vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  let x_224 : vec4<f32> = u_xlat1;
  let x_226 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_224.x, x_224.y, x_224.z), vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_231 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_231);
  let x_234 : vec4<f32> = u_xlat0;
  let x_236 : vec4<f32> = u_xlat1;
  let x_238 : vec3<f32> = (vec3<f32>(x_234.x, x_234.x, x_234.x) * vec3<f32>(x_236.x, x_236.y, x_236.z));
  let x_239 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_241 : vec4<f32> = u_xlat1;
  let x_242 : vec3<f32> = vec3<f32>(x_241.x, x_241.y, x_241.z);
  let x_243 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_247 : f32 = u_xlat0.y;
  vs_TEXCOORD3.w = x_247;
  let x_252 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_252;
  let x_256 : vec3<f32> = in_NORMAL0;
  let x_259 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_256, vec3<f32>(x_259.x, x_259.y, x_259.z));
  let x_263 : vec3<f32> = in_NORMAL0;
  let x_265 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_263, vec3<f32>(x_265.x, x_265.y, x_265.z));
  let x_269 : vec3<f32> = in_NORMAL0;
  let x_271 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_269, vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_276 : vec4<f32> = u_xlat0;
  let x_278 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_276.x, x_276.y, x_276.z), vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_281 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_281);
  let x_283 : f32 = u_xlat9;
  let x_285 : vec4<f32> = u_xlat0;
  let x_287 : vec3<f32> = (vec3<f32>(x_283, x_283, x_283) * vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_288 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
  let x_292 : vec4<f32> = u_xlat1;
  let x_294 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_292.y, x_292.z, x_292.x) * vec3<f32>(x_294.z, x_294.x, x_294.y));
  let x_297 : vec4<f32> = u_xlat0;
  let x_299 : vec4<f32> = u_xlat1;
  let x_302 : vec3<f32> = u_xlat2;
  let x_304 : vec3<f32> = ((vec3<f32>(x_297.y, x_297.z, x_297.x) * vec3<f32>(x_299.z, x_299.x, x_299.y)) + -(x_302));
  let x_305 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_309 : f32 = in_TANGENT0.w;
  let x_312 : f32 = x_18.unity_WorldTransformParams.w;
  u_xlat9 = (x_309 * x_312);
  let x_314 : f32 = u_xlat9;
  let x_316 : vec4<f32> = u_xlat1;
  let x_318 : vec3<f32> = (vec3<f32>(x_314, x_314, x_314) * vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat0;
  let x_322 : vec3<f32> = vec3<f32>(x_321.x, x_321.y, x_321.z);
  let x_323 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_326 : f32 = u_xlat0.y;
  let x_328 : f32 = u_xlat0.y;
  u_xlat9 = (x_326 * x_328);
  let x_331 : f32 = u_xlat0.x;
  let x_333 : f32 = u_xlat0.x;
  let x_335 : f32 = u_xlat9;
  u_xlat9 = ((x_331 * x_333) + -(x_335));
  let x_338 : vec4<f32> = u_xlat0;
  let x_340 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec4<f32>(x_338.y, x_338.z, x_338.z, x_338.x) * vec4<f32>(x_340.x, x_340.y, x_340.z, x_340.z));
  let x_344 : vec4<f32> = x_18.unity_SHBr;
  let x_345 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(x_344, x_345);
  let x_349 : vec4<f32> = x_18.unity_SHBg;
  let x_350 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(x_349, x_350);
  let x_354 : vec4<f32> = x_18.unity_SHBb;
  let x_355 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(x_354, x_355);
  let x_361 : vec4<f32> = x_18.unity_SHC;
  let x_363 : f32 = u_xlat9;
  let x_366 : vec4<f32> = u_xlat0;
  let x_368 : vec3<f32> = ((vec3<f32>(x_361.x, x_361.y, x_361.z) * vec3<f32>(x_363, x_363, x_363)) + vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_369 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  vs_TEXCOORD5.w = 0.0f;
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
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5);
}

