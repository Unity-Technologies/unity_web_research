struct PGlobals {
  x_MaskWipeControl : f32,
  x_MaskEdgeSoftness : f32,
  @size(8)
  padding : u32,
  x_MaskEdgeColor : vec4<f32>,
  x_MaskInverse : i32,
}

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

@group(0) @binding(1) var x_MaskTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MaskTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : i32 = x_13.x_MaskInverse;
  u_xlat0 = select(0.0f, 1.0f, (x_17 != 0i));
  let x_40 : vec4<f32> = vs_TEXCOORD0;
  let x_42 : vec4<f32> = textureSample(x_MaskTex, sampler_MaskTex, vec2<f32>(x_40.z, x_40.w));
  u_xlat3.x = x_42.w;
  let x_49 : f32 = u_xlat3.x;
  let x_51 : f32 = u_xlat0;
  u_xlat0 = (-(x_49) + x_51);
  let x_55 : f32 = x_13.x_MaskWipeControl;
  u_xlat3.x = (-(x_55) + 1.0f);
  let x_60 : f32 = u_xlat3.x;
  let x_63 : f32 = x_13.x_MaskEdgeSoftness;
  let x_65 : f32 = u_xlat0;
  u_xlat0 = ((x_60 * x_63) + abs(x_65));
  let x_68 : f32 = u_xlat0;
  let x_70 : f32 = x_13.x_MaskWipeControl;
  u_xlat0 = (x_68 + -(x_70));
  let x_73 : f32 = u_xlat0;
  let x_75 : f32 = x_13.x_MaskEdgeSoftness;
  u_xlat0 = (x_73 / x_75);
  let x_77 : f32 = u_xlat0;
  u_xlat0 = clamp(x_77, 0.0f, 1.0f);
  let x_84 : vec4<f32> = vs_TEXCOORD0;
  let x_86 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_84.x, x_84.y));
  u_xlat3.x = x_86.w;
  let x_90 : f32 = u_xlat3.x;
  let x_94 : f32 = vs_TEXCOORD1.x;
  let x_97 : f32 = vs_TEXCOORD1.w;
  u_xlat3.x = ((x_90 * x_94) + -(x_97));
  let x_102 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_102, 0.0f, 1.0f);
  let x_108 : f32 = u_xlat3.x;
  let x_111 : f32 = vs_COLOR0.w;
  u_xlat1.w = (x_108 * x_111);
  let x_115 : vec4<f32> = u_xlat1;
  let x_120 : vec4<f32> = x_13.x_MaskEdgeColor;
  u_xlat2 = (vec3<f32>(x_115.w, x_115.w, x_115.w) * vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : vec4<f32> = vs_COLOR0;
  let x_125 : vec3<f32> = u_xlat3;
  let x_128 : vec3<f32> = u_xlat2;
  u_xlat3 = ((vec3<f32>(x_123.x, x_123.y, x_123.z) * vec3<f32>(x_125.x, x_125.x, x_125.x)) + -(x_128));
  let x_131 : f32 = u_xlat0;
  let x_133 : vec3<f32> = u_xlat3;
  let x_135 : vec3<f32> = u_xlat2;
  let x_136 : vec3<f32> = ((vec3<f32>(x_131, x_131, x_131) * x_133) + x_135);
  let x_137 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_141 : f32 = u_xlat0;
  let x_143 : vec4<f32> = u_xlat1;
  SV_Target0 = (vec4<f32>(x_141, x_141, x_141, x_141) * x_143);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD1_param : vec4<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

