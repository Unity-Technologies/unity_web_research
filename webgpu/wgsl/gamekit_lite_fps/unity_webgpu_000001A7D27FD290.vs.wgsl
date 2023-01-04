let      UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;
struct UnityDrawCallInfo {
  unity_BaseInstanceID : i32,
  unity_InstanceCount : i32,
}

struct unity_Builtins0Array_Type {
  unity_ObjectToWorldArray : mat4x4<f32>,
  unity_WorldToObjectArray : mat4x4<f32>,
}

type Arr = array<unity_Builtins0Array_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_PerDraw0 {
  unity_Builtins0Array : Arr,
}

struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlati0 : i32;

var<private> gl_InstanceIndex : i32;

@group(0) @binding(9) var<uniform> x_14 : UnityDrawCallInfo;

var<private> u_xlat1 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(10) var<uniform> x_38 : UnityInstancing_PerDraw0;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(8) var<uniform> x_91 : VGlobals;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlat9 : f32;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_11 : i32 = gl_InstanceIndex;
  let x_18 : i32 = x_14.unity_BaseInstanceID;
  u_xlati0 = (x_11 + x_18);
  let x_20 : i32 = u_xlati0;
  u_xlati0 = (x_20 << bitcast<u32>(3i));
  let x_29 : vec4<f32> = in_POSITION0;
  let x_39 : i32 = u_xlati0;
  let x_45 : vec4<f32> = x_38.unity_Builtins0Array[(x_39 / 8i)].unity_ObjectToWorldArray[1i];
  u_xlat1 = (vec4<f32>(x_29.y, x_29.y, x_29.y, x_29.y) * x_45);
  let x_47 : i32 = u_xlati0;
  let x_50 : vec4<f32> = x_38.unity_Builtins0Array[(x_47 / 8i)].unity_ObjectToWorldArray[0i];
  let x_51 : vec4<f32> = in_POSITION0;
  let x_54 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_50 * vec4<f32>(x_51.x, x_51.x, x_51.x, x_51.x)) + x_54);
  let x_56 : i32 = u_xlati0;
  let x_60 : vec4<f32> = x_38.unity_Builtins0Array[(x_56 / 8i)].unity_ObjectToWorldArray[2i];
  let x_61 : vec4<f32> = in_POSITION0;
  let x_64 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_60 * vec4<f32>(x_61.z, x_61.z, x_61.z, x_61.z)) + x_64);
  let x_67 : vec4<f32> = u_xlat1;
  let x_68 : i32 = u_xlati0;
  let x_71 : vec4<f32> = x_38.unity_Builtins0Array[(x_68 / 8i)].unity_ObjectToWorldArray[3i];
  u_xlat2 = (x_67 + x_71);
  let x_76 : i32 = u_xlati0;
  let x_79 : vec4<f32> = x_38.unity_Builtins0Array[(x_76 / 8i)].unity_ObjectToWorldArray[3i];
  let x_81 : vec4<f32> = in_POSITION0;
  let x_84 : vec4<f32> = u_xlat1;
  vs_TEXCOORD1 = ((vec3<f32>(x_79.x, x_79.y, x_79.z) * vec3<f32>(x_81.w, x_81.w, x_81.w)) + vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_87 : vec4<f32> = u_xlat2;
  let x_94 : vec4<f32> = x_91.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_87.y, x_87.y, x_87.y, x_87.y) * x_94);
  let x_97 : vec4<f32> = x_91.unity_MatrixVP[0i];
  let x_98 : vec4<f32> = u_xlat2;
  let x_101 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_97 * vec4<f32>(x_98.x, x_98.x, x_98.x, x_98.x)) + x_101);
  let x_104 : vec4<f32> = x_91.unity_MatrixVP[2i];
  let x_105 : vec4<f32> = u_xlat2;
  let x_108 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_104 * vec4<f32>(x_105.z, x_105.z, x_105.z, x_105.z)) + x_108);
  let x_116 : vec4<f32> = x_91.unity_MatrixVP[3i];
  let x_117 : vec4<f32> = u_xlat2;
  let x_120 : vec4<f32> = u_xlat1;
  gl_Position = ((x_116 * vec4<f32>(x_117.w, x_117.w, x_117.w, x_117.w)) + x_120);
  let x_126 : vec3<f32> = in_NORMAL0;
  let x_127 : i32 = u_xlati0;
  let x_130 : vec4<f32> = x_38.unity_Builtins0Array[(x_127 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat1.x = dot(x_126, vec3<f32>(x_130.x, x_130.y, x_130.z));
  let x_136 : vec3<f32> = in_NORMAL0;
  let x_137 : i32 = u_xlati0;
  let x_140 : vec4<f32> = x_38.unity_Builtins0Array[(x_137 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat1.y = dot(x_136, vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_144 : vec3<f32> = in_NORMAL0;
  let x_145 : i32 = u_xlati0;
  let x_148 : vec4<f32> = x_38.unity_Builtins0Array[(x_145 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat1.z = dot(x_144, vec3<f32>(x_148.x, x_148.y, x_148.z));
  let x_155 : vec4<f32> = u_xlat1;
  let x_157 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_155.x, x_155.y, x_155.z), vec3<f32>(x_157.x, x_157.y, x_157.z));
  let x_162 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_162);
  let x_165 : vec3<f32> = u_xlat0;
  let x_167 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_165.x, x_165.x, x_165.x) * vec3<f32>(x_167.x, x_167.y, x_167.z));
  let x_171 : vec3<f32> = u_xlat0;
  vs_TEXCOORD0 = x_171;
  let x_174 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_174;
  let x_180 : vec2<f32> = in_TEXCOORD0;
  let x_183 : vec4<f32> = x_91.x_MainTex_ST;
  let x_187 : vec4<f32> = x_91.x_MainTex_ST;
  vs_TEXCOORD2 = ((x_180 * vec2<f32>(x_183.x, x_183.y)) + vec2<f32>(x_187.z, x_187.w));
  let x_192 : f32 = u_xlat2.y;
  let x_196 : f32 = x_91.unity_MatrixV[1i].z;
  u_xlat9 = (x_192 * x_196);
  let x_199 : f32 = x_91.unity_MatrixV[0i].z;
  let x_201 : f32 = u_xlat2.x;
  let x_203 : f32 = u_xlat9;
  u_xlat9 = ((x_199 * x_201) + x_203);
  let x_206 : f32 = x_91.unity_MatrixV[2i].z;
  let x_208 : f32 = u_xlat2.z;
  let x_210 : f32 = u_xlat9;
  u_xlat9 = ((x_206 * x_208) + x_210);
  let x_213 : f32 = x_91.unity_MatrixV[3i].z;
  let x_216 : f32 = u_xlat2.w;
  let x_218 : f32 = u_xlat9;
  u_xlat9 = ((x_213 * x_216) + x_218);
  let x_221 : f32 = u_xlat9;
  vs_TEXCOORD3.z = -(x_221);
  let x_224 : vec4<f32> = u_xlat2;
  let x_227 : vec4<f32> = x_91.unity_MatrixVP[1i];
  let x_229 : vec3<f32> = (vec3<f32>(x_224.y, x_224.y, x_224.y) * vec3<f32>(x_227.x, x_227.y, x_227.w));
  let x_230 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_233 : vec4<f32> = x_91.unity_MatrixVP[0i];
  let x_235 : vec4<f32> = u_xlat2;
  let x_238 : vec4<f32> = u_xlat1;
  let x_240 : vec3<f32> = ((vec3<f32>(x_233.x, x_233.y, x_233.w) * vec3<f32>(x_235.x, x_235.x, x_235.x)) + vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_241 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_244 : vec4<f32> = x_91.unity_MatrixVP[2i];
  let x_246 : vec4<f32> = u_xlat2;
  let x_249 : vec4<f32> = u_xlat1;
  let x_251 : vec3<f32> = ((vec3<f32>(x_244.x, x_244.y, x_244.w) * vec3<f32>(x_246.z, x_246.z, x_246.z)) + vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_252 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_255 : vec4<f32> = x_91.unity_MatrixVP[3i];
  let x_257 : vec4<f32> = u_xlat2;
  let x_260 : vec4<f32> = u_xlat1;
  let x_262 : vec3<f32> = ((vec3<f32>(x_255.x, x_255.y, x_255.w) * vec3<f32>(x_257.w, x_257.w, x_257.w)) + vec3<f32>(x_260.x, x_260.y, x_260.z));
  let x_263 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_265 : vec4<f32> = u_xlat1;
  let x_269 : vec2<f32> = (vec2<f32>(x_265.x, x_265.z) * vec2<f32>(0.5f, 0.5f));
  let x_270 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_269.x, x_270.y, x_269.y, x_270.w);
  let x_273 : f32 = u_xlat1.y;
  let x_275 : f32 = x_91.x_ProjectionParams.x;
  u_xlat9 = (x_273 * x_275);
  let x_278 : f32 = u_xlat1.z;
  vs_TEXCOORD3.w = x_278;
  let x_280 : f32 = u_xlat9;
  u_xlat2.w = (x_280 * 0.5f);
  let x_283 : vec4<f32> = u_xlat2;
  let x_285 : vec4<f32> = u_xlat2;
  let x_287 : vec2<f32> = (vec2<f32>(x_283.z, x_283.z) + vec2<f32>(x_285.x, x_285.w));
  let x_288 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_287.x, x_287.y, x_288.z, x_288.w);
  let x_291 : f32 = u_xlat0.y;
  let x_293 : f32 = u_xlat0.y;
  u_xlat9 = (x_291 * x_293);
  let x_296 : f32 = u_xlat0.x;
  let x_298 : f32 = u_xlat0.x;
  let x_300 : f32 = u_xlat9;
  u_xlat9 = ((x_296 * x_298) + -(x_300));
  let x_303 : vec3<f32> = u_xlat0;
  let x_305 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec4<f32>(x_303.y, x_303.z, x_303.z, x_303.x) * vec4<f32>(x_305.x, x_305.y, x_305.z, x_305.z));
  let x_309 : vec4<f32> = x_91.unity_SHBr;
  let x_310 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(x_309, x_310);
  let x_314 : vec4<f32> = x_91.unity_SHBg;
  let x_315 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(x_314, x_315);
  let x_319 : vec4<f32> = x_91.unity_SHBb;
  let x_320 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(x_319, x_320);
  let x_326 : vec4<f32> = x_91.unity_SHC;
  let x_328 : f32 = u_xlat9;
  let x_331 : vec3<f32> = u_xlat0;
  vs_TEXCOORD4 = ((vec3<f32>(x_326.x, x_326.y, x_326.z) * vec3<f32>(x_328, x_328, x_328)) + x_331);
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_338 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_338);
  return;
}

struct main_out {
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(2)
  vs_COLOR0_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec2<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD4);
}

