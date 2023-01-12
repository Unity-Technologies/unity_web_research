struct PGlobals {
  x_Color : vec4<f32>,
  unity_MetaFragmentControl : vec4<u32>,
  unity_OneOverOutputBoost : f32,
  unity_MaxOutputValue : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_35 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat3 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  let x_26 : vec3<f32> = vec3<f32>(x_24.x, x_24.y, x_24.z);
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_26.z, x_27.w);
  let x_29 : vec4<f32> = u_xlat0;
  let x_40 : vec4<f32> = x_35.x_Color;
  let x_42 : vec3<f32> = (vec3<f32>(x_29.x, x_29.y, x_29.z) * vec3<f32>(x_40.x, x_40.y, x_40.z));
  let x_43 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_42.x, x_42.y, x_42.z, x_43.w);
  let x_45 : vec4<f32> = u_xlat0;
  let x_47 : vec3<f32> = log2(vec3<f32>(x_45.x, x_45.y, x_45.z));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_47.z, x_48.w);
  let x_55 : f32 = x_35.unity_OneOverOutputBoost;
  u_xlat3 = x_55;
  let x_56 : f32 = u_xlat3;
  u_xlat3 = clamp(x_56, 0.0f, 1.0f);
  let x_60 : vec4<f32> = u_xlat0;
  let x_62 : f32 = u_xlat3;
  let x_64 : vec3<f32> = (vec3<f32>(x_60.x, x_60.y, x_60.z) * vec3<f32>(x_62, x_62, x_62));
  let x_65 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_64.x, x_64.y, x_64.z, x_65.w);
  let x_67 : vec4<f32> = u_xlat0;
  let x_69 : vec3<f32> = exp2(vec3<f32>(x_67.x, x_67.y, x_67.z));
  let x_70 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_72 : vec4<f32> = u_xlat0;
  let x_76 : f32 = x_35.unity_MaxOutputValue;
  let x_78 : f32 = x_35.unity_MaxOutputValue;
  let x_80 : f32 = x_35.unity_MaxOutputValue;
  let x_81 : vec3<f32> = vec3<f32>(x_76, x_78, x_80);
  let x_86 : vec3<f32> = min(vec3<f32>(x_72.x, x_72.y, x_72.z), vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_87 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_86.x, x_86.y, x_86.z, x_87.w);
  u_xlat0.w = 1.0f;
  let x_97 : u32 = x_35.unity_MetaFragmentControl.x;
  let x_98 : bool = (x_97 != 0u);
  let x_99 : vec4<f32> = u_xlat0;
  u_xlat0 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), x_99, vec4<bool>(x_98, x_98, x_98, x_98));
  let x_107 : u32 = x_35.unity_MetaFragmentControl.y;
  let x_108 : bool = (x_107 != 0u);
  let x_110 : vec4<f32> = u_xlat0;
  SV_Target0 = select(x_110, vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f), vec4<bool>(x_108, x_108, x_108, x_108));
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

