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

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
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
  let x_48 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_50 : vec4<f32> = in_POSITION0;
  let x_53 : vec4<f32> = u_xlat0;
  let x_55 : vec3<f32> = ((vec3<f32>(x_48.x, x_48.y, x_48.z) * vec3<f32>(x_50.w, x_50.w, x_50.w)) + vec3<f32>(x_53.x, x_53.y, x_53.z));
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_59 : vec4<f32> = u_xlat1;
  let x_63 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_59.y, x_59.y, x_59.y, x_59.y) * x_63);
  let x_66 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_67 : vec4<f32> = u_xlat1;
  let x_70 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_66 * vec4<f32>(x_67.x, x_67.x, x_67.x, x_67.x)) + x_70);
  let x_73 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_74 : vec4<f32> = u_xlat1;
  let x_77 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_73 * vec4<f32>(x_74.z, x_74.z, x_74.z, x_74.z)) + x_77);
  let x_80 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_81 : vec4<f32> = u_xlat1;
  let x_84 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_80 * vec4<f32>(x_81.w, x_81.w, x_81.w, x_81.w)) + x_84);
  let x_92 : vec4<f32> = u_xlat2;
  gl_Position = x_92;
  let x_98 : vec4<f32> = in_TEXCOORD0;
  let x_102 : vec4<f32> = x_18.x_MainTex_ST;
  let x_106 : vec4<f32> = x_18.x_MainTex_ST;
  let x_108 : vec2<f32> = ((vec2<f32>(x_98.x, x_98.y) * vec2<f32>(x_102.x, x_102.y)) + vec2<f32>(x_106.z, x_106.w));
  let x_109 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_109.w);
  let x_111 : vec4<f32> = in_TEXCOORD0;
  let x_115 : vec4<f32> = x_18.x_Normal_ST;
  let x_119 : vec4<f32> = x_18.x_Normal_ST;
  let x_121 : vec2<f32> = ((vec2<f32>(x_111.x, x_111.y) * vec2<f32>(x_115.x, x_115.y)) + vec2<f32>(x_119.z, x_119.w));
  let x_122 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_122.x, x_122.y, x_121.x, x_121.y);
  let x_128 : vec3<f32> = in_NORMAL0;
  let x_130 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat3.y = dot(x_128, vec3<f32>(x_130.x, x_130.y, x_130.z));
  let x_135 : vec3<f32> = in_NORMAL0;
  let x_137 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat3.z = dot(x_135, vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_142 : vec3<f32> = in_NORMAL0;
  let x_144 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat3.x = dot(x_142, vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_150 : vec3<f32> = u_xlat3;
  let x_151 : vec3<f32> = u_xlat3;
  u_xlat18 = dot(x_150, x_151);
  let x_153 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_153);
  let x_155 : f32 = u_xlat18;
  let x_157 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_155, x_155, x_155) * x_157);
  let x_161 : vec4<f32> = in_TANGENT0;
  let x_164 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat4 = (vec3<f32>(x_161.y, x_161.y, x_161.y) * vec3<f32>(x_164.y, x_164.z, x_164.x));
  let x_168 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_170 : vec4<f32> = in_TANGENT0;
  let x_173 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_168.y, x_168.z, x_168.x) * vec3<f32>(x_170.x, x_170.x, x_170.x)) + x_173);
  let x_176 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_178 : vec4<f32> = in_TANGENT0;
  let x_181 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_176.y, x_176.z, x_176.x) * vec3<f32>(x_178.z, x_178.z, x_178.z)) + x_181);
  let x_183 : vec3<f32> = u_xlat4;
  let x_184 : vec3<f32> = u_xlat4;
  u_xlat18 = dot(x_183, x_184);
  let x_186 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_186);
  let x_188 : f32 = u_xlat18;
  let x_190 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_188, x_188, x_188) * x_190);
  let x_193 : vec3<f32> = u_xlat3;
  let x_194 : vec3<f32> = u_xlat4;
  u_xlat5 = (x_193 * x_194);
  let x_196 : vec3<f32> = u_xlat3;
  let x_198 : vec3<f32> = u_xlat4;
  let x_201 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_196.z, x_196.x, x_196.y) * vec3<f32>(x_198.y, x_198.z, x_198.x)) + -(x_201));
  let x_207 : f32 = in_TANGENT0.w;
  let x_211 : f32 = x_18.unity_WorldTransformParams.w;
  u_xlat18 = (x_207 * x_211);
  let x_213 : f32 = u_xlat18;
  let x_215 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_213, x_213, x_213) * x_215);
  let x_220 : f32 = u_xlat5.x;
  vs_TEXCOORD1.y = x_220;
  let x_224 : f32 = u_xlat4.z;
  vs_TEXCOORD1.x = x_224;
  let x_227 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_227;
  let x_231 : f32 = u_xlat4.x;
  vs_TEXCOORD2.x = x_231;
  let x_235 : f32 = u_xlat4.y;
  vs_TEXCOORD3.x = x_235;
  let x_238 : f32 = u_xlat3.z;
  vs_TEXCOORD2.z = x_238;
  let x_241 : f32 = u_xlat3.x;
  vs_TEXCOORD3.z = x_241;
  let x_244 : f32 = u_xlat5.y;
  vs_TEXCOORD2.y = x_244;
  let x_247 : f32 = u_xlat5.z;
  vs_TEXCOORD3.y = x_247;
  let x_250 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = vec3<f32>(x_250.x, x_250.y, x_250.z);
  let x_252 : vec4<f32> = u_xlat0;
  let x_256 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_258 : vec3<f32> = (vec3<f32>(x_252.x, x_252.y, x_252.z) + -(x_256));
  let x_259 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_261 : vec4<f32> = u_xlat0;
  let x_263 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_261.x, x_261.y, x_261.z), vec3<f32>(x_263.x, x_263.y, x_263.z));
  let x_270 : f32 = u_xlat0.x;
  vs_TEXCOORD7.z = sqrt(x_270);
  let x_275 : f32 = u_xlat1.y;
  let x_278 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat0.x = (x_275 * x_278);
  let x_282 : f32 = x_18.unity_MatrixV[0i].z;
  let x_284 : f32 = u_xlat1.x;
  let x_287 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_282 * x_284) + x_287);
  let x_291 : f32 = x_18.unity_MatrixV[2i].z;
  let x_293 : f32 = u_xlat1.z;
  let x_296 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_291 * x_293) + x_296);
  let x_300 : f32 = x_18.unity_MatrixV[3i].z;
  let x_302 : f32 = u_xlat1.w;
  let x_305 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_300 * x_302) + x_305);
  let x_310 : f32 = u_xlat0.x;
  vs_TEXCOORD5.z = -(x_310);
  let x_314 : f32 = u_xlat2.y;
  let x_316 : f32 = x_18.x_ProjectionParams.x;
  u_xlat0.x = (x_314 * x_316);
  let x_320 : f32 = u_xlat0.x;
  u_xlat0.w = (x_320 * 0.5f);
  let x_324 : vec4<f32> = u_xlat2;
  let x_327 : vec2<f32> = (vec2<f32>(x_324.x, x_324.w) * vec2<f32>(0.5f, 0.5f));
  let x_328 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_327.x, x_328.y, x_327.y, x_328.w);
  let x_330 : vec4<f32> = u_xlat0;
  let x_332 : vec4<f32> = u_xlat0;
  let x_334 : vec2<f32> = (vec2<f32>(x_330.z, x_330.z) + vec2<f32>(x_332.x, x_332.w));
  let x_335 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_334.x, x_334.y, x_335.z, x_335.w);
  let x_339 : vec4<f32> = u_xlat2;
  let x_344 : vec4<f32> = u_xlat0;
  let x_346 : vec2<f32> = ((vec2<f32>(x_339.x, x_339.y) * vec2<f32>(0.5f, -0.5f)) + vec2<f32>(x_344.z, x_344.z));
  let x_347 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_346.x, x_346.y, x_347.z, x_347.w);
  let x_350 : f32 = u_xlat2.w;
  vs_TEXCOORD5.w = x_350;
  let x_352 : vec4<f32> = u_xlat2;
  let x_353 : vec2<f32> = vec2<f32>(x_352.z, x_352.w);
  let x_354 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_354.x, x_354.y, x_353.x, x_353.y);
  let x_356 : vec4<f32> = in_POSITION0;
  let x_357 : vec2<f32> = vec2<f32>(x_356.x, x_356.z);
  let x_358 : vec3<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec3<f32>(x_357.x, x_357.y, x_358.z);
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
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5);
}

