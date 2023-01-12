struct PGlobals {
  x_Threshold : vec4<f32>,
  x_Params : vec4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat6 : f32;
  var u_xlat1 : vec2<f32>;
  var u_xlat5 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = vec3<f32>(x_25.x, x_25.y, x_25.z);
  let x_27 : vec3<f32> = u_xlat0;
  u_xlat0 = min(x_27, vec3<f32>(65504.0f, 65504.0f, 65504.0f));
  let x_39 : vec2<f32> = vs_TEXCOORD0;
  let x_40 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_39);
  u_xlat6 = x_40.x;
  let x_44 : f32 = u_xlat6;
  let x_46 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_44, x_44, x_44) * x_46);
  let x_48 : vec3<f32> = u_xlat0;
  let x_56 : vec4<f32> = x_51.x_Params;
  u_xlat0 = min(x_48, vec3<f32>(x_56.x, x_56.x, x_56.x));
  let x_61 : f32 = u_xlat0.y;
  let x_63 : f32 = u_xlat0.x;
  u_xlat6 = max(x_61, x_63);
  let x_67 : f32 = u_xlat0.z;
  let x_68 : f32 = u_xlat6;
  u_xlat6 = max(x_67, x_68);
  let x_72 : f32 = u_xlat6;
  let x_76 : vec4<f32> = x_51.x_Threshold;
  u_xlat1 = (vec2<f32>(x_72, x_72) + -(vec2<f32>(x_76.y, x_76.x)));
  let x_80 : f32 = u_xlat6;
  u_xlat6 = max(x_80, 0.0001f);
  let x_84 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_84, 0.0f);
  let x_89 : f32 = u_xlat1.x;
  let x_92 : f32 = x_51.x_Threshold.z;
  u_xlat1.x = min(x_89, x_92);
  let x_97 : f32 = u_xlat1.x;
  let x_100 : f32 = x_51.x_Threshold.w;
  u_xlat5 = (x_97 * x_100);
  let x_103 : f32 = u_xlat1.x;
  let x_104 : f32 = u_xlat5;
  u_xlat1.x = (x_103 * x_104);
  let x_108 : f32 = u_xlat1.y;
  let x_110 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_108, x_110);
  let x_114 : f32 = u_xlat1.x;
  let x_115 : f32 = u_xlat6;
  u_xlat6 = (x_114 / x_115);
  let x_119 : f32 = u_xlat6;
  let x_121 : vec3<f32> = u_xlat0;
  let x_122 : vec3<f32> = (vec3<f32>(x_119, x_119, x_119) * x_121);
  let x_123 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

