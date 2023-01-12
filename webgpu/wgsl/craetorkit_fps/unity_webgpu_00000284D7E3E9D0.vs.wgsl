const    UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;
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
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_LightShadowBias : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
}

var<private> gl_InstanceIndex : i32;

@group(1) @binding(1) var<uniform> x_14 : UnityDrawCallInfo;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_38 : UnityInstancing_PerDraw0;

@group(1) @binding(0) var<uniform> x_80 : VGlobals;

var<private> in_NORMAL0 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlat1 : vec4<f32>;
  var u_xlatb3 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat9 : f32;
  var u_xlat6 : f32;
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
  let x_66 : i32 = u_xlati0;
  let x_69 : vec4<f32> = x_38.unity_Builtins0Array[(x_66 / 8i)].unity_ObjectToWorldArray[3i];
  let x_70 : vec4<f32> = in_POSITION0;
  let x_73 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_69 * vec4<f32>(x_70.w, x_70.w, x_70.w, x_70.w)) + x_73);
  let x_84 : f32 = x_80.unity_LightShadowBias.z;
  u_xlatb3 = !((x_84 == 0.0f));
  let x_87 : bool = u_xlatb3;
  if (x_87) {
    let x_95 : vec3<f32> = in_NORMAL0;
    let x_96 : i32 = u_xlati0;
    let x_99 : vec4<f32> = x_38.unity_Builtins0Array[(x_96 / 8i)].unity_WorldToObjectArray[0i];
    u_xlat2.x = dot(x_95, vec3<f32>(x_99.x, x_99.y, x_99.z));
    let x_105 : vec3<f32> = in_NORMAL0;
    let x_106 : i32 = u_xlati0;
    let x_109 : vec4<f32> = x_38.unity_Builtins0Array[(x_106 / 8i)].unity_WorldToObjectArray[1i];
    u_xlat2.y = dot(x_105, vec3<f32>(x_109.x, x_109.y, x_109.z));
    let x_114 : vec3<f32> = in_NORMAL0;
    let x_115 : i32 = u_xlati0;
    let x_118 : vec4<f32> = x_38.unity_Builtins0Array[(x_115 / 8i)].unity_WorldToObjectArray[2i];
    u_xlat2.z = dot(x_114, vec3<f32>(x_118.x, x_118.y, x_118.z));
    let x_123 : vec3<f32> = u_xlat2;
    let x_124 : vec3<f32> = u_xlat2;
    u_xlat0.x = dot(x_123, x_124);
    let x_128 : f32 = u_xlat0.x;
    u_xlat0.x = inverseSqrt(x_128);
    let x_131 : vec4<f32> = u_xlat0;
    let x_133 : vec3<f32> = u_xlat2;
    let x_134 : vec3<f32> = (vec3<f32>(x_131.x, x_131.x, x_131.x) * x_133);
    let x_135 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
    let x_137 : vec4<f32> = u_xlat1;
    let x_141 : vec4<f32> = x_80.x_WorldSpaceLightPos0;
    let x_145 : vec4<f32> = x_80.x_WorldSpaceLightPos0;
    u_xlat2 = ((-(vec3<f32>(x_137.x, x_137.y, x_137.z)) * vec3<f32>(x_141.w, x_141.w, x_141.w)) + vec3<f32>(x_145.x, x_145.y, x_145.z));
    let x_149 : vec3<f32> = u_xlat2;
    let x_150 : vec3<f32> = u_xlat2;
    u_xlat9 = dot(x_149, x_150);
    let x_152 : f32 = u_xlat9;
    u_xlat9 = inverseSqrt(x_152);
    let x_154 : f32 = u_xlat9;
    let x_156 : vec3<f32> = u_xlat2;
    u_xlat2 = (vec3<f32>(x_154, x_154, x_154) * x_156);
    let x_158 : vec4<f32> = u_xlat0;
    let x_160 : vec3<f32> = u_xlat2;
    u_xlat9 = dot(vec3<f32>(x_158.x, x_158.y, x_158.z), x_160);
    let x_162 : f32 = u_xlat9;
    let x_164 : f32 = u_xlat9;
    u_xlat9 = ((-(x_162) * x_164) + 1.0f);
    let x_168 : f32 = u_xlat9;
    u_xlat9 = sqrt(x_168);
    let x_170 : f32 = u_xlat9;
    let x_172 : f32 = x_80.unity_LightShadowBias.z;
    u_xlat9 = (x_170 * x_172);
    let x_174 : vec4<f32> = u_xlat0;
    let x_177 : f32 = u_xlat9;
    let x_180 : vec4<f32> = u_xlat1;
    let x_182 : vec3<f32> = ((-(vec3<f32>(x_174.x, x_174.y, x_174.z)) * vec3<f32>(x_177, x_177, x_177)) + vec3<f32>(x_180.x, x_180.y, x_180.z));
    let x_183 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  }
  let x_185 : vec4<f32> = u_xlat1;
  let x_188 : vec4<f32> = x_80.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_185.y, x_185.y, x_185.y, x_185.y) * x_188);
  let x_191 : vec4<f32> = x_80.unity_MatrixVP[0i];
  let x_192 : vec4<f32> = u_xlat1;
  let x_195 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_191 * vec4<f32>(x_192.x, x_192.x, x_192.x, x_192.x)) + x_195);
  let x_198 : vec4<f32> = x_80.unity_MatrixVP[2i];
  let x_199 : vec4<f32> = u_xlat1;
  let x_202 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_198 * vec4<f32>(x_199.z, x_199.z, x_199.z, x_199.z)) + x_202);
  let x_205 : vec4<f32> = x_80.unity_MatrixVP[3i];
  let x_206 : vec4<f32> = u_xlat1;
  let x_209 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_205 * vec4<f32>(x_206.w, x_206.w, x_206.w, x_206.w)) + x_209);
  let x_212 : f32 = x_80.unity_LightShadowBias.x;
  let x_215 : f32 = u_xlat0.w;
  u_xlat1.x = (x_212 / x_215);
  let x_219 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_219, 0.0f);
  let x_223 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_223, -1.0f);
  let x_229 : f32 = u_xlat0.z;
  let x_231 : f32 = u_xlat1.x;
  u_xlat6 = (x_229 + x_231);
  let x_234 : f32 = u_xlat0.w;
  let x_235 : f32 = u_xlat6;
  u_xlat1.x = min(x_234, x_235);
  let x_238 : f32 = u_xlat6;
  let x_241 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_238) + x_241);
  let x_249 : f32 = x_80.unity_LightShadowBias.y;
  let x_251 : f32 = u_xlat1.x;
  let x_253 : f32 = u_xlat6;
  gl_Position.z = ((x_249 * x_251) + x_253);
  let x_257 : vec4<f32> = u_xlat0;
  let x_258 : vec3<f32> = vec3<f32>(x_257.x, x_257.y, x_257.w);
  let x_261 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_258.x, x_258.y, x_261.z, x_258.z);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position);
}

