struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_Normal_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD9 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat7 : f32;
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
  let x_42 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat1 = (x_42 + x_45);
  let x_48 : vec4<f32> = u_xlat1;
  let x_52 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_48.y, x_48.y, x_48.y, x_48.y) * x_52);
  let x_55 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_56 : vec4<f32> = u_xlat1;
  let x_59 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_55 * vec4<f32>(x_56.x, x_56.x, x_56.x, x_56.x)) + x_59);
  let x_62 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_63 : vec4<f32> = u_xlat1;
  let x_66 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_62 * vec4<f32>(x_63.z, x_63.z, x_63.z, x_63.z)) + x_66);
  let x_69 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_70 : vec4<f32> = u_xlat1;
  let x_73 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_69 * vec4<f32>(x_70.w, x_70.w, x_70.w, x_70.w)) + x_73);
  let x_81 : vec4<f32> = u_xlat2;
  gl_Position = x_81;
  let x_87 : vec4<f32> = in_TEXCOORD0;
  let x_91 : vec4<f32> = x_18.x_MainTex_ST;
  let x_95 : vec4<f32> = x_18.x_MainTex_ST;
  let x_97 : vec2<f32> = ((vec2<f32>(x_87.x, x_87.y) * vec2<f32>(x_91.x, x_91.y)) + vec2<f32>(x_95.z, x_95.w));
  let x_98 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_97.x, x_97.y, x_98.z, x_98.w);
  let x_100 : vec4<f32> = in_TEXCOORD0;
  let x_104 : vec4<f32> = x_18.x_Normal_ST;
  let x_108 : vec4<f32> = x_18.x_Normal_ST;
  let x_110 : vec2<f32> = ((vec2<f32>(x_100.x, x_100.y) * vec2<f32>(x_104.x, x_104.y)) + vec2<f32>(x_108.z, x_108.w));
  let x_111 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_111.x, x_111.y, x_110.x, x_110.y);
  let x_117 : vec3<f32> = in_NORMAL0;
  let x_119 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat3.y = dot(x_117, vec3<f32>(x_119.x, x_119.y, x_119.z));
  let x_124 : vec3<f32> = in_NORMAL0;
  let x_126 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat3.z = dot(x_124, vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_131 : vec3<f32> = in_NORMAL0;
  let x_133 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat3.x = dot(x_131, vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_139 : vec3<f32> = u_xlat3;
  let x_140 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(x_139, x_140);
  let x_142 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_142);
  let x_144 : f32 = u_xlat21;
  let x_146 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_144, x_144, x_144) * x_146);
  let x_150 : vec4<f32> = in_TANGENT0;
  let x_153 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat4 = (vec3<f32>(x_150.y, x_150.y, x_150.y) * vec3<f32>(x_153.y, x_153.z, x_153.x));
  let x_157 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_159 : vec4<f32> = in_TANGENT0;
  let x_162 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_157.y, x_157.z, x_157.x) * vec3<f32>(x_159.x, x_159.x, x_159.x)) + x_162);
  let x_165 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_167 : vec4<f32> = in_TANGENT0;
  let x_170 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_165.y, x_165.z, x_165.x) * vec3<f32>(x_167.z, x_167.z, x_167.z)) + x_170);
  let x_172 : vec3<f32> = u_xlat4;
  let x_173 : vec3<f32> = u_xlat4;
  u_xlat21 = dot(x_172, x_173);
  let x_175 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_175);
  let x_177 : f32 = u_xlat21;
  let x_179 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_177, x_177, x_177) * x_179);
  let x_182 : vec3<f32> = u_xlat3;
  let x_183 : vec3<f32> = u_xlat4;
  u_xlat5 = (x_182 * x_183);
  let x_185 : vec3<f32> = u_xlat3;
  let x_187 : vec3<f32> = u_xlat4;
  let x_190 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_185.z, x_185.x, x_185.y) * vec3<f32>(x_187.y, x_187.z, x_187.x)) + -(x_190));
  let x_196 : f32 = in_TANGENT0.w;
  let x_200 : f32 = x_18.unity_WorldTransformParams.w;
  u_xlat21 = (x_196 * x_200);
  let x_202 : f32 = u_xlat21;
  let x_204 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_202, x_202, x_202) * x_204);
  let x_209 : f32 = u_xlat5.x;
  vs_TEXCOORD1.y = x_209;
  let x_213 : f32 = u_xlat4.z;
  vs_TEXCOORD1.x = x_213;
  let x_216 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_216;
  let x_220 : f32 = u_xlat2.z;
  vs_TEXCOORD9 = x_220;
  let x_223 : f32 = u_xlat4.x;
  vs_TEXCOORD2.x = x_223;
  let x_227 : f32 = u_xlat4.y;
  vs_TEXCOORD3.x = x_227;
  let x_230 : f32 = u_xlat3.z;
  vs_TEXCOORD2.z = x_230;
  let x_233 : f32 = u_xlat3.x;
  vs_TEXCOORD3.z = x_233;
  let x_236 : f32 = u_xlat5.y;
  vs_TEXCOORD2.y = x_236;
  let x_239 : f32 = u_xlat5.z;
  vs_TEXCOORD3.y = x_239;
  let x_242 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_244 : vec4<f32> = in_POSITION0;
  let x_247 : vec4<f32> = u_xlat0;
  u_xlat3 = ((vec3<f32>(x_242.x, x_242.y, x_242.z) * vec3<f32>(x_244.w, x_244.w, x_244.w)) + vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_251 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_252 : vec4<f32> = in_POSITION0;
  let x_255 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_251 * vec4<f32>(x_252.w, x_252.w, x_252.w, x_252.w)) + x_255);
  let x_258 : vec3<f32> = u_xlat3;
  vs_TEXCOORD4 = x_258;
  let x_259 : vec3<f32> = u_xlat3;
  let x_262 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat3 = (x_259 + -(x_262));
  let x_265 : vec3<f32> = u_xlat3;
  let x_266 : vec3<f32> = u_xlat3;
  u_xlat3.x = dot(x_265, x_266);
  let x_272 : f32 = u_xlat3.x;
  vs_TEXCOORD7.z = sqrt(x_272);
  let x_278 : f32 = u_xlat1.y;
  let x_281 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat7 = (x_278 * x_281);
  let x_284 : f32 = x_18.unity_MatrixV[0i].z;
  let x_286 : f32 = u_xlat1.x;
  let x_288 : f32 = u_xlat7;
  u_xlat1.x = ((x_284 * x_286) + x_288);
  let x_292 : f32 = x_18.unity_MatrixV[2i].z;
  let x_294 : f32 = u_xlat1.z;
  let x_297 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_292 * x_294) + x_297);
  let x_301 : f32 = x_18.unity_MatrixV[3i].z;
  let x_303 : f32 = u_xlat1.w;
  let x_306 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_301 * x_303) + x_306);
  let x_311 : f32 = u_xlat1.x;
  vs_TEXCOORD5.z = -(x_311);
  let x_315 : f32 = u_xlat2.y;
  let x_317 : f32 = x_18.x_ProjectionParams.x;
  u_xlat1.x = (x_315 * x_317);
  let x_321 : f32 = u_xlat1.x;
  u_xlat1.w = (x_321 * 0.5f);
  let x_325 : vec4<f32> = u_xlat2;
  let x_328 : vec2<f32> = (vec2<f32>(x_325.x, x_325.w) * vec2<f32>(0.5f, 0.5f));
  let x_329 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_328.x, x_329.y, x_328.y, x_329.w);
  let x_331 : vec4<f32> = u_xlat1;
  let x_333 : vec4<f32> = u_xlat1;
  let x_335 : vec2<f32> = (vec2<f32>(x_331.z, x_331.z) + vec2<f32>(x_333.x, x_333.w));
  let x_336 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_335.x, x_335.y, x_336.z, x_336.w);
  let x_340 : vec4<f32> = u_xlat2;
  let x_345 : vec4<f32> = u_xlat1;
  let x_347 : vec2<f32> = ((vec2<f32>(x_340.x, x_340.y) * vec2<f32>(0.5f, -0.5f)) + vec2<f32>(x_345.z, x_345.z));
  let x_348 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_347.x, x_347.y, x_348.z, x_348.w);
  let x_351 : f32 = u_xlat2.w;
  vs_TEXCOORD5.w = x_351;
  let x_353 : vec4<f32> = u_xlat2;
  let x_354 : vec2<f32> = vec2<f32>(x_353.z, x_353.w);
  let x_355 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_355.x, x_355.y, x_354.x, x_354.y);
  let x_357 : vec4<f32> = in_POSITION0;
  let x_358 : vec2<f32> = vec2<f32>(x_357.x, x_357.z);
  let x_359 : vec3<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec3<f32>(x_358.x, x_358.y, x_359.z);
  let x_361 : vec4<f32> = u_xlat0;
  let x_365 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat1 = (vec4<f32>(x_361.y, x_361.y, x_361.y, x_361.y) * x_365);
  let x_368 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_369 : vec4<f32> = u_xlat0;
  let x_372 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_368 * vec4<f32>(x_369.x, x_369.x, x_369.x, x_369.x)) + x_372);
  let x_375 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_376 : vec4<f32> = u_xlat0;
  let x_379 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_375 * vec4<f32>(x_376.z, x_376.z, x_376.z, x_376.z)) + x_379);
  let x_383 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_384 : vec4<f32> = u_xlat0;
  let x_387 : vec4<f32> = u_xlat1;
  vs_TEXCOORD8 = ((x_383 * vec4<f32>(x_384.w, x_384.w, x_384.w, x_384.w)) + x_387);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD9_1 : f32,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(5)
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(6)
  vs_TEXCOORD5_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD9, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5);
}

