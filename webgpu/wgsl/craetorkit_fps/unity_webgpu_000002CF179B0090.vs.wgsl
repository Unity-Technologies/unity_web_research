const    UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;
struct VGlobals {
  unity_MatrixVP : mat4x4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_MetaVertexControl : vec4<u32>,
  x_MainTex_ST : vec4<f32>,
}

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

var<private> in_POSITION0 : vec4<f32>;

var<private> in_TEXCOORD1 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_35 : VGlobals;

var<private> in_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> gl_InstanceIndex : i32;

@group(1) @binding(2) var<uniform> x_157 : UnityDrawCallInfo;

@group(1) @binding(3) var<uniform> x_172 : UnityInstancing_PerDraw0;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlatb0 : bool;
  var u_xlat0 : vec4<f32>;
  var x_58 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlat1 : vec4<f32>;
  var x_95 : vec3<f32>;
  var u_xlati0 : i32;
  var u_xlat2 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : f32 = in_POSITION0.z;
  u_xlatb0 = (0.0f < x_18);
  let x_22 : bool = u_xlatb0;
  u_xlat0.z = select(0.0f, 0.0001f, x_22);
  let x_29 : vec4<f32> = in_TEXCOORD1;
  let x_40 : vec4<f32> = x_35.unity_LightmapST;
  let x_44 : vec4<f32> = x_35.unity_LightmapST;
  let x_46 : vec2<f32> = ((vec2<f32>(x_29.x, x_29.y) * vec2<f32>(x_40.x, x_40.y)) + vec2<f32>(x_44.z, x_44.w));
  let x_47 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_46.x, x_46.y, x_47.z, x_47.w);
  let x_54 : u32 = x_35.unity_MetaVertexControl.x;
  if ((x_54 != 0u)) {
    let x_61 : vec4<f32> = u_xlat0;
    x_58 = vec3<f32>(x_61.x, x_61.y, x_61.z);
  } else {
    let x_64 : vec4<f32> = in_POSITION0;
    x_58 = vec3<f32>(x_64.x, x_64.y, x_64.z);
  }
  let x_66 : vec3<f32> = x_58;
  let x_67 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_66.x, x_66.y, x_66.z, x_67.w);
  let x_71 : f32 = u_xlat0.z;
  u_xlatb6 = (0.0f < x_71);
  let x_74 : bool = u_xlatb6;
  u_xlat1.z = select(0.0f, 0.0001f, x_74);
  let x_78 : vec4<f32> = in_TEXCOORD2;
  let x_82 : vec4<f32> = x_35.unity_DynamicLightmapST;
  let x_86 : vec4<f32> = x_35.unity_DynamicLightmapST;
  let x_88 : vec2<f32> = ((vec2<f32>(x_78.x, x_78.y) * vec2<f32>(x_82.x, x_82.y)) + vec2<f32>(x_86.z, x_86.w));
  let x_89 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_88.x, x_88.y, x_89.z, x_89.w);
  let x_93 : u32 = x_35.unity_MetaVertexControl.y;
  if ((x_93 != 0u)) {
    let x_98 : vec4<f32> = u_xlat1;
    x_95 = vec3<f32>(x_98.x, x_98.y, x_98.z);
  } else {
    let x_101 : vec4<f32> = u_xlat0;
    x_95 = vec3<f32>(x_101.x, x_101.y, x_101.z);
  }
  let x_103 : vec3<f32> = x_95;
  let x_104 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_103.x, x_103.y, x_103.z, x_104.w);
  let x_106 : vec4<f32> = u_xlat0;
  let x_110 : vec4<f32> = x_35.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_106.y, x_106.y, x_106.y, x_106.y) * x_110);
  let x_113 : vec4<f32> = x_35.unity_MatrixVP[0i];
  let x_114 : vec4<f32> = u_xlat0;
  let x_117 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_113 * vec4<f32>(x_114.x, x_114.x, x_114.x, x_114.x)) + x_117);
  let x_120 : vec4<f32> = x_35.unity_MatrixVP[2i];
  let x_121 : vec4<f32> = u_xlat0;
  let x_124 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_120 * vec4<f32>(x_121.z, x_121.z, x_121.z, x_121.z)) + x_124);
  let x_130 : vec4<f32> = u_xlat0;
  let x_132 : vec4<f32> = x_35.unity_MatrixVP[3i];
  gl_Position = (x_130 + x_132);
  let x_139 : vec4<f32> = in_TEXCOORD0;
  let x_143 : vec4<f32> = x_35.x_MainTex_ST;
  let x_147 : vec4<f32> = x_35.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_139.x, x_139.y) * vec2<f32>(x_143.x, x_143.y)) + vec2<f32>(x_147.z, x_147.w));
  let x_154 : i32 = gl_InstanceIndex;
  let x_160 : i32 = x_157.unity_BaseInstanceID;
  u_xlati0 = (x_154 + x_160);
  let x_162 : i32 = u_xlati0;
  u_xlati0 = (x_162 << bitcast<u32>(3i));
  let x_165 : vec4<f32> = in_POSITION0;
  let x_173 : i32 = u_xlati0;
  let x_177 : vec4<f32> = x_172.unity_Builtins0Array[(x_173 / 8i)].unity_ObjectToWorldArray[1i];
  u_xlat2 = (vec3<f32>(x_165.y, x_165.y, x_165.y) * vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : i32 = u_xlati0;
  let x_183 : vec4<f32> = x_172.unity_Builtins0Array[(x_180 / 8i)].unity_ObjectToWorldArray[0i];
  let x_185 : vec4<f32> = in_POSITION0;
  let x_188 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_183.x, x_183.y, x_183.z) * vec3<f32>(x_185.x, x_185.x, x_185.x)) + x_188);
  let x_190 : i32 = u_xlati0;
  let x_193 : vec4<f32> = x_172.unity_Builtins0Array[(x_190 / 8i)].unity_ObjectToWorldArray[2i];
  let x_195 : vec4<f32> = in_POSITION0;
  let x_198 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_193.x, x_193.y, x_193.z) * vec3<f32>(x_195.z, x_195.z, x_195.z)) + x_198);
  let x_202 : i32 = u_xlati0;
  let x_205 : vec4<f32> = x_172.unity_Builtins0Array[(x_202 / 8i)].unity_ObjectToWorldArray[3i];
  let x_207 : vec4<f32> = in_POSITION0;
  let x_210 : vec3<f32> = u_xlat2;
  vs_TEXCOORD1 = ((vec3<f32>(x_205.x, x_205.y, x_205.z) * vec3<f32>(x_207.w, x_207.w, x_207.w)) + x_210);
  let x_214 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_214);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD1_param : vec4<f32>, @location(3) in_TEXCOORD2_param : vec4<f32>, @location(1) in_TEXCOORD0_param : vec4<f32>, @builtin(instance_index) gl_InstanceIndex_param : u32) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD2 = in_TEXCOORD2_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0);
}

