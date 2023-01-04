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
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlati0 : i32;

var<private> gl_InstanceIndex : i32;

@group(0) @binding(11) var<uniform> x_14 : UnityDrawCallInfo;

var<private> u_xlat1 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(12) var<uniform> x_38 : UnityInstancing_PerDraw0;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(10) var<uniform> x_91 : VGlobals;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlat9 : f32;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

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
  let x_111 : vec4<f32> = x_91.unity_MatrixVP[3i];
  let x_112 : vec4<f32> = u_xlat2;
  let x_115 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_111 * vec4<f32>(x_112.w, x_112.w, x_112.w, x_112.w)) + x_115);
  let x_122 : vec4<f32> = u_xlat1;
  gl_Position = x_122;
  let x_127 : vec3<f32> = in_NORMAL0;
  let x_128 : i32 = u_xlati0;
  let x_131 : vec4<f32> = x_38.unity_Builtins0Array[(x_128 / 8i)].unity_WorldToObjectArray[0i];
  u_xlat2.x = dot(x_127, vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_137 : vec3<f32> = in_NORMAL0;
  let x_138 : i32 = u_xlati0;
  let x_141 : vec4<f32> = x_38.unity_Builtins0Array[(x_138 / 8i)].unity_WorldToObjectArray[1i];
  u_xlat2.y = dot(x_137, vec3<f32>(x_141.x, x_141.y, x_141.z));
  let x_145 : vec3<f32> = in_NORMAL0;
  let x_146 : i32 = u_xlati0;
  let x_149 : vec4<f32> = x_38.unity_Builtins0Array[(x_146 / 8i)].unity_WorldToObjectArray[2i];
  u_xlat2.z = dot(x_145, vec3<f32>(x_149.x, x_149.y, x_149.z));
  let x_155 : vec4<f32> = u_xlat2;
  let x_157 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_155.x, x_155.y, x_155.z), vec3<f32>(x_157.x, x_157.y, x_157.z));
  let x_162 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_162);
  let x_165 : vec4<f32> = u_xlat0;
  let x_167 : vec4<f32> = u_xlat2;
  let x_169 : vec3<f32> = (vec3<f32>(x_165.x, x_165.x, x_165.x) * vec3<f32>(x_167.x, x_167.y, x_167.z));
  let x_170 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_173 : vec4<f32> = u_xlat0;
  vs_TEXCOORD0 = vec3<f32>(x_173.x, x_173.y, x_173.z);
  let x_177 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_177;
  let x_183 : vec2<f32> = in_TEXCOORD0;
  let x_186 : vec4<f32> = x_91.x_MainTex_ST;
  let x_190 : vec4<f32> = x_91.x_MainTex_ST;
  vs_TEXCOORD2 = ((x_183 * vec2<f32>(x_186.x, x_186.y)) + vec2<f32>(x_190.z, x_190.w));
  let x_195 : f32 = u_xlat0.y;
  let x_197 : f32 = u_xlat0.y;
  u_xlat9 = (x_195 * x_197);
  let x_200 : f32 = u_xlat0.x;
  let x_202 : f32 = u_xlat0.x;
  let x_204 : f32 = u_xlat9;
  u_xlat9 = ((x_200 * x_202) + -(x_204));
  let x_207 : vec4<f32> = u_xlat0;
  let x_209 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec4<f32>(x_207.y, x_207.z, x_207.z, x_207.x) * vec4<f32>(x_209.x, x_209.y, x_209.z, x_209.z));
  let x_213 : vec4<f32> = x_91.unity_SHBr;
  let x_214 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(x_213, x_214);
  let x_218 : vec4<f32> = x_91.unity_SHBg;
  let x_219 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(x_218, x_219);
  let x_223 : vec4<f32> = x_91.unity_SHBb;
  let x_224 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(x_223, x_224);
  let x_230 : vec4<f32> = x_91.unity_SHC;
  let x_232 : f32 = u_xlat9;
  let x_235 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = ((vec3<f32>(x_230.x, x_230.y, x_230.z) * vec3<f32>(x_232, x_232, x_232)) + vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_239 : f32 = u_xlat1.y;
  let x_242 : f32 = x_91.x_ProjectionParams.x;
  u_xlat0.x = (x_239 * x_242);
  let x_246 : f32 = u_xlat0.x;
  u_xlat0.w = (x_246 * 0.5f);
  let x_251 : vec4<f32> = u_xlat1;
  let x_254 : vec2<f32> = (vec2<f32>(x_251.x, x_251.w) * vec2<f32>(0.5f, 0.5f));
  let x_255 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_254.x, x_255.y, x_254.y, x_255.w);
  let x_258 : vec4<f32> = u_xlat1;
  let x_259 : vec2<f32> = vec2<f32>(x_258.z, x_258.w);
  let x_260 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_260.x, x_260.y, x_259.x, x_259.y);
  let x_262 : vec4<f32> = u_xlat0;
  let x_264 : vec4<f32> = u_xlat0;
  let x_266 : vec2<f32> = (vec2<f32>(x_262.z, x_262.z) + vec2<f32>(x_264.x, x_264.w));
  let x_267 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_266.x, x_266.y, x_267.z, x_267.w);
  let x_271 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_271);
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
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec4<f32>,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD5);
}

